<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<!-- <link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcsslist.css"> -->
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcss.css">
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcsslist.css">
<style type="text/css">
    .store_list_img{width: 40px;height: 40px;background-color: pink;}
    .yg5_tabel{border: none;outline: none;}
    .yg5_tr3>td{border-bottom: 1px solid #efefef;padding: 5px 0px;text-align: center;}
    .yg5_tr4>td{border-bottom: 1px solid #efefef;padding: 5px 0px;text-align: center;background: #f2f2f2;}
    .yg5_tr2>td{padding: 10px 0px;border-bottom: 1px solid #efefef;text-align: center;
        /*background-color: #EDF6FF;*/
        
    }
    .yg5_tr1{border-bottom: 1px solid #efefef;font-weight: bold;text-align: center;
    }
    .fenleilist1{height: 35px;line-height: 35px;}
    .yg5_tr3>td:nth-child(1),.yg5_tr1>td:nth-child(1){width: 80px;text-align: center;}
    .yg5_tr3>td:nth-child(2),.yg5_tr1>td:nth-child(2){width: 80px;}
    .yg5_tr3>td:nth-child(3),.yg5_tr1>td:nth-child(3){width: 120px;}
    .yg5_tr3>td:nth-child(4),.yg5_tr1>td:nth-child(4){width: auto;}
    .yg5_tr3>td:nth-child(5),.yg5_tr1>td:nth-child(5){width: auto;}
    .yg5_tr3>td:nth-child(6),.yg5_tr1>td:nth-child(6){width: 120px;}
    .yg5_tr3>td:nth-child(7),.yg5_tr1>td:nth-child(7){width: auto;}
    .yg5_tr3>td:nth-child(8),.yg5_tr1>td:nth-child(8){width: 100px;}
    /*.yg5_tr3>td:nth-child(9),.yg5_tr1>td:nth-child(9){width: auto;}*/
    .yg5_tr3>td:nth-child(4){padding-left: 30px;}
    .yg5_tr3:hover{background-color: #EDF6FF;}
    .yg5_tr2:hover{background-color: #EDF6FF;}
    .fxiala{font-size: 16px;cursor: pointer;opacity: 0.5;display: inline-block;width: 50px;height: 20px;text-align: center;}
    .fxiala:hover{color: #333;opacity: 1;}
    .collapse{transition: all 0.5s;}
    .ygsave{margin-top: 50px;}
    .storespan2{font-size: 14px;color: white;margin: 5px;position: relative;background-color: #44abf7;}
    .storespan2:hover{color: #fff;}
    .storespan2:hover .bianji{display: block;}
    .feileibqbox{position: relative;margin-right: 15px;display: inline-block;padding: 5px;}
    .feileibq2{position: absolute;top: -5px;right: -5px;cursor: pointer;}
    .feileibq2>img{width: 25px;height: 25px;}
    .feileibqremark{width: 80px;height: 20px;}
    .storegrey3{width: 120px;height: 35px;padding: 0px 10px;border-radius: 10px;text-align: center;outline: none;}
    .xgsuccess{position: absolute;top: 17%;left: 0%;z-index: 1080;display: none;}
</style>

<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>    
    <li class="active"><a href="<?php  echo $this->createWebUrl('yellowtype')?>">分类管理</a></li>
    <li><a href="<?php  echo $this->createWebUrl('addyellowtype')?>">添加分类</a></li>
</ul>
<div class="main">
<!--  <div class="panel panel-default ygbody">
        <div class="panel-body">
            <p class="yangshi">商家分类跳转地址,id和name在分类页获取:&nbsp;&nbsp;<a>../store/business?id=分类id&typename=分类名称</a></p>
        </div>
    </div> -->
    <div class="panel panel-default">
        <div class="panel-body ygbtn">
            <div class="btn ygyouhui2" id="allselect">批量删除</div>
            <div class="btn storesuccess2" id="allpass">批量启用</div>
            <div class="btn ygshouqian2" id="allrefuse">批量禁用</div>
        </div>        
    </div>
    <!-- 门店列表部分开始 -->
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                黄页分类
            </div>
            <div class="panel-body" style="padding: 0px 15px;">
                <div class="row">
                    <table class="yg5_tabel col-md-12">
                        <tr class="yg5_tr1">
                            <td class="fenleilist1">
                              <input type="checkbox" class="allcheck" />
                              <span class="store_inp">全选</span>                      
                            </td>
                            <td>顺序</td>
                            <td>分类id</td>
                            <td>图标</td>
                            <td>分类名称</td>
                            <!--  <td class="col-md-2">价格</td> -->
                             <td>状态</td>
                            <td>操作</td>
                            <td></td>
                        </tr>
                        <?php  if(is_array($list)) { foreach($list as $row) { ?>
                        <tr class="yg5_tr2">
                            <td>
                              <input type="checkbox" name="test" value="<?php  echo $row['id'];?>">
                            </td>
                            <td class="num<?php  echo $row['id'];?>">
                                <span class="numspan<?php  echo $row['id'];?>"><?php  echo $row['num'];?></span>
                                <input style="display: none;width: 100%;" type="number" name="num<?php  echo $row['id'];?>" class="numinp<?php  echo $row['id'];?>" value="<?php  echo $row['num'];?>" />
                                <!-- <script type="text/javascript">
                                    $(function(){
                                        $(".num<?php  echo $row['id'];?>").each(function(index){
                                             $(this).dblclick(function(){
                                                $(".numinp<?php  echo $row['id'];?>").eq(index).show().focus();
                                                $(".numspan<?php  echo $row['id'];?>").eq(index).hide();                                         
                                            });
                                        });
                                        $(".numinp<?php  echo $row['id'];?>").each(function(index){
                                            $(this).blur(function(){            
                                                $(".numinp<?php  echo $row['id'];?>").eq(index).hide();
                                                $(".numspan<?php  echo $row['id'];?>").eq(index).show();
                                                var text = $(".numspan<?php  echo $row['id'];?>").html();
                                                var inp = $(" input[ name='num<?php  echo $row['id'];?>' ] ").val();
                                                $(".numspan<?php  echo $row['id'];?>").html(inp);
                                                console.log(inp);
                                                id = <?php  echo $row['id'];?>;
                                                num = inp;
                                                $.ajax({
                                                    type:"post",
                                                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=UpdType2&m=zh_tcwq",
                                                    dataType:"text",
                                                    data:{id:id,num:num},
                                                    success:function(data){
                                                        console.log(data);
                                                    }
                                                })
                                        
                                            });
                                        });
                                    })
                                </script> -->
                            </td>
                            <td><?php  echo $row['id'];?></td>
                            <td>
                                <img class="store_list_img" src="<?php  echo tomedia($row['img']);?>" alt=""/>                                
                            </td>
                            <td><?php  echo $row['type_name'];?></td>
                           <!--  <td class="money<?php  echo $row['id'];?>">
                               <span class="moneyspan<?php  echo $row['id'];?>"><?php  echo $row['money'];?></span>
                               <input style="display: none;width: 100%;" type="text" name="money<?php  echo $row['id'];?>" class="moneyinp<?php  echo $row['id'];?>" value="<?php  echo $row['money'];?>" />
                               <script type="text/javascript">
                                   $(function(){
                                       $(".money<?php  echo $row['id'];?>").each(function(index){
                                            $(this).dblclick(function(){
                                               $(".moneyinp<?php  echo $row['id'];?>").eq(index).show().focus();
                                               $(".moneyspan<?php  echo $row['id'];?>").eq(index).hide();                                           
                                           });
                                       });
                                       $(".moneyinp<?php  echo $row['id'];?>").each(function(index){
                                           $(this).blur(function(){            
                                               $(".moneyinp<?php  echo $row['id'];?>").eq(index).hide();
                                               $(".moneyspan<?php  echo $row['id'];?>").eq(index).show();
                                               var text = $(".moneyspan<?php  echo $row['id'];?>").html();
                                               var inp = $(" input[ name='money<?php  echo $row['id'];?>' ] ").val();
                                               $(".moneyspan<?php  echo $row['id'];?>").html(inp);
                                               // console.log(inp);
                                               id = <?php  echo $row['id'];?>;
                                               money = inp;
                                               $.ajax({
                                                   type:"post",
                                                   url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=UpdType2&m=zh_dianc",
                                                   dataType:"text",
                                                   data:{id:id,money:money},
                                                   success:function(data){
                                                       console.log(data);
                                                   }
                                               })
                                       
                                           });
                                       });
                                   })
                               </script>
                           </td> -->
                             <td><?php  if($row['state']==1) { ?> <span class="label storeblue">  <a href="<?php  echo $this->createWebUrl('yellowtype', array('id' => $row['id'],'op'=>change,'state'=>2))?>"   >启用</a></span><?php  } else if($row['state']==2) { ?> <span class="label storegrey"><a href="<?php  echo $this->createWebUrl('yellowtype', array('id' => $row['id'],'op'=>change,'state'=>1))?>">禁用</a></span><?php  } ?></td>
                            <td>
                                <a href="<?php  echo $this->createWebUrl('addyellowtype2', array('type_id' => $row['id']))?>" class="storespan btn btn-xs">
                                        <span class="fa fa-plus"></span>
                                        <span class="bianji" style="left: -30px;">添加二级分类
                                            <span class="arrowdown"></span>
                                        </span>                            
                                    </a> 
                                <a href="<?php  echo $this->createWebUrl('addyellowtype', array('id' => $row['id']))?>" class="storespan btn btn-xs">
                                    <span class="fa fa-pencil"></span>
                                    <span class="bianji">编辑
                                        <span class="arrowdown"></span>
                                    </span>                            
                                </a>
                                <a href="javascript:void(0);" class="storespan btn btn-xs" data-toggle="modal" data-target="#myModal<?php  echo $row['id'];?>">
                                    <span class="fa fa-trash-o"></span>
                                    <span class="bianji">删除
                                        <span class="arrowdown"></span>
                                    </span>
                                </a>
                            <!-- <a class="btn btn-warning btn-xs" href="<?php  echo $this->createWebUrl('addstoretype', array('id' => $row['id']))?>" title="编辑">改</a>&nbsp;&nbsp;
                           <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#myModal<?php  echo $row['id'];?>">删</button> -->
                            </td>
                            <td>
                                <a class="fxiala" data-toggle="collapse" data-parent="#accordion" href="#collapse<?php  echo $row['id'];?>">
                                    <span class="fa fa-chevron-down"></span>
                                </a>
                            </td>
                        </tr>
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
                            <a href="<?php  echo $this->createWebUrl('yellowtype', array('id' => $row['id'],'op'=>'delete'))?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>

            <tbody id="collapse<?php  echo $row['id'];?>" class="panel-collapse collapse">
                        <?php  if(empty($row['ej'])) { ?>
                            <tr class="yg5_tr4"><td colspan="8">暂无二级分类</td></tr>
                            <?php  } else { ?>
                          <?php  if(is_array($row['ej'])) { foreach($row['ej'] as $son) { ?>
                            <tr class="yg5_tr3">
                                <td></td>
                                <td><?php  echo $son['num'];?></td> 
                                <td></td>
                                <td></td>                             
                                <td style="text-align: left;">--<?php  echo $son['name'];?></td>
                                 <td><?php  if($son['state']==1) { ?> <span class="label storeblue">  <a href="<?php  echo $this->createWebUrl('yellowtype', array('id' => $son['id'],'op'=>change2,'state'=>2))?>"   >启用</a></span><?php  } else if($son['state']==2) { ?> <span class="label storegrey"><a href="<?php  echo $this->createWebUrl('yellowtype', array('id' => $son['id'],'op'=>change2,'state'=>1))?>">禁用</a></span><?php  } ?></td>
                                <td>
                                    <a href="<?php  echo $this->createWebUrl('addyellowtype2', array('id' => $son['id']))?>" class="storespan btn btn-xs">
                                        <span class="fa fa-pencil"></span>
                                        <span class="bianji">编辑
                                            <span class="arrowdown"></span>
                                        </span>                            
                                    </a>
                                    <a href="#myModal<?php  echo $son['id'];?>" class="storespan btn btn-xs" data-toggle="modal" data-target="#myModal<?php  echo $son['id'];?>">
                                        <span class="fa fa-trash-o"></span>
                                        <span class="bianji">删除
                                            <span class="arrowdown"></span>
                                        </span>
                                    </a>
                                    <div class="modal fade" id="myModal<?php  echo $son['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">提示</h4>
                                                </div>
                                                <div class="modal-body" style="font-size: 20px">确定删除二级分类么？</div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                                    <a href="<?php  echo $this->createWebUrl('yellowtype', array('id' => $son['id'],'op'=>'delete2'))?>" type="button" class="btn btn-info" >确定</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td></td>
                            </tr>
                              <?php  } } ?>
                              <?php  } ?>
                        </tbody>


                        <?php  } } ?>

                       <?php  if(empty($list)) { ?>
                        <tr class="yg5_tr2">
                        <td colspan="6">
                              暂无商家信息
                          </td>
                      </tr>
                      <?php  } ?>
                    </table>
                </div>
            </div>
        </div>
    <?php  echo $pager;?>
</div>
<script type="text/javascript">
    $(function(){
        $("#frame-4").show();
        $("#yframe-4").addClass("wyactive");

        // ———————————————批量删除———————————————
        $("#allselect").on('click',function(){
            var check = $("input[type=checkbox][class!=allcheck]:checked");
            if(check.length < 1){
                alert('请选择要删除的分类!');
                return false;
            }else if(confirm("确认要删除此分类?")){
                var id = new Array();
                check.each(function(i){
                    id[i] = $(this).val();
                });
                console.log(id)
                $.ajax({
                    type:"post",
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=DeleteYellowType&m=zh_tcwq",
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
                alert('请选择要启用的分类!');
                return false;
            }else if(confirm("确认要启用此分类?")){
                var id = new Array();
                check.each(function(i){
                    id[i] = $(this).val();
                });
                console.log(id)
                $.ajax({
                    type:"post",
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=QyYellowType&m=zh_tcwq",
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
                alert('请选择要禁用的分类!');
                return false;
            }else if(confirm("确认要禁用此分类?")){
                var id = new Array();
                check.each(function(i){
                    id[i] = $(this).val();
                });
                console.log(id)
                $.ajax({
                    type:"post",
                    url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=JyYellowType&m=zh_tcwq",
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