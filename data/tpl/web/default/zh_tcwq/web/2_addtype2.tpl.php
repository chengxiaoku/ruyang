<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
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

<!-- <ul class="nav nav-tabs">    
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>  
    <li><a href="<?php  echo $this->createWebUrl('type2')?>">二级信息分类管理</a></li>
    <li class="active"><a href="<?php  echo $this->createWebUrl('addtype2')?>">添加二级信息分类</a></li>
</ul> -->
<div class="main ygmain">
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                内容编辑
            </div>
            <div class="panel-body">

     <!--        <div class="form-group">
             <label class="col-xs-12 col-sm-3 col-md-2 control-label">信息分类</label>
             <div class="col-sm-9">
                <select class="form-control" name="type_id"> 
                 <?php  if(is_array($type)) { foreach($type as $key => $item) { ?>
                 <?php  if($item['id']==$info['type_id']) { ?>
                 <option value="<?php  echo $item['id'];?>" selected="selected"><?php  echo $item['type_name'];?></option>
                 <?php  } else { ?>
                 <option value="<?php  echo $item['id'];?>" ><?php  echo $item['type_name'];?></option>
                 <?php  } ?>
                 <?php  } } ?>
             </select>
         </div>
     </div> -->

                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">二级信息分类名称</label>
                    <div class="col-sm-9">
                        <input type="text" name="name" class="form-control" value="<?php  echo $info['name'];?>" />
                    </div>
                </div>
<!--                 <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">价格</label>
                    <div class="col-sm-9">
                        <input type="text" name="money" onkeyup="value=value.replace(/[^\d.]/g,'')" class="form-control" value="<?php  echo $info['money'];?>" />
                    </div>
                </div> -->
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">排序</label>
                    <div class="col-sm-9">
                        <input type="number" name="num" class="form-control" value="<?php  echo $info['num'];?>" />
                        <span class="help-block">*从小到大排序</span>
                    </div>
                </div>

                 <div class="form-group">
                    <label for="lastname" class="col-sm-2 control-label">状态</label>
                    <div class="col-sm-10">
                         <label class="radio-inline">
                            <input type="radio" id="emailwy1" name="state" value="1" <?php  if($item['state']==1 || empty($item['state'])) { ?>checked<?php  } ?> />
                            <label for="emailwy1">启用</label>
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="emailwy2" name="state" value="2" <?php  if($item['state']==2) { ?>checked<?php  } ?> />
                            <label for="emailwy2">禁用</label>
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <input type="submit" name="submit" value="提交" class="btn col-lg-3" style="color: white;background-color: #44ABF7;"/>
             <input type="hidden" name="type_id" value="<?php  echo $pid;?>" />
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
            <input type="hidden" name="id" value="<?php  echo $info['id'];?>" />
        </div>
    </form>
</div>

<script type="text/javascript">
    $(function(){
        $("#frame-1").show();
        $("#yframe-1").addClass("wyactive");
    })
</script>