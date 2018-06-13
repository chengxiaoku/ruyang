<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcss.css">
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>    
    <li ><a href="<?php  echo $this->createWebUrl('tag')?>">标签管理</a></li>
    <li class="active"><a href="<?php  echo $this->createWebUrl('addtag')?>">添加标签</a></li>
</ul>
<div class="main">
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                内容编辑
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">分类名称</label>
                    <div class="col-sm-9">
                        <div class="form-control-static col-sm-9" style="padding: 0px;">
                            <select name="typename" class="col-sm-9" style="padding: 0px 15px;">
                            <?php  if($info['typename']=='人找车') { ?>
                                <option value="人找车" selected>人找车</option>
                                <option value="车找人" >车找人</option>
                                <option value="货找车" >货找车</option>
                                <option value="车找货" >车找货</option>
                            <?php  } else if($info['typename']=='车找人') { ?>
                            <option value="人找车" >人找车</option>
                                <option value="车找人" selected>车找人</option>
                                <option value="货找车" >货找车</option>
                                <option value="车找货" >车找货</option>
                            <?php  } else if($info['typename']=='货找车') { ?>
                            <option value="人找车" >人找车</option>
                                <option value="车找人" >车找人</option>
                                <option value="货找车" selected>货找车</option>
                                <option value="车找货" >车找货</option>
                                 <?php  } else if($info['typename']=='车找货') { ?>
                            <option value="人找车" >人找车</option>
                                <option value="车找人" >车找人</option>
                                <option value="货找车" >货找车</option>
                                <option value="车找货" selected>车找货</option>
                            <?php  } else { ?>
                             <option value="人找车">人找车</option>
                                <option value="车找人" >车找人</option>
                                <option value="货找车" >货找车</option>
                                <option value="车找货" >车找货</option>
                            <?php  } ?>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">标签名称</label>
                    <div class="col-sm-9">
                        <input type="text" name="tagname"  class="form-control" value="<?php  echo $info['tagname'];?>" />
                    </div>
                </div>
                <!-- <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">排序</label>
                    <div class="col-sm-9">
                        <input type="number" name="num"  class="form-control" value="<?php  echo $info['num'];?>" />
                        *从小到大排序
                    </div>
                </div> -->

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
        $("#frame-2").show();
        $("#yframe-2").addClass("wyactive");
    })
</script>