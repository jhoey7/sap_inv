<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <script>
    var base_url = '<?php echo base_url(); ?>';
    var site_url = '<?php echo site_url(); ?>';
  </script>
  <title>{_title_}</title>
  {_headers_}

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
</head>
<body>
  <!-- Preloader -->
  <div id="preloader">
      <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
  </div>
  <section>
    <div class="leftpanel">
      <div class="logopanel">
          <h1><span>[</span> INVENTORY <span>]</span></h1>
      </div><!-- logopanel -->
    
      <div class="leftpanelinner">
        {_menus_}
        <div class="infosummary">
          <h5 class="sidebartitle">Dok. Pabean Summary</h5>    
          <ul>
            <li>
              <div class="datainfo">
                  <span class="text-muted">Pemasukan</span>
                  <h4>630, 201</h4>
              </div>
              <div id="sidebar-chart" class="chart"></div>   
            </li>
            <li>
              <div class="datainfo">
                  <span class="text-muted">Pengeluaran</span>
                  <h4>1, 332, 801</h4>
              </div>
              <div id="sidebar-chart2" class="chart"></div>   
            </li>
          </ul>
        </div><!-- infosummary -->
      </div><!-- leftpanelinner -->
  </div><!-- leftpanel -->
  
  <div class="mainpanel">
    {_header_}
    <div class="pageheader">
      {_breadcrumbs_}
    </div>
    
    <div class="contentpanel">
      <div class="row">
        {_content_}
      </div>
    </div><!-- contentpanel -->
    
  </div><!-- mainpanel -->
  
</section>
{_footers_}

<script type="text/javascript">
  jQuery("select").chosen({
    'min-width': '100px',
    'white-space': 'nowrap',
    disable_search_threshold: 10
  });
</script>
</body>
</html>
