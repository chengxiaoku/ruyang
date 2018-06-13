<?php
/**
 * Created by PhpStorm.
 * User: 程龙飞
 * Date: 2018/6/1
 * Time: 13:58
 */

global $_GPC, $_W;
$GLOBALS['frames'] = $this->getMainMenu();

$pageindex = max(1, intval($_GPC['page']));
$pagesize=10;

$sql = "SELECT
	a.id,
	a.dashang_money,
	FROM_UNIXTIME(
		a.create_time,
		'%Y-%m-%d %H:%i:%s'
	) AS create_time,
	c.name as dongtai_userid,
	b.name
FROM
	".tablename('clf_dongtai_dashang')." a
LEFT JOIN ".tablename('zhtc_user')." b ON a.userid = b.id
LEFT JOIN ".tablename('zhtc_user')." c ON a.dongtai_userid = c.id ORDER BY a.create_time DESC";
//echo $sql;die;

//$total = pdo_fetchcolumn($sql);
$total = pdo_count('clf_dongtai_dashang');

$select_sql =$sql." LIMIT " .($pageindex - 1) * $pagesize.",".$pagesize;

$list=pdo_fetchall($select_sql);

$pager = pagination($total, $pageindex, $pagesize);

include $this->template('web/dashang');