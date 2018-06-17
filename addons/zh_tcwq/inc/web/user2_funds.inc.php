<?php
/**
 * Created by PhpStorm.
 * User: 程龙飞
 * Date: 2018/6/16
 * Time: 15:04
 */

global $_GPC, $_W;
$GLOBALS['frames'] = $this->getMainMenu();
$pageindex = max(1, intval($_GPC['page']));
$userid = $_GPC['id'];
$username = $_GPC['name'];
$pagesize=10;

/**
 * 获取个人余额中的交易记录(包括支出及收入)  根据时间进行倒序
 */

    $sql = 'SELECT id,money,type,FROM_UNIXTIME(create_time,\'%Y-%m-%d %H:%i:%s\') as create_time from '.tablename('clf_funds').' where (userid = :userid OR userid2 = :userid) AND is_dj_money = 2';
    $select_sql =$sql." LIMIT " .($pageindex - 1) * $pagesize.",".$pagesize;
    $data = array(':userid'=>$userid);
    $list = pdo_fetchall($select_sql,$data);

$total=pdo_fetchcolumn('SELECT count(*) from '.tablename('clf_funds').' where (userid = :userid OR userid2 = :userid) AND is_dj_money = 2',$data);
$pager = pagination($total, $pageindex, $pagesize);

include $this->template('web/user2_funds');