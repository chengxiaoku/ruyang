<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcss.css">
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>    
    <li ><a href="<?php  echo $this->createWebUrl('top')?>">帖子置顶管理</a></li>
    <li class="active"><a href="<?php  echo $this->createWebUrl('addtop')?>">添加帖子置顶</a></li>
</ul>
<div class="main">
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                内容编辑
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">置顶期限</label>
                    <div class="col-sm-9">
                            <select name="type" class="col-md-5">
                            <?php  if($info['type']==1) { ?>
                                <option value="1" selected>一天</option>
                                <option value="2" >一周</option>
                                <option value="3" >一个月</option>
                            <?php  } else if($info['type']==2) { ?>
                            <option value="1" >一天</option>
                            <option value="2" selected>一周</option>
                             <option value="3" >一个月</option>
                            <?php  } else if($info['type']==3) { ?>
                            <option value="1" >一天</option>
                            <option value="2">一周</option>
                            <option value="3" selected>一个月</option>
                            <?php  } else { ?>
                            <option value="1">一天</option>
                            <option value="2">一周</option>
                            <option value="3">一个月</option>
                            <?php  } ?>
                            </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">价格</label>
                    <div class="col-sm-9">
                        <input type="text" name="money" onkeyup="value=value.replace(/[^\d.]/g,'')" class="form-control" value="<?php  echo $info['money'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">排序</label>
                    <div class="col-sm-9">
                        <input type="number" name="num"  class="form-control" value="<?php  echo $info['num'];?>" />
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
        $("#frame-1").show();
        $("#yframe-1").addClass("wyactive");
    })
</script>