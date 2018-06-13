<?php

global $_GPC, $_W;
$GLOBALS['frames'] = $this->getMainMenu();

$pageindex = max(1, intval($_GPC['page']));
$pagesize=10;

$sql = "SELECT
  a.id,
	a.content,
	FROM_UNIXTIME(
		a.create_time,
		'%Y-%m-%d %H:%i:%s'
	) AS create_time,
	b.name
FROM
	".tablename('clf_dongtai_pinglun')." a
LEFT JOIN ".tablename('zhtc_user')." b ON a.userid = b.id
ORDER BY
	a.create_time DESC";
//echo $sql;die;

//微擎自带的写法
//$total = pdo_fetchcolumn($sql);
//改进后的写法
$total = pdo_count('clf_dongtai_pinglun');

$select_sql =$sql." LIMIT " .($pageindex - 1) * $pagesize.",".$pagesize;

$list=pdo_fetchall($select_sql);
//页码
$pager = pagination($total, $pageindex, $pagesize);


if($_GPC['op']=='delete'){
    $id = $_GPC['id'];
   $tr = pdo_delete('clf_dongtai_pinglun',array('id'=>$id));
    $tr? message('删除成功！', $this->createWebUrl('pinglun'), 'success') : message('删除失败！','','error');
}

include $this->template('web/pinglun');