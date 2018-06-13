<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcss.css">
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>    
    <li><a href="<?php  echo $this->createWebUrl('zxtype')?>">信息分类管理</a></li>
    <li class="active"><a href="<?php  echo $this->createWebUrl('addzxtype')?>">添加信息分类</a></li>
</ul>
<div class="main">
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                内容编辑
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">信息分类名称</label>
                    <div class="col-sm-9">
                        <input type="text" name="type_name" class="form-control" value="<?php  echo $info['type_name'];?>" />
                    </div>
                </div>
               <!--  <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">简介</label>
                    <div class="col-sm-9">
                        <input type="text" name="mark" class="form-control" value="<?php  echo $info['mark'];?>" />
                    </div>
                </div> -->
                <!-- <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">链接</label>
                    <div class="col-sm-9">
                        <input type="text" name="link" class="form-control" value="<?php  echo $info['link'];?>" />
                    </div>
                </div> -->
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">图标</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_form_field_image('icon', $info['icon'])?>
                    </div>
                </div>
              <!--   <div class="form-group">
                  <label class="col-xs-12 col-sm-3 col-md-2 control-label">价格</label>
                  <div class="col-sm-9">
                      <input type="text" name="money" onkeyup="value=value.replace(/[^\d.]/g,'')" class="form-control" value="<?php  echo $info['money'];?>" />
                  </div>
              </div> -->
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">排序</label>
                    <div class="col-sm-9">
                        <input type="number" name="sort" class="form-control" value="<?php  echo $info['sort'];?>" />
                        <span class="help-block">*从小到大排序</span>
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