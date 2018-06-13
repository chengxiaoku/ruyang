<?php

global $_GPC, $_W;
$GLOBALS['frames'] = $this->getMainMenu();

$pageindex = max(1, intval($_GPC['page']));
$pagesize=10;


/*$sql="SELECT a.*,b.type as typename FROM ".tablename('zhtc_store'). " a"  . " left join " . tablename("zhtc_in") . " b on b.id=a.type".$where." ORDER BY a.id DESC";
$total=pdo_fetchcolumn("select count(*) from " .tablename('zhtc_store'). " a"  . " left join " . tablename("zhtc_in") . " b on b.id=a.type".$where,$data);
*/
//$sql = "SELECT a.id,a.content,FROM_UNIXTIME(a.create_time,'%Y-%m-%d %H:%i:%s') as create_time,b.name FROM ".tablename('clf_dongtai_list')." a LEFT JOIN ".tablename('zhtc_user')." b ON b.id = a.userid";
$sql = "SELECT
	a.id,
	a.is_display,
	a.is_forbidden,
	a.content,
	FROM_UNIXTIME(
		a.create_time,
		'%Y-%m-%d %H:%i:%s'
	) AS create_time,
	b. name,
(select IFNULL(count(*),0) from ".tablename('clf_dongtai_dianzan')." where dongtaiid = a.id) as dianzan_num,
(select IFNULL(count(*),0) from ".tablename('clf_dongtai_pinglun')." where dongtaiid = a.id) as pinglun_num,
(select IFNULL(sum(dashang_money),0) from ".tablename('clf_dongtai_dashang')." WHERE dongtaiid = a.id) as money_sum
	
FROM
	`ims_clf_dongtai_list` a
LEFT JOIN `ims_zhtc_user` b ON b.id = a.userid";
//echo $sql;die;
$total = pdo_fetchcolumn($sql);

$select_sql =$sql." LIMIT " .($pageindex - 1) * $pagesize.",".$pagesize;

$list=pdo_fetchall($select_sql);

$pager = pagination($total, $pageindex, $pagesize);


if($_GPC['op']=='forbidden'){
    $id = $_GPC['id'];
    $tablename = 'clf_dongtai_list';
    if(pdo_exists($tablename,array('id'=>$id,'is_forbidden'=>1))){
        $res=pdo_update($tablename,array('is_forbidden'=>2),array('id'=>$id));
    }else{
        $res=pdo_update($tablename,array('is_forbidden'=>1),array('id'=>$id));
    }
    if($res){
        message('操作成功！', $this->createWebUrl('dongtai'), 'success');
    }else{
        message('操作失败！','','error');
    }
}

include $this->template('web/dongtai');