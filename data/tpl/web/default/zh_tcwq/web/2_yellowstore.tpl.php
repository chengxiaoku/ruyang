<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcsslist.css">
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>  
   <li  <?php  if($type=='all') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('yellowstore',array('type'=>all));?>">全部</a></li>
   <li   <?php  if($type=='wait') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('yellowstore',array('type'=>wait,'state'=>1));?>">待审核</a></li>
   <li   <?php  if($type=='ok') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('yellowstore',array('type'=>ok,'state'=>2));?>">已确认</a></li>
   <li   <?php  if($type=='no') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('yellowstore',array('type'=>no,'state'=>3));?>">已拒绝</a></li>
</ul>
<div class="row ygrow">
    <div class="col-lg-12">
     <div class="panel panel-default ygbody">
        <div class="panel-body">
            <p class="yangshi">黄页跳转地址:&nbsp;&nbsp;<a>../yellow_page/yellow</a></p>
        </div>
    </div>
    <form action="" method="get" class="col-md-4">
            <input type="hidden" name="c" value="site" />
            <input type="hidden" name="a" value="entry" />
            <input type="hidden" name="m" value="zh_tcwq" />
            <input type="hidden" name="do" value="yellowstore" />
            <div class="input-group" style="width: 300px">
                <input type="text" name="keywords" class="form-control" value="<?php  echo $_GPC['keywords'];?>" placeholder="请输入公司名称">
                <span class="input-group-btn">
                    <input type="submit" class="btn btn-default" name="submit" value="查找"/>
                </span>
            </div>
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
        </form>
        <form action="" method="get" class="col-md-4">
         <input type="hidden" name="c" value="site" />
         <input type="hidden" name="a" value="entry" />
         <input type="hidden" name="m" value="zh_tcwq" />
         <input type="hidden" name="do" value="yellowstore" />
         <div class="input-group" style="width: 100px">
            <?php  echo tpl_form_field_daterange('time',$_GPC['time']);?>
            <span class="input-group-btn">
                <input type="submit" class="btn btn-default" name="submit2" value="查找"/>
                <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
            </span>
        </div><!-- /input-group -->
    </form>
        <div class="col-md-4 ygform">
            <div class="btn ygyouhui2" id="allselect">批量删除</div>
            <div class="btn storesuccess2" id="allpass">批量通过</div>
            <div class="btn storewarning2" id="allrefuse">批量拒绝</div>
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
        </div>
    </div><!-- /.col-lg-6 -->
</div>  
<div class="main">
    <div class="panel panel-default">
        <div class="panel-heading">
            黄页入驻管理
        </div>
        <div class="panel-body" style="padding: 0px 15px;">
            <div class="row">
                <table class="yg5_tabel col-md-12">
                    <tr class="yg5_tr1">
                        <td class="store_td1 col-md-1" style="text-align: center;">
                            <input type="checkbox" class="allcheck" />
                            <span class="store_inp">全选</span>                      
                        </td>
                        <td class="col-md-1">所属城市</td>
                        
                        <td class="col-md-1">公司logo</td>
                        <td class="col-md-1">公司名称</td>
                        <td class="col-md-1">公司地址</td>
                        <td class="col-md-1">联系电话</td>
                        <td class="col-md-1">入住时间</td>
                        <td class="col-md-1">天数</td> 
                         <td class="col-md-1">到期时间</td>
                         <td class="col-md-1">id</td>
                        <td class="col-md-1">状态</td>
                        <td class="col-md-1">操作</td>
                    </tr>
                    <?php  if(is_array($list)) { foreach($list as $key => $item) { ?>
                    <tr class="yg5_tr2">
                        <td>
                          <input type="checkbox" name="test" value="<?php  echo $item['id'];?>">
                        </td>
                        <td class="col-md-1"><?php  echo $item['cityname'];?></td>
                        <td> <img class="store_list_img" src="<?php  echo tomedia($item['logo']);?>" alt=""/></td>
                        <td><?php  echo $item['company_name'];?></td>
                        <td><?php  echo $item['company_address'];?></td>
                        <td><?php  echo $item['link_tel'];?></td>
                        <?php  if($item['sh_time'] ==0) { ?>
                         <td>审核中...</td>
                         <?php  } else { ?>
                          <td><?php  echo date("Y-m-d ",$item['sh_time'])?></td>
                          
                           <?php  } ?>
                          <td><?php  echo $item['typename'];?></td> 
                           <?php  if($item['dq_time'] ==0) { ?>
                         <td>审核中...</td>
                         <?php  } else { ?>
                          <td><?php  echo date("Y-m-d ",$item['dq_time'])?></td>
                          
                           <?php  } ?>
                           <td><?php  echo $item['id'];?></td>
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
                           <a href="<?php  echo $this->createWebUrl('yellowstore',array('op'=>'tg','id'=>$item['id']));?>"><button class="btn btn-xs storeblue">通过</button></a>
                           <a href="<?php  echo $this->createWebUrl('yellowstore',array('op'=>'jj','id'=>$item['id']));?>"><button class="btn btn-xs storegrey">拒绝</button></a>
                           <?php  } ?>
                           <a href="<?php  echo $this->createWebUrl('yellowstoreinfo',array('id'=>$item['id']));?>" class="storespan btn btn-xs">
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
                            <!-- <a href="<?php  echo $this->createWebUrl('yellowstoreinfo',array('id'=>$item['id']));?>"><button class="btn btn-success">查看</button></a>
                           <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModal<?php  echo $item['id'];?>">删</button> -->
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
                            <a href="<?php  echo $this->createWebUrl('yellowstore', array('op' => 'delete', 'id' => $item['id']))?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>
            <?php  } } ?>
            <?php  if(empty($list)) { ?>
            <tr class="yg5_tr2">
            <td colspan="0">
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
        // ———————————————批量通过———————————————
        $("#allpass").on('click',function(){
            var check = $("input[type=checkbox][class!=allcheck]:checked");
            if(check.length < 1){
                alert('请选择要通过的帖子!');
                return false;
            }else if(confirm("确认要通过此帖子?")){
                var id = new Array();
                check.each(function(i){
                    id[i] = $(this).val();
                });
                console.log(id)
                $.ajax({
                    type:"post",
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=AdoptHy&m=zh_tcwq",
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
                alert('请选择要拒绝的帖子!');
                return false;
            }else if(confirm("确认要拒绝此帖子?")){
                var id = new Array();
                check.each(function(i){
                    id[i] = $(this).val();
                });
                console.log(id)
                $.ajax({
                    type:"post",
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=RejectHy&m=zh_tcwq",
                    dataType:"text",
                    data:{id:id},
                    success:function(data){
                        console.log(data);      
                       location.reload();
                    }
                })               
            }
        });
        $("#frame-4").show();
        $("#yframe-4").addClass("wyactive");

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
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=DelHy&m=zh_tcwq",
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