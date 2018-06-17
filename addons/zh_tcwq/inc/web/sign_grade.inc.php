<?php
/**
 * Created by PhpStorm.
 * User: 程龙飞
 * Date: 2018/6/17
 * Time: 15:05
 */
global $_GPC, $_W;
$GLOBALS['frames'] = $this->getMainMenu();
$item=pdo_get('zhtc_system',array('uniacid'=>$_W['uniacid']));

$operation = !empty($_GPC['op']) ? $_GPC['op'] : 'display';

$tablename = 'clf_sign_grade';
if ($operation == 'display') {

    $list = pdo_getall($tablename,array(),array() , '' , 'create_time DESC');

} elseif ($operation == 'post') {
    $list = pdo_get($tablename,array('id'=>$_GPC['id']));
    if(checksubmit('submit')){

        $data['create_time']=time();
        $data['name']=$_GPC['name'];
        $data['num']=$_GPC['num'];
        $data['content']=$_GPC['content'];
        if($_GPC['id']==''){
            $res=pdo_insert($tablename,$data);
            if($res){
                message('添加成功',$this->createWebUrl('sign_grade',array()),'success');
            }else{
                message('添加失败','','error');
            }
        }else{
            $res = pdo_update($tablename, $data, array('id' => $_GPC['id']));
            if($res){
                message('编辑成功',$this->createWebUrl('sign_grade',array()),'success');
            }else{
                message('编辑失败','','error');
            }
        }
    }
} elseif ($operation == 'delete') {
    $id=$_GPC['id'];

    $result = pdo_delete($tablename, array('id'=>$id));
    if($result){
        message('删除成功',$this->createWebUrl('sign_grade',array()),'success');
    }else{
        message('删除失败','','error');
    }
}

include $this->template('web/sign_grade');