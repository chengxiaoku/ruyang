<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcss.css">
<style type="text/css">
      .dizhiname{width: 500px;float: left;}
      .dizhi:hover{color: #ff3b3b}
      .dizhi{
          color: #ff3b3b;
          float: left;
          height: 35px;
          line-height: 35px;
          margin-left: 20px;
          font-weight: bold;

        }
    #ygsinput{font-size: 14px;height: 33px;border-radius: 4px;border:1px solid #e7e7eb;padding-left: 10px;}
    .searchname{font-size: 14px;color: #666;width: 220px;}
    .searchname>a>p{color: #666;}
</style>

<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>    
    <li class="active"><a href="javascript:void(0);">商家信息</a></li>
</ul>
<div class="main">
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <!--<input type="hidden" name="parentid" value="<?php  echo $parent['id'];?>" />-->
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                商家信息&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">导航跳转链接:&nbsp;&nbsp;../sellerinfo/sellerinfo?id=<?php  echo $info['id'];?></font>
            </div>
            <div class="panel-body">   
            <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商家排序</label>
                    <div class="col-sm-9">
                        <input type="number" name="num" class="form-control" value="<?php  echo $info['num'];?>" />
                        <span class="help-block">*顺序由小到大，数字越小，排在前面。</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商家名称</label>
                    <div class="col-sm-9">
                        <input type="text" name="store_name" class="form-control" value="<?php  echo $info['store_name'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商家电话</label>
                    <div class="col-sm-9">
                        <input type="text" name="tel" class="form-control" value="<?php  echo $info['tel'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商家地址</label>
                    <div class="col-sm-9">
                        <input type="text" name="address" class="form-control" value="<?php  echo $info['address'];?>" />
                    </div>
                </div>
                   <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">地址坐标</label>
                    <div class="col-sm-10">
                     <!-- <?php  echo tpl_form_field_coordinate('op',$list['coordinates'])?> -->
                     <input type="text" name="coordinates" class="form-control dizhiname" value="<?php  echo $info['coordinates'];?>" placeholder="地理位置" />
                     <a href="http://lbs.qq.com/tool/getpoint/" target="_blank" class="dizhi">点击获取地理位置</a>
                    </div>
                </div>    
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商家营业执照</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_form_field_image('yyzz_img', $info['yyzz_img'])?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商家身份证</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_form_field_image('sfz_img', $info['sfz_img'])?>
                    </div>
                </div>      
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商家LOGO</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_form_field_image('logo', $info['logo'])?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">老板微信</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_form_field_image('weixin_logo', $info['weixin_logo'])?>

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商家轮播图</label>
                    <div class="col-sm-9">
                       <?php  echo tpl_form_field_multi_image('ad',$ad);?>
                       <span class="help-block">*建议尺寸大小:2:1</span>
                    </div>
                </div>

                              
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商家图片</label>
                    <div class="col-sm-9">
                       <?php  echo tpl_form_field_multi_image('img',$img);?>
                       <span class="help-block">*建议尺寸大小:2:1</span>
                    </div>
                </div>
                 <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商家二维码图片</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_form_field_image('ewm_logo', $info['ewm_logo'])?>
                       <span class="help-block">*不上传默认为店铺二维码图片</span>
                    </div>
                </div>   
                                    
                
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">公告</label>
                    <div class="col-sm-9">
                        <input type="text" name="announcement" class="form-control" value="<?php  echo $info['announcement'];?>" />
                    </div>
                </div>
                
              <div class="form-group">

                    <label for="inputEmail3" class="col-sm-2 control-label">营业开始时间</label>

                    <div class="col-sm-10">

                   <?php  echo tpl_form_field_clock('start_time', $info['start_time']);?>

                    </div>

                  </div>

                <div class="form-group">

                    <label for="inputEmail3" class="col-sm-2 control-label">营业结束时间</label>

                    <div class="col-sm-10">
                   <?php  echo tpl_form_field_clock('end_time', $info['end_time']);?>

                    </div>

                  </div>

              
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">关键字</label>
                <div class="col-sm-10">
                    <input type="text" name="keyword" value="<?php  echo $info['keyword'];?>" class="form-control" id="inputEmail3">
                </div>
            </div>
               <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">人气数</label>
                <div class="col-sm-10">
                    <input type="number" name="views" value="<?php  echo $info['views'];?>" class="form-control" id="inputEmail3">
                </div>
            </div>
            
           <div class="form-group">
                    <label for="lastname" class="col-sm-2 control-label">店内设施</label>
                    <div class="col-sm-10">
                        <label class="checkbox-inline">
                        <?php  if($info['skzf']==1) { ?>  
                        <input type="checkbox" name="skzf" id="optionsRadios3" value="1" checked> 刷卡支付
                        <?php  } else { ?>
                        <input type="checkbox" name="skzf" id="optionsRadios3" value="1" > 刷卡支付
                        <?php  } ?>
                        </label>
                        <label class="checkbox-inline">
                            <?php  if($info['wifi']==1) { ?>  
                            <input type="checkbox" name="wifi" id="optionsRadios4"  value="1" checked> WIFI
                              <?php  } else { ?>
                               <input type="checkbox" name="wifi" id="optionsRadios4"  value="1" > WIFI
                               <?php  } ?>
                        </label>
                        <label class="checkbox-inline">
                           <?php  if($info['mftc']==1) { ?>  
                            <input type="checkbox" name="mftc" id="optionsRadios4"  value="1" checked> 免费停车
                             <?php  } else { ?>
                                <input type="checkbox" name="mftc" id="optionsRadios4"  value="1"> 免费停车
                                 <?php  } ?>
                        </label>
                        <label class="checkbox-inline">
                             <?php  if($info['jzxy']==1) { ?>  
                                <input type="checkbox" name="jzxy" id="optionsRadios4"  value="1" checked>禁止吸烟
                                <?php  } else { ?>
                                <input type="checkbox" name="jzxy" id="optionsRadios4"  value="1" >禁止吸烟
                                 <?php  } ?>
                        </label>
                        <label class="checkbox-inline">
                        <?php  if($info['tgbj']==1) { ?>  
                            <input type="checkbox" name="tgbj" id="optionsRadios4"  value="1" checked> 提供包间
                             <?php  } else { ?>
                            <input type="checkbox" name="tgbj" id="optionsRadios4"  value="1" > 提供包间
                             <?php  } ?>
                        </label>
                         <label class="checkbox-inline">
                        <?php  if($info['sfxx']==1) { ?>  
                            <input type="checkbox" name="sfxx" id="optionsRadios4"  value="1" checked> 沙发休闲
                             <?php  } else { ?>
                            <input type="checkbox" name="sfxx" id="optionsRadios4"  value="1" > 沙发休闲
                             <?php  } ?>
                        </label>
                    </div>
                </div>
             <!-- <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">所属区域</label>
                <div class="col-sm-10">
                    <select class="form-control" name="area_id">
                      <?php  if(is_array($area)) { foreach($area as $key => $item) { ?>
                        <?php  if($item['id']==$info['area_id']) { ?>
                        <option value="<?php  echo $item['id'];?>" selected="selected"><?php  echo $item['area_name'];?></option>
                        <?php  } else { ?>
                        <option value="<?php  echo $item['id'];?>" ><?php  echo $item['area_name'];?></option>
                        <?php  } ?>
                        <?php  } } ?>
                    </select>
                </div>
                         </div> -->
                <!--
               <div class="form-group">
             <label class="col-xs-12 col-sm-3 col-md-2 control-label">所属城市</label>
             <div class="col-sm-10">
              <input type="text" name="cityname" value="<?php  echo $info['cityname'];?>" class="form-control" id="inputEmail3">
             </div>
                         </div>-->
             <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">商家简介</label>
                <div class="col-sm-10">
                    <textarea name="details" class="form-control" cols="30" rows="7"><?php  echo $info['details'];?></textarea>
                </div>
            </div>
                <!--
             <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">VR链接</label>
                <div class="col-sm-10">
                   <input type="text" name="vr_link" value="<?php  echo $info['vr_link'];?>" class="form-control" id="inputEmail3">
                     <span style="color:red">此链接需要在小程序后台配置业务域名</span>
                </div>
            </div>
        -->
         <!--    <div class="form-group">
             <label class="col-xs-12 col-sm-3 col-md-2 control-label">行业分类</label>
             <div class="col-sm-10">
                 <input type="text"  value="<?php  echo $type['type_name'];?>" class="form-control" id="inputEmail3" readonly>
             </div>
         </div> -->
         
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label" style="margin-right: 15px;">行业分类</label>
                    <select class="col-sm-8" name="storetype_id"  id="onefenlei">
                        <?php  if(is_array($type)) { foreach($type as $key => $item) { ?>
                        <?php  if($item['id']==$info['storetype_id']) { ?>
                        <option value="<?php  echo $item['id'];?>" selected="selected"><?php  echo $item['type_name'];?></option>
                        <?php  } else { ?>
                        <option value="<?php  echo $item['id'];?>" ><?php  echo $item['type_name'];?></option>
                        <?php  } ?>
                        <?php  } } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label" style="margin-right: 15px;">二级栏目分类</label>
                    <input type="hidden" id="hiddeninfo" value="<?php  echo $info['storetype2_id'];?>">
                    <select class="col-sm-8" name="storetype2_id" id="twofenlei" value="">
                        
                    </select>
                </div>

     <!--     <?php  if($info['time_over']==1) { ?> 
           <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label" style="margin-right: 15px;">入住类型</label>
                <select class="col-sm-8" name="type">
                    <?php  if(is_array($typein)) { foreach($typein as $key => $item) { ?>
                   
                    <?php  if($item['id']==$info['type']) { ?>
                    <option value="<?php  echo $item['id'];?>" selected="selected"><?php  if($item['type']==1) { ?>一天<?php  } else if($item['type']==2) { ?>半年{else $item['type']==3}一年<?php  } ?></option>
                    <?php  } else { ?>
                    <option value="<?php  echo $item['id'];?>" ><?php  if($item['type']==1) { ?>一天<?php  } else if($item['type']==2) { ?>半年<?php  } else if($item['type']==3) { ?>一年<?php  } ?></option>
                    <?php  } ?>
                    <?php  } } ?>
                </select>
            </div>
         <?php  } ?> -->
           <!--    <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label" style="margin-right: 15px;">入住类型</label>
                   <select class="col-sm-8" name="type">                                                       
                       <option value="1" <?php  if($info['type']==1) { ?> selected="selected" <?php  } ?>>一周</option>
                        <option value="2" <?php  if($info['type']==2) { ?> selected="selected" <?php  } ?>>半年</option>
                         <option value="3"<?php  if($info['type']==3) { ?> selected="selected" <?php  } ?>>一年</option>                       
                    </select>
                </div> -->
                <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">到期时间</label>
                <div class="col-sm-10">
                   <?php  echo tpl_form_field_date('dq_time',date('Y-m-d',$info['dq_time']))?>
                   <span class="help-block">*请设置当前商家入驻到期时间</span>
                </div>
            </div>
                <!--
              <?php  if($img2!='') { ?>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">店铺小程序码</label>
                    <?php  if(strlen($img2)>200) { ?>
                    <?php  echo "<img src='data:image/png;base64,".$img2."'>"?>
                    <?php  } else { ?> 
                    <div class="col-sm-10">
                     <input type="text" style="color:red" name="orderby" value="该二维码必须在小程序发布后才能生成" class="form-control" id="inputEmail3" readonly>
                   </div>
                   <?php  } ?>
                 </div>
                 <?php  } ?>
                   <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label" style="margin-right: 15px;">绑定微信端管理员</label>
                    <select class="col-sm-4" id="username" name="user_id">
                     <option value="0">请选择管理员</option>
                        <?php  if(is_array($user)) { foreach($user as $key => $item) { ?>
                        <?php  if($item['id']==$info['user_id']) { ?>
                        <option value="<?php  echo $item['id'];?>" selected="selected" name="unopction"><?php  echo $item['name'];?></option>
                        <?php  } else { ?>
                        <option value="<?php  echo $item['id'];?>" name="unopction"><?php  echo $item['name'];?></option>
                        <?php  } ?>
                        <?php  } } ?>
                    </select>
                    <span class="btn btn-sm storeblue" data-toggle="modal" data-target="#myModal1" style="margin-left: 30px;">搜索管理员</span>
                    <div class="col-xs-12 col-sm-9 col-md-10 col-sm-push-3 col-md-push-2 ">
                      <span class="help-block">*请手动选择微信管理员，一个微信账号只能绑定一个商家店铺</span>
                    </div>
                    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                  <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">提示</h4>
                                </div>
                                <div class="modal-body ygsearch" style="font-size: 20px;padding: 15px 30px;">
                                    <input type="text" id="ygsinput" placeholder="请输入微信昵称">
                                    <span class="btn btn-sm ygbtn storeblue">搜索</span>
                                    <div class="searchname" style="margin-top: 8px;"></div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                </div>
                            </div>
                        </div>
                    </div>   
              </div>-->
            
              <!--
             <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">登入账号</label>
                <div class="col-sm-10">
                    <input type="text"  name="user_name" value="<?php  echo $info['user_name'];?>" class="form-control" id="inputEmail3" >
                </div>
            </div>-->
                <!--
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">登入密码</label>
                <div class="col-sm-10">
                    <input type="text" name="pwd" value="" class="form-control" id="inputEmail3" >
                    <span style="color:red">此账号为手机端登入账号,密码密文不显示,忘记请直接修改</span>
                </div>
            </div>-->
               <div class="form-group">
               <label class="col-xs-12 col-sm-3 col-md-2 control-label">是否置顶</label>
               <div class="col-sm-9">
                   <label class="radio-inline">
                       <input type="radio" name="is_top" value="1" <?php  if($info['is_top']==1 || empty($info['is_top'])) { ?>checked<?php  } ?> />是
                   </label>
                   <label class="radio-inline">
                       <input type="radio" name="is_top" value="2" <?php  if($info['is_top']==2) { ?>checked<?php  } ?> />否
                   </label>
               </div>
           </div>
        

            </div>
        </div>
        <div class="form-group">
            <input type="submit" name="submit" value="修改" class="btn col-lg-3" style="color: white;background-color: #44ABF7;"/>
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
            <input type="hidden" name="id" value="<?php  echo $info['id'];?>" />
        </div>
    </form>
</div>
<script type="text/javascript">
    $(function(){
        $("#frame-0").show();
        $("#yframe-0").addClass("wyactive");

        // ——————————分类选择器事件——————————————
        var onefen = $("#onefenlei").val();
        console.log("111是："+$("#hiddeninfo").val())
        $.ajax({
            type:"post",
            url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=GetStoreType&m=zh_tcwq",
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
                url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=GetStoreType&m=zh_tcwq",
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


        // —————————————管理员搜索事件———————————————
        $(".searchname").hide();
        $(".ygbtn").on("click",function(){
            var ygsinput = $("#ygsinput").val();
            console.log(ygsinput)
            if(ygsinput.length==''){
              $(".searchname").html('');
            }else{
              $(".searchname").html('')  
              var keywords = $("#ygsinput").val()
              $.ajax({
                  type:"post",
                  url:"<?php  echo $_W['siteroot'];?>/app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=FindUser&m=zh_tcwq",
                  dataType:"text",
                  data:{keywords:keywords},
                  success:function(data){                    
                      var data = eval('(' + data + ')')
                      console.log(data);
                      $(".searchname").show();
                      for(var i=0;i<data.length;i++){
                        $(".searchname").append('<div class="shnbox" data-dismiss="modal" id="'+data[i].id+'"><a href="javascript:void(0);"><p>'+data[i].name+'</p></a></div>')
                      }
                      $(".shnbox").each(function(){
                        $(this).click(function(){
                            // console.log($(this).attr("id"));
                            // $("#username").val($(this).html())
                            var thid = $(this).attr("id");
                            $('#username option[value='+thid+']').attr("selected", true);
                        })
                        
                      })
                      
                  }
              }) 
            }
            
        })
    })
</script>