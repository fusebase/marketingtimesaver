<?php
/* exit if in manager */
if ($modx->context->get('key') == 'mgr') {
  return;
}

/* include core MTS class */
$mts = $modx->getService('mts', 'Mts', $modx->getOption('mts.core_path', null,    
    $modx->getOption('core_path').'components/mts/').'model/mts/', $scriptProperties);
if (!($mts instanceof Mts)) return '';

/* context router */
if ($modx->event->name == 'OnHandleRequest') {
	switch ($mts->domain) {
		case 'api.marketingtimesaver.com':
		$modx->switchContext('api');
		break;

		case 'app.marketingtimesaver.com':
		$modx->switchContext('app');
		$modx->setPlaceholder('mts.token', md5(time()));
		$modx->setPlaceholder('mts.account.id', $modx->user->id);
		$modx->setPlaceholder('mts.project.id', $mts->project->id);
		break;
	}
}