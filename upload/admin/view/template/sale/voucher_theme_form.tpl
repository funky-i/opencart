<?php echo $header; ?><?php echo $menu; ?>
<div id="content">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-theme-voucher" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><i class="fa fa-pencil"></i> <?php echo $heading_title; ?></h1>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-theme-voucher" class="form-horizontal">
      <div class="form-group required">
        <label class="col-sm-2 control-label"><?php echo $entry_name; ?></label>
        <div class="col-sm-10">
          <?php foreach ($languages as $language) { ?>
          <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
            <input type="text" name="voucher_theme_description[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($voucher_theme_description[$language['language_id']]) ? $voucher_theme_description[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" class="form-control" />
          </div>
          <?php if (isset($error_name[$language['language_id']])) { ?>
          <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
          <?php } ?>
          <?php } ?>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_image; ?></label>
        <div class="col-sm-10">
          <?php if ($thumb) { ?>
          <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" alt="" title="" /></a>
          <?php } else { ?>
          <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><i class="fa fa-camera fa-5x"></i></a>
          <?php } ?>
          <input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
          <?php if ($error_image) { ?>
          <div class="text-danger"><?php echo $error_image; ?></div>
          <?php } ?>
        </div>
      </div>
    </form>
  </div>
</div>
<?php echo $footer; ?>