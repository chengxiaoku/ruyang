<?php
global $_GPC, $_W;
$GLOBALS['frames'] = $this->getMainMenu();
	$info = pdo_get('zhtc_mtype2',array('uniacid' => $_W['uniacid'],'id'=>$_GPC['id']));
	$pid=$_GPC['type_id'];
	$type = pdo_getall('zhtc_mtype',array('uniacid' => $_W['uniacid']));
		if(checksubmit('submit')){
			$data['num']=$_GPC['num'];			
			$data['name']=$_GPC['name'];
			$data['state']=$_GPC['state'];
			$data['uniacid']=$_W['uniacid'];
			if($_GPC['id']==''){	
			$data['type_id']=$_GPC['type_id'];			
				$res=pdo_insert('zhtc_mtype2',$data);
				if($res){
					message('添加成功',$this->createWebUrl('renwufenlei',array()),'success');
				}else{
					message('添加失败','','error');
				}
			}else{
				$res = pdo_update('zhtc_mtype2', $data, array('id' => $_GPC['id']));
				if($res){
					message('编辑成功',$this->createWebUrl('renwufenlei',array()),'success');
				}else{
					message('编辑失败','','error');
				}
			}
		}
include $this->template('web/maddtype2');