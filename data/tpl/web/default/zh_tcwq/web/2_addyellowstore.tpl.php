<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcss.css">
<style type="text/css">
    .dizhi{
      color: #ff3b3b;
      float: left;
      height: 35px;
      line-height: 35px;
      margin-left: 20px;
      font-weight: bold;
    }
    .dizhi:hover{color: #ff3b3b}
    .dizhiname{width: 500px;float: left;}
</style>
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>    
    <li class="active"><a href="javascript:void(0);">公司信息</a></li>
</ul>
<div class="main">
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <!--<input type="hidden" name="parentid" value="<?php  echo $parent['id'];?>" />-->
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                黄页114&nbsp;&nbsp;>&nbsp;&nbsp;公司信息
            </div>
            <div class="panel-body">   
            <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">公司排序</label>
                    <div class="col-sm-9">
                        <input type="number" name="sort" class="form-control" value="<?php  echo $info['sort'];?>" />
                        <span class="help-block">*从小到大排序</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">公司名称</label>
                    <div class="col-sm-9">
                        <input type="text" name="company_name" class="form-control" value="<?php  echo $info['company_name'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">公司电话</label>
                    <div class="col-sm-9">
                        <input type="text" name="link_tel" class="form-control" value="<?php  echo $info['link_tel'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">公司地址</label>
                    <div class="col-sm-9">
                        <input type="text" name="company_address" class="form-control" value="<?php  echo $info['company_address'];?>" />
                    </div>
                </div> 
              
                <!--            <div class="form-group">
                                       <label class="col-xs-12 col-sm-3 col-md-2 control-label">地址坐标</label>
                                       <div class="col-sm-10">
                                        <?php  echo tpl_form_field_coordinate('op',$list['coordinates'])?>
                                       </div>
                                   </div>  -->   
                       <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">地址坐标</label>
                    <div class="col-sm-10">
                     <!-- <?php  echo tpl_form_field_coordinate('op',$list['coordinates'])?> -->
                     <input type="text" name="coordinates" class="form-control dizhiname" value="<?php  echo $info['coordinates'];?>" placeholder="地理位置" />
                     <a href="http://lbs.qq.com/tool/getpoint/" target="_blank" class="dizhi">点击获取地理位置</a>
                    </div>
                </div>    
                   <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">浏览量</label>
                    <div class="col-sm-9">
                        <input type="number" name="views" class="form-control" value="<?php  echo $info['views'];?>" />
                    </div>
                </div>  
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">公司logo</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_form_field_image('logo', $info['logo'])?>

                    </div>
                </div>
                                    

            <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label" style="margin-right: 15px;">黄页分类</label>
                    <select class="col-sm-8" name="type_id"  id="onefenlei">
                        <?php  if(is_array($type)) { foreach($type as $key => $item) { ?>
                        <?php  if($item['id']==$info['type_id']) { ?>
                        <option value="<?php  echo $item['id'];?>" selected="selected"><?php  echo $item['type_name'];?></option>
                        <?php  } else { ?>
                        <option value="<?php  echo $item['id'];?>" ><?php  echo $item['type_name'];?></option>
                        <?php  } ?>
                        <?php  } } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label" style="margin-right: 15px;">二级黄页分类</label>
                    <input type="hidden" id="hiddeninfo" value="<?php  echo $info['type2_id'];?>">
                    <select class="col-sm-8" name="type2_id" id="twofenlei" value="">
                        
                    </select>
                </div>
              <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label" style="margin-right: 15px;">入驻期限</label>
                    <select class="col-sm-8" name="rz_type">
                        <?php  if(is_array($typein)) { foreach($typein as $key => $item) { ?>
                        <?php  if($item['id']==$info['rz_type']) { ?>
                        <option value="<?php  echo $item['id'];?>" selected="selected"><?php  echo $item['days'];?></option>
                        <?php  } else { ?>
                        <option value="<?php  echo $item['id'];?>" ><?php  echo $item['days'];?></option>
                        <?php  } ?>
                        <?php  } } ?>
                    </select>
                </div>
            <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">公司简介</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">
                          <textarea name="content" class="form-control" placeholder="请输入公司简介" cols="30" rows="7"><?php  echo $info['content'];?></textarea>
                        </p>
                        
                    </div>
                </div>

            <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">图片</label>
                        <div class="col-sm-10">
                            <?php  echo tpl_form_field_multi_image('imgs',$imgs);?>
                        </div>

                      </div>   
          
         <!--       <div class="form-group">
              <label class="col-xs-12 col-sm-3 col-md-2 control-label" style="margin-right: 15px;">入住类型</label>
              <select class="col-sm-8" name="rz_type">
                  <?php  if(is_array($type)) { foreach($type as $key => $item) { ?>
                 
                  <?php  if($item['id']==$info['type_id']) { ?>
                  <option value="<?php  echo $item['id'];?>" selected="selected"><?php  echo $item['type_name'];?></option>
                  <?php  } else { ?>
                  <option value="<?php  echo $item['id'];?>" ><?php  echo $item['type_name'];?></option>
                  <?php  } ?>
                  <?php  } } ?>
              </select>
          </div>
         -->
             


            </div>
        </div>
        <div class="form-group">
            <input type="submit" name="submit" value="添加" class="btn col-lg-3" style="color: white;background-color: #44ABF7;"/>
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
            <input type="hidden" name="id" value="<?php  echo $info['id'];?>" />
        </div>
    </form>
</div>
<script type="text/javascript">
    $(function(){
        $("#frame-4").show();
        $("#yframe-4").addClass("wyactive");
         // ——————————分类选择器事件——————————————
        var onefen = $("#onefenlei").val();
        console.log("111是："+$("#hiddeninfo").val())
        $.ajax({
            type:"post",
            url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=GetYellowType&m=zh_tcwq",
            dataType:"text",
            data:{id:onefen},
            success:function(data){
                var data = eval('(' + data + ')');
                console.log(data);
                for(var i = 0; i<data.length;i++){
                    console.log(data[i].name+data[i].id);
                    $("#twofenlei").append("<option value="+data[i].id+">"+data[i].name+"</option>");
                }
                console.log("这是选中的值twofenlei："+$("#twofenlei").val());
                $("#twofenlei").val($("#hiddeninfo").val());
            }
        })
        $("#onefenlei").change(function(){
            $("#twofenlei").empty();
            var str = $("#onefenlei option").map(function(){
                return $(this).text();
            }).get().join(", ")
            console.log(str);
            var onefenl = $("#onefenlei").val();
            var twofen = $("#twofenlei").val();
            console.log("这是选中的值onefenl："+$("#onefenl").val());
            console.log("这是选中的值twofenlei："+$("#twofenlei").val());
            $.ajax({
                type:"post",
                url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=GetYellowType&m=zh_tcwq",
                dataType:"text",
                data:{id:onefenl},
                success:function(data){
                    var data = eval('(' + data + ')');
                    console.log(data);
                    for(var i = 0; i<data.length;i++){
                        console.log(data[i].name+data[i].id);
                        $("#twofenlei").append("<option value="+data[i].id+">"+data[i].name+"</option>");                       
                    }
                    console.log("这是选中的值："+$("#twofenlei").val());
                }
            })
        });

    })
</script>