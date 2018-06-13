<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcss.css">
<ul class="nav nav-tabs">    
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>
    <li><a href="<?php  echo $this->createWebUrl('zx')?>">资讯管理</a></li>

    <li class="active"><a href="<?php  echo $this->createWebUrl('addzx')?>">添加资讯</a></li>

</ul>

<div class="main ygmain">

    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">内容编辑</div>
            <div class="panel-body">
                 <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label" style="margin-right: 15px;">资讯分类</label>
                    <select class="col-sm-8" name="type_id">
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

                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">标题</label>

                    <div class="col-sm-9">

                        <input type="text" name="title" class="form-control" value="<?php  echo $info['title'];?>" />

                    </div>

                </div>  

                <?php  if($info['type']==1) { ?>             


                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">资讯内容</label>
                    <div class="col-sm-10">
                      <textarea name="content" class="form-control" placeholder="请输入资讯内容" cols="30" rows="7"><?php  echo $info['content'];?></textarea>
                  </p>
              </div>
          </div>
          <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">缩略图片</label>
                    <div class="col-sm-9">
                       <?php  echo tpl_form_field_multi_image('imgs',$imgs);?>
                       建议尺寸大小:2:1
                    </div>
                </div> 
            <?php  } else { ?>
                   <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">资讯内容</label>
                    <div class="col-sm-9">
                         <?php  echo tpl_ueditor('content',$info['content']);?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">缩略图片</label>
                    <div class="col-sm-9">
                       <?php  echo tpl_form_field_multi_image('imgs',$imgs);?>
                       建议尺寸大小:2:1
                    </div>
                </div> 

            <?php  } ?>

            <?php  if($info) { ?>
                <div class="form-group">
             <label class="col-xs-12 col-sm-3 col-md-2 control-label">所属城市</label>
             <div class="col-sm-10">
                <input type="text" name="cityname" value="<?php  echo $info['cityname'];?>" class="form-control" id="inputEmail3">
            </div>
                    </div>

            <?php  } ?>

             <div class="form-group">

                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">阅读数量</label>

                    <div class="col-sm-9">

                        <input type="number" name="yd_num" class="form-control" value="<?php  echo $info['yd_num'];?>" />

                    </div>

                </div> 

            </div>

        </div>



        <div class="form-group">

            <input type="submit" name="submit" value="提交" class="btn col-lg-3" style="color: white;background-color: #44ABF7;"/>

            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />

            <input type="hidden" name="id" value="<?php  echo $info['id'];?>" />

        </div>

    </form>

</div>

<script type="text/javascript">
    $(function(){
        $("#frame-3").show();
        $("#yframe-3").addClass("wyactive");
    })
</script>