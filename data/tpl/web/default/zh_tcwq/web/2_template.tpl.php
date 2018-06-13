<?php defined('IN_IA') or exit('Access Denied');?>﻿<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcss.css">
<ul class="nav nav-tabs">    
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>
    <li class="active"><a href="javascript:void(0);">模板消息</a></li>
</ul>
  <div class="main">
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data" id="invitative">
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                系统设置&nbsp;>&nbsp;模板消息
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商家入驻申请通知：</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">
                             <input type="text" name="tid1" value="<?php  echo $item['tid1'];?>" id="points" class="form-control" />
                        </p>
                        <div style="color: #999;">*模板编号AT0444,关键词(商家名称,申请人,申请时间,状态,备注)</div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">申请提现通知：</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">
                             <input type="text" name="tid2" value="<?php  echo $item['tid2'];?>" id="points" class="form-control" />
                        </p>
                        <div style="color: #999;">*模板编号AT0324,关键词(姓名,帐号,提现金额,实际到账,方式,提现时间)</div>
                    </div>
                </div>
               <div class="form-group">
                 <label class="col-xs-12 col-sm-3 col-md-2 control-label">帖子评论成功通知：</label>
                 <div class="col-sm-9">
                     <p class="form-control-static">
                          <input type="text" name="tid3" value="<?php  echo $item['tid3'];?>" id="points" class="form-control" />
                     </p>
                     <div style="color: #999;">*AT0813,关键词(评论内容,评论人,评论时间)</div>
                 </div>
             </div> 
            </div>
        </div>
        
        <div class="form-group">
            <input type="submit" name="submit" value="保存设置" class="btn col-lg-3" style="color: white;background-color: #44ABF7;" />
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
            <input type="hidden" name="id" value="<?php  echo $item['id'];?>"/>
        </div>
    </form>
</div>
<script type="text/javascript">
    $(function(){
        $("#frame-12").show();
        $("#yframe-12").addClass("wyactive");
    })
</script>