<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcsslist.css">
<style type="text/css">
	.yg5_tr1>.col-md-1{
		width: 7.69%;
	}
	.accout_inp{width: 100%;height: 35px;border: 1px solid #cccccc;font-size: 14px;color: #333;}
	.czbtn{position: relative;outline: none;}
	.czbtn>.fa-sort-desc{
		font-size: 20px;
		margin-left: 2px;
		margin-top: -5px;
	}
	.czbtn:hover .czbox{
		transition: all 0.3s;
		-webkit-transition: all 0.3s;
		height: auto;
		display: block;
	}
	.czbox{
		position: absolute;
		top: 20px;
		left: -30px;
		z-index: 10;		
		height: 0px;
		overflow: hidden;
		display: none;
		transition: all 0.3s;
		-webkit-transition: all 0.3s;
	}
	.czbox>li{
		border-bottom: 1px solid #DEDEDE;
    background-color: #333;
	}
  .czbox>li:hover{
    background-color: #39485D;
  }
	.czstorespan{
		font-size: 14px;
		color: #fff;
		margin: 5px;
	}
	.czstorespan:hover{
		color: #fff;
	}
	.cztext{margin-left: 10px;}
  .czboxtop{color: #333;font-size: 20px;height: 9px;overflow: hidden;line-height: 15px;}
</style>
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置1:</div>
    <li  <?php  if($type=='wait') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('store',array('type'=>wait,'state'=>1));?>">待审核</a></li>
    <li  <?php  if($type=='ok') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('store',array('type'=>ok,'state'=>2));?>">已确认</a></li>
    <li  <?php  if($type=='no') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('store',array('type'=>no,'state'=>3));?>">已拒绝</a></li>
    <li  <?php  if($type=='all') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('store',array('type'=>all));?>">全部商家</a></li>
</ul>
<div class="row ygrow">

    <div class="col-lg-12">
    <div class="panel panel-default ygbody">
        <div class="panel-body">
            <p class="yangshi">跳转商家页面地址,id值在商家列表中获取:&nbsp;&nbsp;<a>../sellerinfo/sellerinfo?id=1</a></p>
        </div>
    </div>
        <form action="" method="get" class="col-md-4">
        <input type="hidden" name="c" value="site" />
          <input type="hidden" name="a" value="entry" />
          <input type="hidden" name="m" value="zh_tcwq" />
          <input type="hidden" name="do" value="store" />
            <div class="input-group" style="width: 300px">
                <input type="text" name="keywords" class="form-control" value="<?php  echo $_GPC['keywords'];?>" placeholder="请输入商家名称/电话">
                <span class="input-group-btn">
                    <input type="submit" class="btn btn-default" name="submit" value="查找"/>
                    <input type="hidden" name="type" value="all"/>
                </span>
            </div>
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
        </form>
       <!--  <div class="col-md-6">
           <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
       </div> -->
    </div><!-- /.col-lg-6 -->
</div>  
<div class="main">
    <div class="panel panel-default">
    <div class="panel-body ygbtn">
        <div class="btn btn-md ygyouhui2" id="allselect">批量删除</div>
        <div class="btn btn-md storesuccess2" id="allpass">批量通过</div>
        <div class="btn btn-md storewarning2" id="allrefuse">批量拒绝</div>
    </div>
</div>
    <div class="panel panel-default">
        <div class="panel-heading">
            商家管理
        </div>
        <div class="panel-body" style="padding: 0px 15px;">
            <div class="row">
                <table class="yg5_tabel col-md-12">
                    <tr class="yg5_tr1">
                        <td class="store_td1" style="text-align: center;width: 80px;">
                          <input type="checkbox" class="allcheck" />
                          <span class="store_inp">全选</span>                      
                        </td>
                        <td style="width: 50px;">商家id</td>
                        <td class="col-md-1">所属城市</td>
                        <td class="col-md-1">商家Logo</td>
                        <td class="col-md-1">商家名称</td>
                        <td class="col-md-2">商家地址</td>
                        <td class="col-md-1">联系电话</td>
                        <td class="col-md-1">入住时间</td>
                        
                        <td class="col-md-1">到期时间</td>
                        <td class="col-md-1">商品数量</td>
                        <td class="col-md-1">余额</td>
                        <td class="col-md-1">状态</td>
                        <td class="col-md-1" >操作</td>
                    </tr>
                    <?php  if(is_array($list)) { foreach($list as $key => $item) { ?>
                    <tr class="yg5_tr2">
                        <td>
                          <input type="checkbox" name="test" value="<?php  echo $item['id'];?>">
                        </td>
                        <td><?php  echo $item['id'];?></td>
                        <td><?php  if($item['cityname']) { ?><?php  echo $item['cityname'];?><?php  } else { ?>全国版<?php  } ?></td>
                        <td> <img class="store_list_img" src="<?php  echo tomedia($item['logo']);?>" alt=""/></td>
                        <td><?php  echo $item['store_name'];?></td>
                        <td><?php  echo $item['address'];?></td>
                        <td><?php  echo $item['tel'];?></td>
                        <?php  if($item['state']==1) { ?>
                         <td>审核中...</td>
                         <?php  } else { ?>
                        <td><?php  echo date("Y-m-d ",$item['sh_time'])?></td>
                        <?php  } ?>
                        
                        
                           <?php  if($item['state']==1) { ?>
                           <td>审核中...</td>
                         <?php  } else if($item['state']==2) { ?>
                          <td><?php  echo date("Y-m-d ",$item['dq_time'])?></td>
                          <?php  } else if($item['state']==3) { ?>
                          <td>已拒绝</td>
                           <?php  } ?>

                           <?php  $goodnum=count(pdo_getall('zhtc_goods',array('store_id'=>$item['id'])));?>
                        <td><?php  echo $goodnum;?></td>
                           <td><?php  echo $item['wallet'];?></td>
                        <?php  if($item['state']==1) { ?>
                        <td>
                            <span class="label storered">待审核</span>
                        </td >
                        <?php  } else if($item['state']==2) { ?>
                        <td >
                            <span class="label storeblue">已通过</span>
                        </td>
                        <?php  } else if($item['state']==3) { ?>
                        <td>
                           <span class="label storegrey">已拒绝</span>
                       </td>
                       <?php  } ?> 
                       <td>
                           
                           <?php  if($item['state']==1) { ?>
                           <a href="<?php  echo $this->createWebUrl('store',array('op'=>'tg','id'=>$item['id']));?>">
                            <button class="btn ygyouhui2 btn-xs">通过</button>
                           </a>
                           <a href="<?php  echo $this->createWebUrl('store',array('op'=>'jj','id'=>$item['id']));?>">
                           <button class="btn storegrey2 btn-xs">拒绝</button></a>
                           <?php  } ?>
                           <button class="btn btn-xs btn-info czbtn">操作
                           		<span class="fa fa-sort-desc"></span>
	                           	<ul class="czbox">
                                <div class="czboxtop"><span class="fa fa-sort-asc"></span></div>
	                           		<li>
	                           			<a href="javascript:void(0);" class="czstorespan btn btn-xs" data-toggle="modal" data-target="#myModalb<?php  echo $item['id'];?>">
				                            <span class="fa fa-money" style="margin:0px;"></span>
				                            <span class="cztext">充值余额</span>
				                        </a>
	                           		</li>
	                           		<li>
	                           			<a href="javascript:void(0);" class="czstorespan btn btn-xs" data-toggle="modal" data-target="#myModalc<?php  echo $item['id'];?>">
				                            <span class="fa fa-eraser" style="margin:0px;"></span>
				                            <span class="cztext">清零</span>
				                        </a>
	                           		</li>
	                           		<li>
	                           			<a href="<?php  echo $this->createWebUrl('storeinfo',array('id'=>$item['id']));?>" class="czstorespan btn btn-xs">
				                            <span class="fa fa-pencil" style="margin:0px;"></span>
				                            <span class="cztext">编辑</span>
				                        </a>
	                           		</li>
	                           		<li>
	                           			<a href="javascript:void(0);" class="czstorespan btn btn-xs" data-toggle="modal" data-target="#myModal<?php  echo $item['id'];?>">
				                            <span class="fa fa-trash-o" style="margin:0px;"></span>
				                            <span class="cztext">删除</span>
				                        </a>
	                           		</li>
	                           	</ul>
                           </button>
	                       <!-- <a href="javascript:void(0);" class="storespan btn btn-xs" data-toggle="modal" data-target="#myModalb<?php  echo $item['id'];?>">
	                            <span class="fa fa-money" style="margin:0px;"></span>
	                            <span class="bianji" style="left:-70%;">充值余额
	                                <span class="arrowdown"></span>
	                            </span>
	                        </a>
	                        <a href="javascript:void(0);" class="storespan btn btn-xs" data-toggle="modal" data-target="#myModalc<?php  echo $item['id'];?>">
                                <span class="fa fa-eraser"></span>
                                <span class="bianji">清零
                                    <span class="arrowdown"></span>
                                </span>
                            </a>
                           <a href="<?php  echo $this->createWebUrl('storeinfo',array('id'=>$item['id']));?>" class="storespan btn btn-xs">
                                <span class="fa fa-pencil"></span>
                                <span class="bianji">编辑
                                    <span class="arrowdown"></span>
                                </span>                            
                            </a>
                            <a href="javascript:void(0);" class="storespan btn btn-xs" data-toggle="modal" data-target="#myModal<?php  echo $item['id'];?>">
                                <span class="fa fa-trash-o"></span>
                                <span class="bianji">删除
                                    <span class="arrowdown"></span>
                                </span>
                            </a> -->
                           <!-- <a href="<?php  echo $this->createWebUrl('storeinfo',array('id'=>$item['id']));?>">
                           <button class="btn storesuccess btn-xs">查看</button></a>
                           <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#myModal<?php  echo $item['id'];?>">删</button> -->
                       </td>

                   </tr>
                   <div class="modal fade" id="myModal<?php  echo $item['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">提示</h4>
                        </div>
                        <div class="modal-body" style="font-size: 20px">
                            确定删除么？
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <a href="<?php  echo $this->createWebUrl('store', array('op' => 'delete', 'id' => $item['id']))?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="myModalc<?php  echo $item['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">提示</h4>
                        </div>
                        <div class="modal-body" style="font-size: 20px">
                            确定要把商家余额清零？
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <a href="<?php  echo $this->createWebUrl('store', array('op' => 'ql', 'id' => $item['id']))?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="myModalb<?php  echo $item['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog" role="document" style="min-width: 300px!important;width: 250px;">
                  <form action="" method="post" enctype="multipart/form-data">
                      <div class="modal-content">
                          <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                              <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">编辑充值金额</h4>
                          </div>
                          <div class="modal-body" style="font-size:20px">
                              <input type="number" name="reply" class="accout_inp col-md-9" placeholder="请输入金额">
                          </div>
                          <div class="modal-footer">
                              <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                              <input type="submit" name="submit2" class="btn btn-info" value="确定">
                              <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
                              <input type="hidden" name="id2" value="<?php  echo $item['id'];?>"/>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
            <?php  } } ?>
            <?php  if(empty($list)) { ?>
              <tr class="yg5_tr2">
              <td colspan="12">
                    暂无商家信息
                </td>
            </tr>
            <?php  } ?>
      </table>
  </div>
</div>
</div>
</div>
<div class="text-right we7-margin-top">
   <?php  echo $pager;?>
</div>
<script type="text/javascript">
    $(function(){
        $("#frame-0").show();
        $("#yframe-0").addClass("wyactive");
        // ———————————————批量删除———————————————
        $("#allselect").on('click',function(){
            var check = $("input[type=checkbox][class!=allcheck]:checked");
            if(check.length < 1){
                alert('请选择要删除的商家!');
                return false;
            }else if(confirm("确认要删除此商家?")){
                var id = new Array();
                check.each(function(i){
                    id[i] = $(this).val();
                });
                console.log(id)
                $.ajax({
                    type:"post",
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=DeleteStore&m=zh_tcwq",
                    dataType:"text",
                    data:{id:id},
                    success:function(data){
                        console.log(data);      
                       location.reload();
                    }
                })
               
            }
        });

        // ———————————————批量通过———————————————
        $("#allpass").on('click',function(){
            var check = $("input[type=checkbox][class!=allcheck]:checked");
            if(check.length < 1){
                alert('请选择要通过的商家!');
                return false;
            }else if(confirm("确认要通过此商家?")){
                var id = new Array();
                check.each(function(i){
                    id[i] = $(this).val();
                });
                console.log(id)
                $.ajax({
                    type:"post",
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=AdoptStore&m=zh_tcwq",
                    dataType:"text",
                    data:{id:id},
                    success:function(data){
                        console.log(data);      
                       location.reload();
                    }
                })               
            }
        });

        // ———————————————批量拒绝———————————————
        $("#allrefuse").on('click',function(){
            var check = $("input[type=checkbox][class!=allcheck]:checked");
            if(check.length < 1){
                alert('请选择要拒绝的商家!');
                return false;
            }else if(confirm("确认要拒绝此商家?")){
                var id = new Array();
                check.each(function(i){
                    id[i] = $(this).val();
                });
                console.log(id)
                $.ajax({
                    type:"post",
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=RejectStore&m=zh_tcwq",
                    dataType:"text",
                    data:{id:id},
                    success:function(data){
                        console.log(data);      
                       location.reload();
                    }
                })               
            }
        });

        $(".allcheck").on('click',function(){
            var checked = $(this).get(0).checked;
            $("input[type=checkbox]").prop("checked",checked);
        });
    })
</script>