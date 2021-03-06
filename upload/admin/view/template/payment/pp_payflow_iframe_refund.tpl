<?php echo $header; ?><?php echo $menu; ?>
<div id="content">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right"><a href="<?php echo $cancel; ?>" class="btn btn-danger"><i class="fa fa-times"></i> <?php echo $button_cancel; ?></a></div>
      <h1><i class="fa fa-credit-card fa-lg"></i> <?php echo $heading_refund; ?></h1>
    </div>
  </div>
  <div class="container-fluid">
    <table class="table table-striped table-bordered">
      <tr>
        <td><?php echo $entry_transaction_reference ?></td>
        <td><?php echo $transaction_reference ?></td>
      </tr>
      <tr>
        <td><?php echo $entry_transaction_amount ?></td>
        <td><?php echo $transaction_amount ?></td>
      </tr>
      <tr>
        <td><?php echo $entry_refund_amount ?></td>
        <td><input type="text" value="0.00" name="amount" />
          <a class="btn btn-primary" onclick="refund()" id="button-refund"><?php echo $button_refund ?></a></td>
      </tr>
    </table>
  </div>
</div>
<script type="text/javascript"><!--
function refund() {
  var amount = $('input[name="amount"]').val();

  $.ajax({
    type: 'POST',
    dataType: 'json',
    data: {'transaction_reference': '<?php echo $transaction_reference; ?>', 'amount': amount },
    url: 'index.php?route=payment/pp_payflow_iframe/dorefund&token=<?php echo $token; ?>',

    beforeSend: function () {
      $('#button-refund').after('<span class="btn btn-primary loading"><i class="fa fa-circle-o-notch fa-spin fa-lg"></i></span>');
      $('#button-refund').hide();
    },

    success: function (data) {
      if (!data.error) {
        alert(data.success);
        $('input[name="amount"]').val('0.00');
      }

      if (data.error) {
        alert(data.error);
      }

      $('#button-refund').show();
      $('.loading').remove();
    }
  });
}
//--></script> 
<?php echo $footer; ?>