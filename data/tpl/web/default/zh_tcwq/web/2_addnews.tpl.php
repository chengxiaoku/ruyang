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

<ul class="nav nav-tabs">    
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>  
    <li><a href="<?php  echo $this->createWebUrl('news')?>">公告管理</a></li>
    <li class="active"><a href="<?php  echo $this->createWebUrl('addnews')?>">添加公告</a></li>
</ul>
<div class="main">
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <!--<input type="hidden" name="parentid" value="<?php  echo $parent['id'];?>" />-->
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                内容编辑
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-md-2 control-label">公告类型</label>
                    <div class="col-md-9">
                        <select name="type" class="col-md-5">
                            <?php  if($info['type']==1) { ?>
                            <option value="1" selected>首页公告</option>
                            <option value="2" >商家页面公告</option>
                            <option value="3" >拼车页面公告</option>
                            <option value="4" >分类页面公告</option>
                            <?php  } else if($info['type']==2) { ?>
                            <option value="1" >首页公告</option>
                            <option value="2" selected>商家页面公告</option>
                             <option value="3" >拼车页面公告</option>
                             <option value="4" >分类页面公告</option>
                            <?php  } else if($info['type']==3) { ?>
                            <option value="1" >首页公告</option>
                            <option value="2" >商家页面公告</option>
                            <option value="3" selected>拼车页面公告</option>
                            <option value="4" >分类页面公告</option>
                            <?php  } else if($info['type']==4) { ?>
                            <option value="1" >首页公告</option>
                            <option value="2" >商家页面公告</option>
                            <option value="3" >拼车页面公告</option>
                            <option value="4" selected>分类页面公告</option>
                            <?php  } else { ?>
                            <option value="1">首页公告</option>
                            <option value="2">商家页面公告</option>
                             <option value="3">拼车页面公告</option>
                             <option value="4" >分类页面公告</option>
                            <?php  } ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label">标题</label>
                    <div class="col-md-9">
                        <input type="text" name="title" class="form-control" value="<?php  echo $info['title'];?>" />
                    </div>
                </div> 
                <div class="form-group">
                    <label class="col-md-2 control-label">排序</label>
                    <div class="col-md-9">
                        <input type="text" name="num" class="form-control" value="<?php  echo $info['num'];?>" />
                        <span>*从小到大排序</span>
                    </div>
                </div>
              
                <div class="form-group">
                    <label class="col-md-2 control-label">详情</label>
                    <div class="col-md-9"><?php  echo tpl_ueditor('details',$info['details']);?></div>
                </div>
                <?php  if($system['many_city']==2) { ?>
                <div class="form-group">
                    <label class="col-md-2 control-label" style="margin-right: 15px;">所属城市</label>
                    <select class="col-md-8" name="cityname">
                    <option value="全国版" selected="selected">全国版</option>
                         <?php  if(is_array($city)) { foreach($city as $key => $item) { ?>
                             <?php  if($item['cityname']==$info['cityname']) { ?>
                             <option value="<?php  echo $item['cityname'];?>" selected="selected"><?php  echo $item['cityname'];?></option>
                             <?php  } else { ?>
                             <option value="<?php  echo $item['cityname'];?>" ><?php  echo $item['cityname'];?></option>
                             <?php  } ?>
                         <?php  } } ?>
                    </select>
                </div> 
                <?php  } ?>
                <div class="form-group">
                    <label class="col-md-2 control-label">状态</label>
                    <div class="col-md-9">
                        <label class="radio-inline">
                            <input type="radio" id="emailwy1" name="state" value="1" <?php  if($info['state']==1 || empty($info['state'])) { ?>checked<?php  } ?> />
                            <label for="emailwy1">启用</label>
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="emailwy2" name="state" value="2" <?php  if($info['state']==2) { ?>checked<?php  } ?> />
                            <label for="emailwy2">禁用</label>
                        </label>    
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
        $("#frame-6").show();
        $("#yframe-6").addClass("wyactive");
    })
</script>