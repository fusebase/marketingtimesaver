<?php
class Mts {
    /**
     * @var ahDebug A reference to the ahDebug object
     */
    public $debug = null;
    /**
     * @var modX A reference to the modX object.
     */
    public $modx = null;
    /**
     * @var Marketing Timesaver variables
     */
    public $domain;
    public $rootdomain;
    public $subdomain;
    public $requestUri;

    public $mts;
    public $project;
    
    /* MTS constructor */
    function __construct(modX &$modx, array $config = array()) {
		
		$this->modx =& $modx;
		$corePath = $this->modx->getOption('mts.core_path', $config, $this->modx->getOption('core_path').'components/mts/');
		
		// configuration
		$this->config = array_merge(array(
		    'corePath' => $corePath,
		    'modelPath' => $corePath.'model/',
		    'processorsPath' => $corePath.'processors/'
		), $config);
		
		// initialize server variables
		$this->setDomain();
		$this->setRootDomain();
		$this->setSubdomain();
		$this->setRequestUri();

		// run API
		$parts = explode('/', $this->requestUri);
		if ($parts[1] == 'api') {
			$this->api();
		}

        // load the project
        $this->mts->project['id'] = $_SESSION['project'];
		$this->project->id = $_SESSION['project'];
        //$this->project

        // load the funnel
        if (!empty($_SESSION['funnel'])) {
            $this->mts->funnel = $_SESSION['funnel'];
            //print_r($_SESSION['funnel']);exit;
        }
        //echo '<pre>'; print_r($this->mts); exit;

		// load AWS
		//require_once $this->config['modelPath'] . 'aws/sdk.class.php';

		// load Zend
		//require_once $this->modx->getOption('core_path').'model/zend/library/Zend/Loader/Autoloader.php';
		//$loader = Zend_Loader_Autoloader::getInstance();
		
		// load MTS Core
		$this->modx->addPackage('mts', $this->config['modelPath']);
    }

    /* private function to set the domain */
    private function setDomain() {
    	$this->domain = str_replace('www.', '', $_SERVER['HTTP_HOST']);
    	return $this->domain;
    }

    /* private function to set the root domain */
    private function setRootDomain() {
    	if (empty($this->domain)) {
    		$this->domain = $_SERVER['HTTP_HOST'];
    	}
    	$labels = explode('.', $this->domain);
    	$this->rootdomain = $labels[count($labels)-2];
    	return $this->rootdomain;
    }
    
    /* private function to set the subdomain g */
    private function setSubdomain() {
		if (empty($this->domain)) {
			$domain = $_SERVER['HTTP_HOST'];
		}
		$labels = explode('.', $this->domain);
		$this->subdomain = $labels[count($labels)-3];
		return $this->subdomain;
    }
    
    /* private function to set the request URI */
    private function setRequestUri($request = '') {
		if (empty($request)) {
			$request = $_SERVER['REQUEST_URI'];
		}
		$parts = explode('?', $request);
		$request = $parts[0];
		if (substr($request, -1) != '/') {
			$request .= '/';
		}
		if (substr($request, 0, 1) == '/') {
			$request = substr($request, 1);
		}
		$request = '/' . $request;
		$request = str_replace('-cp/', '/cp/', $request);
		$this->requestUri = $request;
		return $request;
    }
    
    /* public function to get the querystring  */
    public function getQuery($query = '') {
		if (empty($query)) {
			$query = $_SERVER['REQUEST_URI'];
		}
		$parts = explode('?', $query);
		$query = $parts[1];
		return $query;
    }
    
    /* public function to get the querystring and return as array */
    public function getQuerystring($querystring = '') {
		if (empty($querystring)) {
			$querystring = $_SERVER['REQUEST_URI'];
		}
		$parts = explode('?', $querystring);
		$querystring = $parts[1];
		parse_str($querystring, $query);
		return $query;
    }
    
    /* public function to make a url */
    public function makeUrl($resourceId) {
		$url = $this->modx->makeUrl($resourceId);
		if (strpos($url, '.marketingtimesaver.com') === false) {
			$url = 'www.' . $url;
		}
		return 'http://' . $url;
    }

    /* private function to create a funnel */
    private function createFunnel() {

    }

    /* private function to get a funnel */
    private function getFunnel($resourceId) {
        $this->mts->funnel = array();
        $c = $this->modx->newQuery('modResource');
        $c->where(array(
            'id' => $resourceId,
            'context_key' => 'projects'
        ));
        if ($valueResource = $this->modx->getObject('modResource', $c)) {
            $this->mts->funnel['value'] = $valueResource->toArray();

            $c = $this->modx->newQuery('modTemplateVar');
            $c->where(array('category' => 15));
            $tvs = $this->modx->getIterator('modTemplateVar', $c);
            foreach ($tvs as $tv) {
                $tvName = $tv->get('name');
                $tvKey = str_replace('mts_funnel_', '', $tvName);
                $tvValue = $valueResource->getTVValue($tvName);
                $this->mts->funnel['value'][$tvKey] = $tvValue;
            }
        }

        $c = $this->modx->newQuery('modResource');
        $c->where(array(
            'parent' => $resourceId,
            'context_key' => 'projects'
        ));
        $captureResources = $this->modx->getIterator('modResource', $c);
        foreach ($captureResources as $captureResource) {
            $captureData = $captureResource->toArray();
            $c = $this->modx->newQuery('modTemplateVar');
            $c->where(array('category' => 15));
            $tvs = $this->modx->getIterator('modTemplateVar', $c);
            foreach ($tvs as $tv) {
                $tvName = $tv->get('name');
                $tvKey = str_replace('mts_funnel_', '', $tvName);
                $tvValue = $captureResource->getTVValue($tvName);
                $captureData[$tvKey] = $tvValue;
            }
            $this->mts->funnel['capture'][] = $captureData;
        }

        return $this->mts->funnel;
    }

    /* private function to load a funnel */
    private function loadFunnel($resourceId) {
        $data = $this->getFunnel($resourceId);
        $_SESSION['funnel'] = $data;
        return $data;
    }

    /* private function to update a funnel */
    private function updateFunnel() {

    }

    /* public function to run the API */
    public function api() {
    	$method = $_SERVER['REQUEST_METHOD'];
        $request = array_filter(explode('/', str_replace('api/', '', $this->requestUri)));
        $object = $request[1];

        if ($request[1] == 'service') {
            
            switch ($request[2]) {

                case 'switch-account':
                break;

                case 'switch-project':
                $_SESSION['project'] = $_POST['project'];
                $this->project->id = $_SESSION['project'];
                break;

                case 'load-funnel':
                $data = $this->loadFunnel($request[3]);
                echo json_encode($data);
                break;
            }

            exit();
        }

        elseif ($method == 'GET' && empty($request[1])) {
            $processor = $object . '/getlist';
        }

        elseif ($method == 'GET' && is_numeric($request[2])) {
            if ($object == 'funnel') {
                $data = $this->getFunnel($request[2]);
            }
            else {
                $data = array('id' => $request[2]);
                $processor = $object . '/get';
            }

            echo json_encode($data);
            exit();
        }

        elseif ($method == 'POST' && count($request) == 1) {
            $payload = json_decode(@file_get_contents('php://input'), true);
            if (!empty($_POST)) {
                $payload = $_POST;
            }
            $processor = $object . '/create';
        }

        elseif ($method == 'POST' && count($request) != 1) {
            $processor = $object . '/' . $request[2];
        }

        elseif ($method == 'PUT') {
            parse_str(@file_get_contents("php://input"), $payload);
            $processor = $object . '/update';
        }

        elseif ($method == 'DELETE') {
            $data = array('id' => $request[2]);
            $processor = $object . '/delete';
        }

        $response = $this->modx->runProcessor($processor, $data);

        if ($response->isError()) {
            return $response->getMessage();
        }
        else {
            $object = $response->getObject();
            if (is_object($object)) {
                $json = json_encode($data->toArray());
            }
            else {
                $json = array();
            }
        }

        echo $json;
    	exit();
    }

}