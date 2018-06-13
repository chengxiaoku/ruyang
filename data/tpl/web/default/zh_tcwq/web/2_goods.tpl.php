<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcsslist.css">
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>
 <li  <?php  if($type=='all') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('goods',array('type'=>all));?>">全部商品</a></li>
 <li   <?php  if($type=='wait') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('goods',array('type'=>wait,'state'=>1));?>">待审核</a></li>
 <li   <?php  if($type=='ok') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('goods',array('type'=>ok,'state'=>2));?>">已确认</a></li>
 <li   <?php  if($type=='no') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('goods',array('type'=>no,'state'=>3));?>">已拒绝</a></li>
</ul>
<div class="row ygrow">
    <div class="col-lg-12">
        <form action="" method="get" class="col-md-4">
        <input type="hidden" name="c" value="site" />
            <input type="hidden" name="a" value="entry" />
            <input type="hidden" name="m" value="zh_tcwq"/>
            <input type="hidden" name="do" value="goods" />
            <div class="input-group">
                <input type="text" name="keywords" class="form-control" value="<?php  echo $_GPC['keywords'];?>" placeholder="请输入商品名称">
                <span class="input-group-btn">
                    <input type="submit" class="btn btn-default" name="submit" value="查找"/>
                </span>
            </div>
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
        </form>
         <form action="" method="get" class="col-md-4">
          <input type="hidden" name="c" value="site" />
            <input type="hidden" name="a" value="entry" />
            <input type="hidden" name="m" value="zh_tcwq"/>
            <input type="hidden" name="do" value="goods" />
            <div class="input-group" style="width: 100px">
                <?php  echo tpl_form_field_daterange('time',$_GPC['time']);?>
                <span class="input-group-btn">
                    <input type="submit" class="btn btn-default" name="submit2" value="查找"/>
                     <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
                </span>
            </div><!-- /input-group -->
        </form>
        <div class="col-md-4">
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
        </div>
    </div><!-- /.col-lg-6 -->
</div>  
<div class="main">
    <div class="panel panel-default">
        <div class="panel-body ygbtn">
            <div class="btn ygshouqian2" id="allselect">批量删除</div>
            <div class="btn ygyouhui2" id="allpass">批量通过</div>
            <div class="btn storegrey2" id="allrefuse">批量拒绝</div>
            <div class="btn ygshouqian2" id="allsj">批量上架</div>
            <div class="btn ygyouhui2" id="allxj">批量下架</div>
        </div>        
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            商品审核管理
        </div>
        <div class="panel-body" style="padding: 0px 15px;">
            <div class="row">
                <table class="yg5_tabel col-md-12">
                    <tr class="yg5_tr1">
                        <td class="store_td1 col-md-1" style="text-align: center;">
                          <input type="checkbox" class="allcheck" />
                          <span class="store_inp">全选</span>                      
                        </td>
                        <td class="store_td1 col-md-1">id</td>
                        <td class=" col-md-2">商家名称</td>
                        <td class="col-md-1">商品名称</td>
                         <td class="col-md-1">商品价格</td>                 
                        <td class="col-md-1">发布时间</td>
                        <td class="col-md-1">审核</td>
                        <td class="col-md-1">状态</td>
                        <td class="col-md-2">操作</td>
                    </tr>
                    <?php  if(is_array($list)) { foreach($list as $key => $item) { ?>
                    <tr class="yg5_tr2">
                        <td>
                          <input type="checkbox" name="test" value="<?php  echo $item['id'];?>">
                        </td>
                        <td><?php  echo $item['id'];?></td>
                        <td><?php  echo $item['store_name'];?></td>
                        <td><?php  echo $item['goods_name'];?></td>
                        <td><?php  echo $item['goods_cost'];?></td>
                       
                        <td><?php  echo date('Y-m-d H:i:s',$item['time'])?></td>
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
                       <td><?php  if($item['is_show']==1) { ?><span class="label storeblue">上架</span><?php  } else if($item['is_show']==2) { ?><span class="label storered">下架</span><?php  } ?></td><td>
                           <?php  if($item['state']==1) { ?>
                           <a href="<?php  echo $this->createWebUrl('goods',array('op'=>'tg','id'=>$item['id']));?>"><button class="btn storeblue btn-xs">通过</button></a>
                           <a href="<?php  echo $this->createWebUrl('goods',array('op'=>'jj','id'=>$item['id']));?>"><button class="btn storegrey btn-xs">拒绝</button></a>
                           <?php  } ?>

                           <a href="<?php  echo $this->createWebUrl('goodsinfo',array('id'=>$item['id']));?>" class="storespan btn btn-xs">
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
                            </a>

                            <!-- <a href="<?php  echo $this->createWebUrl('goodsinfo',array('id'=>$item['id']));?>"><button class="btn btn-success btn-xs">查看</button></a>
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
                            <a href="<?php  echo $this->createWebUrl('goods', array('op' => 'delete', 'id' => $item['id']))?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>
            <?php  } } ?>
            <?php  if(empty($list)) { ?>
            <tr class="yg5_tr2">
                <td colspan="8">
                      暂无商品信息
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
        $("#frame-7").show();
        $("#yframe-7").addClass("wyactive");
        // ———————————————批量删除———————————————
        $("#allselect").on('click',function(){
            var check = $("input[type=checkbox][class!=allcheck]:checked");
            if(check.length < 1){
                alert('请选择要删除的商品!');
                return false;
            }else if(confirm("确认要删除此商品?")){
                var id = new Array();
                check.each(function(i){
                    id[i] = $(this).val();
                });
                console.log(id)
                $.ajax({
                    type:"post",
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=DeleteGoods&m=zh_tcwq",
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
                alert('请选择要通过的商品!');
                return false;
            }else if(confirm("确认要通过此商品?")){
                var id = new Array();
                check.each(function(i){
                    id[i] = $(this).val();
                });
                console.log(id)
                $.ajax({
                    type:"post",
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=AdoptGoods&m=zh_tcwq",
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
                alert('请选择要拒绝的商品!');
                return false;
            }else if(confirm("确认要拒绝此商品?")){
                var id = new Array();
                check.each(function(i){
                    id[i] = $(this).val();
                });
                console.log(id)
                $.ajax({
                    type:"post",
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=RejectGoods&m=zh_tcwq",
                    dataType:"text",
                    data:{id:id},
                    success:function(data){
                        console.log(data);      
                       location.reload();
                    }
                })               
            }
        });
         // ———————————————批量上架———————————————
        $("#allsj").on('click',function(){
            var check = $("input[type=checkbox][class!=allcheck]:checked");
            if(check.length < 1){
                alert('请选择要上架的商品!');
                return false;
            }else if(confirm("确认要上架此商品?")){
                var id = new Array();
                check.each(function(i){
                    id[i] = $(this).val();
                });
                console.log(id)
                $.ajax({
                    type:"post",
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=GoodsSj&m=zh_tcwq",
                    dataType:"text",
                    data:{id:id},
                    success:function(data){
                        console.log(data);      
                       location.reload();
                    }
                })               
            }
        });
        // ———————————————批量下架———————————————
        $("#allxj").on('click',function(){
            var check = $("input[type=checkbox][class!=allcheck]:checked");
            if(check.length < 1){
                alert('请选择要下架的商品!');
                return false;
            }else if(confirm("确认要下架此商品?")){
                var id = new Array();
                check.each(function(i){
                    id[i] = $(this).val();
                });
                console.log(id)
                $.ajax({
                    type:"post",
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=GoodsXj&m=zh_tcwq",
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