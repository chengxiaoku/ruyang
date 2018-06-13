<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcss.css">
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>   
    <li><a href="<?php  echo $this->createWebUrl('jfgoods')?>">商品管理</a></li>
    <li class="active"><a href="<?php  echo $this->createWebUrl('addjfgoods')?>">添加商品</a></li>
</ul>
<div class="main">
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                内容编辑
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商品名称</label>
                    <div class="col-sm-9">
                        <input type="text" name="name" class="form-control" value="<?php  echo $info['name'];?>" />
                    </div>
                </div>
                 <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">商品分类</label>
                    <div class="col-sm-10">
                       <select class="form-control" name="type_id"> 
                    <?php  if(is_array($type)) { foreach($type as $key => $item) { ?>
                       <?php  if($item['id']==$info['type_id']) { ?>
                      <option value="<?php  echo $item['id'];?>" selected="selected"><?php  echo $item['name'];?></option>
                      <?php  } else { ?>
                      <option value="<?php  echo $item['id'];?>" ><?php  echo $item['name'];?></option>
                      <?php  } ?>
                     <?php  } } ?>
                    </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">商品类型</label>
                    <div class="col-sm-10">
                       <select class="form-control" name="type"> 

                      <option value="2" >实物</option>
 
                    </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商品图片</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_form_field_image('img', $info['img'])?>
                    </div>
                </div>
<!--                 <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">红包金额</label>
                    <div class="col-sm-9">
                        <input type="text" onkeyup="value=value.replace(/[^\d.]/g,'')" name="hb_moeny" class="form-control" value="<?php  echo $info['hb_moeny'];?>" />
                        <span class="help-block">*选择类型为余额红包时填写</span>
                    </div>
                </div> -->
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">所需积分</label>
                    <div class="col-sm-9">
                        <input type="number" name="money" class="form-control" value="<?php  echo $info['money'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商品数量</label>
                    <div class="col-sm-9">
                        <input type="number" name="number" class="form-control" value="<?php  echo $info['number'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">排序</label>
                    <div class="col-sm-9">
                        <input type="number" name="num" class="form-control" value="<?php  echo $info['num'];?>" />
                        <span class="help-block">*从小到大排序</span>
                    </div>
                </div>
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">商品简介</label>
                  <div class="col-sm-10">
                      <?php  echo tpl_ueditor('goods_details',$info['goods_details']);?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">兑换流程</label>
                  <div class="col-sm-10">
                      <?php  echo tpl_ueditor('process_details',$info['process_details']);?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">注意事项</label>
                  <div class="col-sm-10">
                      <?php  echo tpl_ueditor('attention_details',$info['attention_details']);?>
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
        // $("#frame-8").addClass("in");
        $("#frame-8").show();
        $("#yframe-8").addClass("wyactive");
    })
</script>