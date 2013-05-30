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

		$this->project->id = $_SESSION['project'];

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

    /* public function to run the API */
    public function api() {
    	$method = $_SERVER['REQUEST_METHOD'];
    	$processor = str_replace('/api/v1/', '', $this->requestUri);
    	echo $processor;

    	$_SESSION['project'] = $_POST['project'];
    	$this->project->id = $_SESSION['project'];

    	//$processor .= 'update';
    	//$response = $this->modx->runProcessor($processor, $_POST, array('processors_path' => 'core/components/mts/processors/'));
    	//echo $response->getMessage();
    	exit();
    }

}