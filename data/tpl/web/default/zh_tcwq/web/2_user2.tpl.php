<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcsslist.css">
<style type="text/css">
    .navback{display: none;}
  .yg_back{margin-left: 170px;}
</style>
<ul class="nav nav-tabs">    
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>
    <li class="active"><a href="javascript:void(0);">会员列表</a></li>
</ul>

<div class="row ygrow">
            <form action="" method="get" class="col-md-4">
                 <input type="hidden" name="c" value="site" />
                <input type="hidden" name="a" value="entry" />
                <input type="hidden" name="m" value="zh_tcwq" />
                <input type="hidden" name="do" value="user2" />

                <div class="input-group" style="width: 300px">

                    <input type="text" name="keywords" class="form-control" value="<?php  echo $_GPC['keywords'];?>" placeholder="请输入昵称">

                    <span class="input-group-btn">

                        <input type="submit" class="btn btn-default" name="submit" value="查找"/>

                    </span>

                </div>

            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>

        </form>
        <div class="col-md-4">
            <div class="btn ygyouhui2" id="allselect">批量删除</div>
        </div>
</div>
<div class="main">
    <div class="panel panel-default">

        <div class="panel-heading">

            用户列表

        </div>

        <div class="panel-body" style="padding: 0px 15px;">

            <div class="row">

                <table class="yg5_tabel col-md-12">

                    <tr class="yg5_tr1">

                        <td class="store_td1 col-md-1" style="text-align: center;">
                            <input type="checkbox" class="allcheck" />
                            <span class="store_inp">全选</span>                      
                        </td>

                        <th class="store_td1 col-md-1" >id</th>

                        <th class="store_td1 col-md-1">用户头像</th>

                        <th class="col-md-2">用户昵称</th>

                        <th class="col-md-1">用户openid</th>

                        <th class="col-md-2">注册时间</th>
                        <th class="col-md-1">余额</th>
                        <th class="col-md-2">操作</th>
                        <th class="col-md-1">状态</th>

                    </tr>

                      <?php  if(is_array($list)) { foreach($list as $row) { ?>

                    <tr class="yg5_tr2">

                        <td>

                            <input type="checkbox" name="test" value="<?php  echo $row['id'];?>">

                        </td>

                        <td ><?php  echo $row['id'];?></td>

                        <td><img class="store_list_img" src="<?php  echo $row['img'];?>"/></td>

                        <td><?php  echo $row['name'];?></td>

                        <td><?php  echo $row['openid'];?></td>

                        <td><?php  echo date("Y-m-d H:i:s",$row['time']);?></td> 
                        <td><?php  echo $row['ruyang_money'];?></td>

                        <td>
                        <!--<a href="javascript:void(0);" data-toggle="modal" data-target="#myModalb<?php  echo $row['id'];?>"><span class="btn btn-xs ygyouhui2">充值余额</span> </a>-->
                        <?php  if($row['state']==1) { ?>
                            <button type="button" class="btn storered btn-xs" data-toggle="modal" data-target="#myModal2<?php  echo $row['id'];?>">拉黑</button>
                        <?php  } ?>
                        <?php  if($row['state']==2) { ?>
                            <button type="button" class="btn storeblue btn-xs" data-toggle="modal" data-target="#myModal3<?php  echo $row['id'];?>">取消拉黑</button>
                            <?php  } ?>
                            <a href="javascript:void(0);" class="storespan btn btn-xs" data-toggle="modal" data-target="#myModal<?php  echo $row['id'];?>">
                                <span class="fa fa-trash-o"></span>
                                <span class="bianji">删除
                                    <span class="arrowdown"></span>
                                </span>
                            </a>
                            <!-- <button type="button" class="btn storeblue btn-xs" data-toggle="modal" data-target="#myModal<?php  echo $row['id'];?>">删除</button> -->
                        </td>   
                        <td><?php  if($row['state']==1) { ?><span class="label storeblue">正常</span><?php  } else { ?><span class="label storegrey">已拉黑<?php  } ?></td>

                    </tr>
                     <div class="modal fade" id="myModalb<?php  echo $row['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                                      <input type="hidden" name="id2" value="<?php  echo $row['id'];?>"/>
                                  </div>
                              </div>
                          </form>
                      </div>
                  </div>

            <div class="modal fade" id="myModal<?php  echo $row['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                            <a href="<?php  echo $this->createWebUrl('user2', array('op' => 'delete', 'id' => $row['id']))?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 拉黑 -->
            <div class="modal fade" id="myModal2<?php  echo $row['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">提示</h4>
                        </div>
                        <div class="modal-body" style="font-size: 20px">
                            确定拉黑么？
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <a href="<?php  echo $this->createWebUrl('user2', array('op' => 'defriend', 'id' => $row['id'],'page'=>$_GPC['page']))?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 解除拉黑 -->
              <div class="modal fade" id="myModal3<?php  echo $row['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">提示</h4>
                        </div>
                        <div class="modal-body" style="font-size: 20px">
                            确定取消拉黑么？
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <a href="<?php  echo $this->createWebUrl('user2', array('op' => 'relieve', 'id' => $row['id'],'page'=>$_GPC['page']))?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>


                    <?php  } } ?>

                      <?php  if(empty($list)) { ?>

                    <tr class="yg5_tr2">

                        <td colspan="12">

                          暂无用户信息

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





<!-- <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?> -->

<script type="text/javascript">

    $(function(){
        // $("#frame-11").show();
        $("#yframe-11").addClass("wyactive");
        
        $(".allcheck").on('click',function(){
            var checked = $(this).get(0).checked;
            $("input[type=checkbox]").prop("checked",checked);
        });        

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
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=DelUser&m=zh_tcwq",
                    dataType:"text",
                    data:{id:id},
                    success:function(data){
                        console.log(data);      
                       location.reload();
                    }
                })
               
            }
        });
    })

</script>

