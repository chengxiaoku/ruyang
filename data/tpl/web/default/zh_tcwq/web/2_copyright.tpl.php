<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcss.css">
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>    
    <li class="active"><a href="javascript:void(0);">版权设置</a></li>
</ul>
<div class="main">
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data" id="invitative">
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                版权设置
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">后台顶部标题名称</label>
                    <div class="col-sm-9">
                        <input type="text" name="link_name" class="form-control" value="<?php  echo $item['link_name'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">后台顶部logo</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_form_field_image('link_logo', $item['link_logo'])?>
                        <span class="help-block">*建议比例 1:1</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">底部版权文字</label>
                    <div class="col-sm-9">
                        <input type="text" name="bq_name" class="form-control" value="<?php  echo $item['bq_name'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">底部版权图片</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_form_field_image('bq_logo', $item['bq_logo'])?>
                        <span class="help-block">*建议比例 1:1</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">底部跳转小程序名称</label>
                    <div class="col-sm-9">
                        <input type="text" name="tz_name" class="form-control" value="<?php  echo $item['tz_name'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">底部跳转小程序appid</label>
                    <div class="col-sm-9">
                        <input type="text" name="tz_appid" class="form-control" value="<?php  echo $item['tz_appid'];?>" />
                         <span class="help-block">*要跳转的小程序appid(只有同一公众号下的关联的小程序之间才可相互跳转)</span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">技术支持</label>
                    <div class="col-sm-9">
                        <input type="text" name="support" class="form-control" value="<?php  echo $item['support'];?>" />
                    </div>
                </div>
            </div>
        </div>
        
        <div class="form-group">
            <input type="submit" name="submit" value="保存设置" class="btn col-lg-3" style="color: white;background-color: #44ABF7;" />
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
            <input type="hidden" name="id" value="<?php  echo $item['id'];?>" />
        </div>
    </form>
</div>
<script type="text/javascript">
    $(function(){
        $("#frame-12").show();
        $("#yframe-12").addClass("wyactive");
    })
</script>
