<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_tcwq/template/public/ygcsslist.css">
<style type="text/css">
	.yg5_tr1>.col-md-1{
		width: 7.69%;
	}
	.accout_inp{width: 100%;height: 35px;border: 1px solid #cccccc;font-size: 14px;color: #333;}
	.czbtn{position: relative;outline: none;}
	.czbtn>.fa-sort-desc{
		font-size: 20px;
		margin-left: 2px;
		margin-top: -5px;
	}
	.czbtn:hover .czbox{
		transition: all 0.3s;
		-webkit-transition: all 0.3s;
		height: auto;
		display: block;
	}
	.czbox{
		position: absolute;
		top: 20px;
		left: -30px;
		z-index: 10;		
		height: 0px;
		overflow: hidden;
		display: none;
		transition: all 0.3s;
		-webkit-transition: all 0.3s;
	}
	.czbox>li{
		border-bottom: 1px solid #DEDEDE;
    background-color: #333;
	}
  .czbox>li:hover{
    background-color: #39485D;
  }
	.czstorespan{
		font-size: 14px;
		color: #fff;
		margin: 5px;
	}
	.czstorespan:hover{
		color: #fff;
	}
	.cztext{margin-left: 10px;}
  .czboxtop{color: #333;font-size: 20px;height: 9px;overflow: hidden;line-height: 15px;}
</style>

<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>
    <!--<li  <?php  if($type=='wait') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('store',array('type'=>wait,'state'=>1));?>">待审核</a></li>
    <li  <?php  if($type=='ok') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('store',array('type'=>ok,'state'=>2));?>">已确认</a></li>
    <li  <?php  if($type=='no') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('store',array('type'=>no,'state'=>3));?>">已拒绝</a></li>
    <li  <?php  if($type=='all') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('store',array('type'=>all));?>">全部商家</a></li>
    -->
</ul>
<div class="row ygrow">

    <div class="col-lg-12">
        <!--
    <div class="panel panel-default ygbody">
        <div class="panel-body">
            <p class="yangshi">跳转商家页面地址,id值在商家列表中获取:&nbsp;&nbsp;<a>../sellerinfo/sellerinfo?id=1</a></p>
        </div>
    </div>-->

        <!--   搜索
        <form action="" method="get" class="col-md-4">
        <input type="hidden" name="c" value="site" />
          <input type="hidden" name="a" value="entry" />
          <input type="hidden" name="m" value="zh_tcwq" />
          <input type="hidden" name="do" value="store" />

            <div class="input-group" style="width: 300px">
                <input type="text" name="keywords" class="form-control" value="<?php  echo $_GPC['keywords'];?>" placeholder="请输入动态内容或发送者">
                <span class="input-group-btn">
                    <input type="submit" class="btn btn-default" name="submit" value="查找"/>
                    <input type="hidden" name="type" value="all"/>
                </span>
            </div>

            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
        </form>
         -->
       <!--  <div class="col-md-6">
           <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
       </div> -->
    </div><!-- /.col-lg-6 -->
</div>  

    <div class="panel panel-default">
        <div class="panel-heading">
            打赏记录
        </div>
        <div class="panel-body" style="padding: 0px 15px;">
            <div class="row">
                <table class="yg5_tabel col-md-12">
                    <tr class="yg5_tr1">
                        <td style="width: 50px;">打赏ID</td>
                        <td class="col-md-1">打赏用户</td>
                        <td class="col-md-3">被打赏用户</td>
                        <td class="col-md-1">打赏时间</td>
                        <td class="col-md-">打赏金额</td>
                    </tr>
                    <?php  if(is_array($list)) { foreach($list as $key => $item) { ?>
                    <tr class="yg5_tr2">

                        <td><?php  echo $item['id'];?></td>
                        <td><?php  echo $item['name'];?></td>
                        <td><?php  echo $item['dongtai_userid'];?></td>
                        <td><?php  echo $item['dashang_money'];?></td>
                        <td><?php  echo $item['create_time'];?></td>
                   </tr>
            <?php  } } ?>
            <?php  if(empty($list)) { ?>
              <tr class="yg5_tr2">
              <td colspan="12">
                    暂无打赏记录
                </td>
            </tr>
            <?php  } ?>
      </table>
  </div>
</div>
</div>
</div>
<div class="text-right we7-margin-top">
   <?php  echo $pager;?>
</div>
<script type="text/javascript">
    $(function(){
        //进行子菜单的显示
        $("#frame-21").show();
        $("#yframe-21").addClass("wyactive");
        // ———————————————批量删除———————————————
    })
</script>