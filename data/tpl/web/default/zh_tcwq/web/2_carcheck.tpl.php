<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcss.css">
<style type="text/css">
    input[type="radio"] + label::before {
        content: "\a0"; /*不换行空格*/
        display: inline-block;
        vertical-align: middle;
        font-size: 16px;
        width: 1em;
        height: 1em;
        margin-right: .4em;
        border-radius: 50%;
        border: 2px solid #ddd;
        text-indent: .15em;
        line-height: 1; 
    }
    input[type="radio"]:checked + label::before {
        background-color: #44ABF7;
        background-clip: content-box;
        padding: .1em;
        border: 2px solid #44ABF7;
    }
    input[type="radio"] {
        position: absolute;
        clip: rect(0, 0, 0, 0);
    }
</style>

<ul class="nav nav-tabs">    
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>
    <li class="active"><a href="javascript:void(0);">审核设置</a></li>
</ul>

<div class="main">
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <!--<input type="hidden" name="parentid" value="<?php  echo $parent['id'];?>" />-->
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                审核设置
            </div>
            <div class="panel-body">
        
                <div class="form-group">
                    <label for="lastname" class="col-sm-2 control-label">拼车信息审核</label>
                    <div class="col-sm-10">
                         <label class="radio-inline">
                            <input type="radio" id="emailwy1" name="is_car" value="1" <?php  if($item['is_car']==1 || empty($item['is_car'])) { ?>checked<?php  } ?> />
                            <label for="emailwy1">开启</label>
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="emailwy2" name="is_car" value="2" <?php  if($item['is_car']==2) { ?>checked<?php  } ?> />
                            <label for="emailwy2">关闭</label>
                        </label>
                        <div class="help-block">*是否开启拼车信息审核，关闭则为信息免审核状态</div>
                    </div>
                </div>
                   <div class="form-group">

                  <label class="col-xs-12 col-sm-3 col-md-2 control-label">支付金额</label>

                    <div class="col-sm-4">

                        <p class="input-group" style="margin-bottom: 0px;">

                             <input type="text" name="pc_money" value="<?php  echo $item['pc_money'];?>" id="points" class="form-control" />

                             <span class="input-group-addon">元</span>

                        </p>
                          <div class="help-block">*请输入发布一条拼车信息所需金额，不填写为免费发布</div>

                 </div>


                </div> 

                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">拼车须知</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_ueditor('pc_xuz',$item['pc_xuz']);?>
                        <span class="help-block">*请输入拼车须知</span>
                    </div>
                </div>                   
            </div>

        </div>

        <div class="form-group">
            <input type="submit" name="submit" value="提交" class="btn col-lg-3" style="color: white;background-color: #44ABF7;"/>
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
            <input type="hidden" name="id" value="<?php  echo $item['id'];?>" />
        </div>
    </form>
</div>
<script type="text/javascript">
    $(function(){
        $("#frame-2").show();
        $("#yframe-2").addClass("wyactive");
    })
</script>