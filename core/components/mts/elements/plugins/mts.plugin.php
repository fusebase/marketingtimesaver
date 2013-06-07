<?php
/* exit if in manager */
if ($modx->context->get('key') == 'mgr') {
  return;
}

error_reporting(E_ALL);
ini_set('display_errors', '1');

/* include core MTS class */
$app = $modx->getService('mts', 'Mts', $modx->getOption('mts.core_path', null,    
    $modx->getOption('core_path').'components/mts/').'model/mts/', $scriptProperties);
if (!($app instanceof Mts)) return '';

/* context router */
if ($modx->event->name == 'OnHandleRequest') {
	switch ($app->domain) {
		case 'api.marketingtimesaver.com':
		$modx->switchContext('api');
		break;

		case 'app.marketingtimesaver.com':
		$modx->switchContext('app');
		$modx->setPlaceholder('mts.token', md5(time()));
		$modx->setPlaceholder('mts.account.id', $modx->user->id);
		$modx->setPlaceholder('mts.project.id', $app->mts->project['id']);
		$modx->toPlaceholders(array('mts' => $app->mts));
		break;

		default:
		$modx->switchContext('published');
	}
}