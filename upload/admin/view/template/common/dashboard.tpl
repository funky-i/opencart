<?php echo $header; ?><?php echo $menu; ?>
<div id="content">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="page-header">
    <div class="container-fluid">
      <h1><i class="fa fa-dashboard"></i> <?php echo $heading_title; ?></h1>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_install) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_install; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="row">
      <div class="col-sm-3">
        <div class="tile">
          <div class="tile-heading"><?php echo $text_order_total; ?></div>
          <div class="tile-body"> <i class="fa fa-shopping-cart"></i>
            <h2 class="pull-right"><?php echo $order_total; ?></h2>
          </div>
          <div class="tile-footer"><a href="<?php echo $order; ?>"><?php echo $text_view; ?></a></div>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="tile">
          <div class="tile-heading"><?php echo $text_sale_total; ?></div>
          <div class="tile-body"> <i class="fa fa-credit-card"></i>
            <h2 class="pull-right"><?php echo $sale_total; ?></h2>
          </div>
          <div class="tile-footer"><a href="<?php echo $sale; ?>"><?php echo $text_view; ?></a></div>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="tile">
          <div class="tile-heading"><?php echo $text_customer_total; ?></div>
          <div class="tile-body"> <i class="fa fa-user"></i>
            <h2 class="pull-right"><?php echo $customer_total; ?></h2>
          </div>
          <div class="tile-footer"><a href="<?php echo $customer; ?>"><?php echo $text_view; ?></a></div>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="tile">
          <div class="tile-heading"><?php echo $text_online_total; ?></div>
          <div class="tile-body"> <i class="fa fa-eye"></i>
            <h2 class="pull-right"><?php echo $online_total; ?></h2>
          </div>
          <div class="tile-footer"><a href="<?php echo $online; ?>"><?php echo $text_view; ?></a></div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-6">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title"><i class="fa fa-eye"></i> <?php echo $text_map; ?></h3>
          </div>
          <div class="panel-body">
            <div id="vmap" style="width: 100%; height: 260px;"></div>
          </div>
        </div>
      </div>
      <div class="col-sm-6">
        <div class="panel panel-default">
          <div class="panel-heading">
            <div class="pull-right"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-calendar"></i> <i class="caret"></i></a>
              <ul id="range" class="dropdown-menu dropdown-menu-right">
                <li><a href="day"><?php echo $text_day; ?></a></li>
                <li><a href="week"><?php echo $text_week; ?></a></li>
                <li class="active"><a href="month"><?php echo $text_month; ?></a></li>
                <li><a href="year"><?php echo $text_year; ?></a></li>
              </ul>
            </div>
            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> <?php echo $text_sale; ?></h3>
          </div>
          <div class="panel-body">
            <div id="chart-sale" class="chart" style="width: 100%; height: 260px;"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-4">
        <div class="panel panel-primary">
          <div class="panel-heading">
            <h3 class="panel-title">
            <i class="fa fa-calendar"></i> <?php echo $text_activity; ?>
            </h13>
          </div>
          <ul class="list-group">
            <?php if ($activities) { ?>
            <?php foreach ($activities as $activity) { ?>
            <li class="list-group-item"><?php echo $activity['comment']; ?><br />
              <small class="text-muted"><i class="fa fa-clock-o"></i> <?php echo $activity['date_added']; ?></small></li>
            <?php } ?>
            <?php } else { ?>
            <li class="list-group-item text-center"><?php echo $text_no_results; ?></li>
            <?php } ?>
          </ul>
        </div>

        <div class="panel panel-success">
          <div class="panel-heading">
            <h3 class="panel-title">
            <i class="fa fa-calendar"></i> <?php echo $text_activity; ?>
            </h13>
          </div>
          <ul class="list-group">
            <?php if ($activities) { ?>
            <?php foreach ($activities as $activity) { ?>
            <li class="list-group-item"><?php echo $activity['comment']; ?><br />
              <small class="text-muted"><i class="fa fa-clock-o"></i> <?php echo $activity['date_added']; ?></small></li>
            <?php } ?>
            <?php } else { ?>
            <li class="list-group-item text-center"><?php echo $text_no_results; ?></li>
            <?php } ?>
          </ul>
        </div>
        
        
                <div class="panel panel-info">
          <div class="panel-heading">
            <h3 class="panel-title">
            <i class="fa fa-calendar"></i> <?php echo $text_activity; ?>
            </h13>
          </div>
          <ul class="list-group">
            <?php if ($activities) { ?>
            <?php foreach ($activities as $activity) { ?>
            <li class="list-group-item"><?php echo $activity['comment']; ?><br />
              <small class="text-muted"><i class="fa fa-clock-o"></i> <?php echo $activity['date_added']; ?></small></li>
            <?php } ?>
            <?php } else { ?>
            <li class="list-group-item text-center"><?php echo $text_no_results; ?></li>
            <?php } ?>
          </ul>
        </div>
        
                <div class="panel panel-warning">
          <div class="panel-heading">
            <h3 class="panel-title">
            <i class="fa fa-calendar"></i> <?php echo $text_activity; ?>
            </h13>
          </div>
          <ul class="list-group">
            <?php if ($activities) { ?>
            <?php foreach ($activities as $activity) { ?>
            <li class="list-group-item"><?php echo $activity['comment']; ?><br />
              <small class="text-muted"><i class="fa fa-clock-o"></i> <?php echo $activity['date_added']; ?></small></li>
            <?php } ?>
            <?php } else { ?>
            <li class="list-group-item text-center"><?php echo $text_no_results; ?></li>
            <?php } ?>
          </ul>
        </div> 
        
                        <div class="panel panel-danger">
          <div class="panel-heading">
            <h3 class="panel-title">
            <i class="fa fa-calendar"></i> <?php echo $text_activity; ?>
            </h13>
          </div>
          <ul class="list-group">
            <?php if ($activities) { ?>
            <?php foreach ($activities as $activity) { ?>
            <li class="list-group-item"><?php echo $activity['comment']; ?><br />
              <small class="text-muted"><i class="fa fa-clock-o"></i> <?php echo $activity['date_added']; ?></small></li>
            <?php } ?>
            <?php } else { ?>
            <li class="list-group-item text-center"><?php echo $text_no_results; ?></li>
            <?php } ?>
          </ul>
        </div>        
      </div>
      <div class="col-sm-8">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title"><i class="fa fa-shopping-cart"></i> <?php echo $text_recent; ?></h3>
          </div>
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <td class="text-right"><?php echo $column_order_id; ?></td>
                  <td><?php echo $column_customer; ?></td>
                  <td><?php echo $column_status; ?></td>
                  <td><?php echo $column_date_added; ?></td>
                  <td class="text-right"><?php echo $column_total; ?></td>
                  <td class="text-right"><?php echo $column_action; ?></td>
                </tr>
              </thead>
              <tbody>
                <?php if ($orders) { ?>
                <?php foreach ($orders as $order) { ?>
                <tr>
                  <td class="text-right"><?php echo $order['order_id']; ?></td>
                  <td><?php echo $order['customer']; ?></td>
                  <td><?php echo $order['status']; ?></td>
                  <td><?php echo $order['date_added']; ?></td>
                  <td class="text-right"><?php echo $order['total']; ?></td>
                  <td class="text-right"><a href="<?php echo $order['view']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="btn btn-info"><i class="fa fa-eye"></i></a></td>
                </tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                  <td class="text-center" colspan="6"><?php echo $text_no_results; ?></td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="view/javascript/jquery/flot/jquery.flot.js"></script> 
<script type="text/javascript" src="view/javascript/jquery/flot/jquery.flot.resize.min.js"></script>
<link type="text/css" href="view/javascript/jquery/jqvmap/jqvmap.css" rel="stylesheet" media="screen" />
<script type="text/javascript" src="view/javascript/jquery/jqvmap/jquery.vmap.js"></script> 
<script type="text/javascript" src="view/javascript/jquery/jqvmap/maps/jquery.vmap.world.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	$.ajax({
		type: 'get',
		url: 'index.php?route=common/dashboard/map&token=<?php echo $token; ?>',
		dataType: 'json',
		success: function(json) {
			data = [];
						
			for (i in json) {
				data[i] = json[i]['total'];
			}
					
			$('#vmap').vectorMap({
				map: 'world_en',
				backgroundColor: '#FFFFFF',
				borderColor: '#FFFFFF',
				color: '#9FD5F1',
				hoverOpacity: 0.7,
				selectedColor: '#666666',
				enableZoom: true,
				showTooltip: true,
				values: data,
				normalizeFunction: 'polynomial',
				onLabelShow: function(event, label, code) {
					if (json[code]) {
						label.html('<strong>' + label.text() + '</strong><br />' + '<?php echo $text_order_total; ?>: ' + json[code]['total'] + '<br />' + '<?php echo $text_sale_total; ?>: ' + json[code]['amount']);
					}
				}
			});			
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});			
});

$('#range a').on('click', function(e) {
	e.preventDefault();
	
	$(this).parent().parent().find('li').removeClass('active');
	
	$(this).parent().addClass('active');
	
	// Sales
	$.ajax({
		type: 'get',
		url: 'index.php?route=common/dashboard/sale&token=<?php echo $token; ?>&range=' + $(this).attr('href'),
		dataType: 'json',
		success: function(json) {
			var option = {	
				shadowSize: 0,
				colors: ['#9FD5F1', '#1065D2'],
				bars: { 
					show: true,
					fill: true,
					lineWidth: 1
				},
				grid: {
					backgroundColor: '#FFFFFF',
					hoverable: true
				},
				points: {
					show: false
				},
				xaxis: {
					show: true,
            		ticks: json['xaxis']
				}
			}
			
			$.plot('#chart-sale', [json['order'], json['customer']], option);	
					
			$('#chart-sale').bind('plothover', function(event, pos, item) {
				$('.tooltip').remove();
			  
				if (item) {
					$('<div id="tooltip" class="tooltip top in"><div class="tooltip-arrow"></div><div class="tooltip-inner">' + item.datapoint[1].toFixed(2) + '</div></div>').prependTo('body');
					
					$('#tooltip').css({
						position: 'absolute',
						left: item.pageX - ($('#tooltip').outerWidth() / 2),
						top: item.pageY - $('#tooltip').outerHeight(),
						pointer: 'cusror'
					}).fadeIn('slow');	
					
					$('#chart-sale').css('cursor', 'pointer');		
			  	} else {
					$('#chart-sale').css('cursor', 'auto');
				}
			});
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});

$('#range .active a').trigger('click');
//--></script> 
<?php echo $footer; ?>