var applicationName = "IT INVENTORY";
jQuery(window).load(function() {
   
   // Page Preloader
   jQuery('#status').fadeOut();
   jQuery('#preloader').delay(350).fadeOut(function(){
      jQuery('body').delay(350).css({'overflow':'visible'});
   });
});

jQuery(document).ready(function() {
   var interest = $('li.nav-active ul.children').find('li.active').length;
    if(interest > 0) {
      $('li.nav-active ul.children').css('display','block')
    }
   $('.btn-add').click(function(){
    var url_ = $('.data-table').attr('url-add');
    location.href = url_;
   })
   // Toggle Left Menu
   jQuery('.nav-parent > a').click(function() {
      
      var parent = jQuery(this).parent();
      var sub = parent.find('> ul');
      
      // Dropdown works only when leftpanel is not collapsed
      if(!jQuery('body').hasClass('leftpanel-collapsed')) {
         if(sub.is(':visible')) {
            sub.slideUp(200, function(){
               parent.removeClass('nav-active');
               jQuery('.mainpanel').css({height: ''});
               adjustmainpanelheight();
            });
         } else {
            closeVisibleSubMenu();
            parent.addClass('nav-active');
            sub.slideDown(200, function(){
               adjustmainpanelheight();
            });
         }
      }
      return false;
   });
   
   function closeVisibleSubMenu() {
      jQuery('.nav-parent').each(function() {
         var t = jQuery(this);
         if(t.hasClass('nav-active')) {
            t.find('> ul').slideUp(200, function(){
               t.removeClass('nav-active');
            });
         }
      });
   }
   
   function adjustmainpanelheight() {
      // Adjust mainpanel height
      var docHeight = jQuery(document).height();
      if(docHeight > jQuery('.mainpanel').height())
         jQuery('.mainpanel').height(docHeight);
   }
   
   
   // Tooltip
   jQuery('.tooltips').tooltip({ container: 'body'});
   
   // Popover
   jQuery('.popovers').popover();
   
   // Close Button in Panels
   jQuery('.panel .panel-close').click(function(){
      jQuery(this).closest('.panel').fadeOut(200);
      return false;
   });
   
   // Form Toggles
   jQuery('.toggle').toggles({on: true});
   
   jQuery('.toggle-chat1').toggles({on: false});
   
   
   // Minimize Button in Panels
   jQuery('.minimize').click(function(){
      var t = jQuery(this);
      var p = t.closest('.panel');
      if(!jQuery(this).hasClass('maximize')) {
         p.find('.panel-body, .panel-footer').slideUp(200);
         t.addClass('maximize');
         t.html('&plus;');
      } else {
         p.find('.panel-body, .panel-footer').slideDown(200);
         t.removeClass('maximize');
         t.html('&minus;');
      }
      return false;
   });
   
   
   // Add class everytime a mouse pointer hover over it
   jQuery('.nav-bracket > li').hover(function(){
      jQuery(this).addClass('nav-hover');
   }, function(){
      jQuery(this).removeClass('nav-hover');
   });
   
   
   // Menu Toggle
   jQuery('.menutoggle').click(function(){
      
      var body = jQuery('body');
      var bodypos = body.css('position');
      
      if(bodypos != 'relative') {
         
         if(!body.hasClass('leftpanel-collapsed')) {
            body.addClass('leftpanel-collapsed');
            jQuery('.nav-bracket ul').attr('style','');
            
            jQuery(this).addClass('menu-collapsed');
            
         } else {
            body.removeClass('leftpanel-collapsed chat-view');
            jQuery('.nav-bracket li.active ul').css({display: 'block'});
            
            jQuery(this).removeClass('menu-collapsed');
            
         }
      } else {
         
         if(body.hasClass('leftpanel-show'))
            body.removeClass('leftpanel-show');
         else
            body.addClass('leftpanel-show');
         
         adjustmainpanelheight();         
      }

   });
   
   reposition_searchform();
   
   jQuery(window).resize(function(){
      
      if(jQuery('body').css('position') == 'relative') {

         jQuery('body').removeClass('leftpanel-collapsed chat-view');
         
      } else {
         
         jQuery('body').removeClass('chat-relative-view');         
         jQuery('body').css({left: '', marginRight: ''});
      }
      
      reposition_searchform();
      
   });
   
   function reposition_searchform() {
      if(jQuery('.searchform').css('position') == 'relative') {
         jQuery('.searchform').insertBefore('.leftpanelinner .userlogged');
      } else {
         jQuery('.searchform').insertBefore('.header-right');
      }
   }
   
   
   // Sticky Header
   if(jQuery.cookie('sticky-header'))
      jQuery('body').addClass('stickyheader');
      
   // Sticky Left Panel
   if(jQuery.cookie('sticky-leftpanel')) {
      jQuery('body').addClass('stickyheader');
      jQuery('.leftpanel').addClass('sticky-leftpanel');
   }
   
   // Left Panel Collapsed
   if(jQuery.cookie('leftpanel-collapsed')) {
      jQuery('body').addClass('leftpanel-collapsed');
      jQuery('.menutoggle').addClass('menu-collapsed');
   }
   
   // Changing Skin
   var c = jQuery.cookie('change-skin');
   if(c) {
      jQuery('head').append('<link id="skinswitch" rel="stylesheet" href="css/style.'+c+'.css" />');
   }
});

function signin(form) {
   if(validasi(form)) {
      $.ajax({
         type: 'POST',
         url: $('[name="'+form+'"]').attr('action')+ '/ajax',
         data: $('[name="'+form+'"]').serialize(),
         dataType: 'json',
         success: function(data){
            if(typeof(data) != 'undefined'){
               var arrayDataTemp = data.returnData.split("|");
               if(arrayDataTemp[0] == 1) {
                  swalert('success',arrayDataTemp[1]);
                  setTimeout(function(){window.location.href=arrayDataTemp[2]}, 1500);
               }else{
                  swalert('error',arrayDataTemp[1]);
               }
            }
         }
      });
   }else{
      return false
   }
}

function swalert(type,message,time){
   if(time!=undefined) time = time;
   else time = 2000;
   if(type=="success"){
      swal({title:applicationName,
           text:message,
           timer:time,
           type:'success',
           showConfirmButton: false,
           html: true
      });
   }
   else if(type=="error"){
      swal({title:applicationName,
           text:message,
           timer:time,
           type:'error',
           showConfirmButton: false,
           html: true
      });   
   }
}

function validasi(form){
   var notvalid = 0;
   var notnumber = 0;
   var regNumber =/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/;
   $.each($('#'+form+" input, #"+form+" textarea, #"+form+" select"), function(n,element){
      if($(this).attr('mandatory')=="yes"){
         $(this).addClass('mandatory');
         if($(element).val()==""){
            $("#"+element.id).addClass('border-red');
            $('#'+element.id + "_chosen").addClass('border-red');
            notvalid++;
         }else{
            $("#"+element.id).removeClass('border-red');
         }
      }
      if($(this).attr('format')=="number" && (!regNumber.test($(this).val()) && $(this).val()!="")){
         $(this).addClass('format');
         notnumber++;
      }
   });

   if(notvalid>0 || notnumber >0){
      var errorString = "";
      if(notvalid > 0){
         errorString += 'Terdapat data yang harus diisi';
      }
      if(notnumber >0){
         errorString += 'There are ' + notvalid + ' data is required number';
      }
      swalert('error',errorString);
      return false;
   }else{
      return true;   
   }     
   return false;
}

function load_table() {
   var table = $('.data-table').DataTable({
      "sDom": '<"toolbar">Rfrtlip',
      "sPaginationType": "full_numbers",
      "scrollY": "200px",
      "scrollCollapse": true,
      "bSort": true,
      "processing": true,
      "serverSide": true,
      "order": [],
      "destroy": true,
      "autoWidth": false,
      "ajax": {
        "url": $('.data-table').attr('url'),
        "type": "POST"
      },
      "columnDefs": [{ 
        "targets": [ 0 ],
        "orderable": false,
      },
      {
         "targets": 'action',
         "orderable": false
      }],
   });
   var url_add = $('.data-table').attr('url-add');
   if(url_add != undefined) {
      $("div.toolbar").html('<button class="btn btn-info btn-sm tooltips btn-add" data-toggle="tooltip" title="" data-original-title="Add" url="' + $('.data-table').attr('url-add') + '"><i class="fa fa-plus"></i></button>');
   }
   //lengthmenu -> add a margin to the right and reset clear 
   $(".dataTables_length").css('clear', 'none');
   $(".dataTables_length").css('margin-right', '20px');
   $(".dataTables_info").css('margin-top','7px');
   if(url_add != undefined) {
      $(".toolbar").css('float','left');
   }

   //info -> reset clear and padding
   $(".dataTables_info").css('clear', 'none');
   $(".dataTables_info").css('padding', '0');
   jQuery("select").chosen({
      'min-width': '100px',
      'white-space': 'nowrap',
      disable_search_threshold: 10
  });
}

function load_table_report() {
   jQuery('.data-table-report').DataTable({
      "sDom": '<"toolbar">Rfrtlip',
      "sPaginationType": "full_numbers",
      "scrollY": "200px",
      "scrollCollapse": true,
      "bSort": false,
      "searching": false,
      "processing": true,
      "serverSide": true,
      "order": [],
      "destroy": true,
      "autoWidth": false,
      "ajax": {
        "url": $('.data-table-report').attr('url'),
        "type": "POST"
      },
      "columnDefs": [{ 
        "targets": [ 0 ],
        "orderable": false,
      }],
   });

   //lengthmenu -> add a margin to the right and reset clear 
   $(".dataTables_length").css('clear', 'none');
   $(".dataTables_length").css('margin-right', '20px');
   $(".dataTables_info").css('margin-top','7px');

   //info -> reset clear and padding
   $(".dataTables_info").css('clear', 'none');
   $(".dataTables_info").css('padding', '0');
}

function view_report(form) {
   oTable = jQuery('.data-table-report').DataTable({
      "sDom": '<"toolbar">Rfrtlip',
      "sPaginationType": "full_numbers",
      "scrollY": "200px",
      "scrollCollapse": true,
      "bSort": false,
      "searching": false,
      "processing": true,
      "serverSide": true,
      "destroy": true,
      "autoWidth": false,
      "ajax": {
        "url": $('[name="'+form+'"]').attr('action'),
        "type": "POST",
        "data": function(d){
            d.form = $("#" + form).serializeArray();
         }
      },
      "columnDefs": [{ 
        "targets": [ 0 ],
        "orderable": false,
      }],
   });

   //lengthmenu -> add a margin to the right and reset clear 
   $(".dataTables_length").css('clear', 'none');
   $(".dataTables_length").css('margin-right', '20px');
   $(".dataTables_info").css('margin-top','7px');

   //info -> reset clear and padding
   $(".dataTables_info").css('clear', 'none');
   $(".dataTables_info").css('padding', '0');
   jQuery("select").chosen({
    'min-width': '100px',
    'white-space': 'nowrap',
    disable_search_threshold: 10
  });
}

function time_picker() {
   $('.date').datepicker({
      todayHighlight: true,
      dateFormat: 'yy-mm-dd',
      autoclose: true
   });
}

function mutasi(form) {
   $(".view").html('');
   $("#" + form + " .btn-search").html('<img src="'+base_url+'assets/images/loaders/loader1.gif" alt="">&nbsp;Loading...');
   $.ajax({
      type: 'POST',
      url: $('[name="'+form+'"]').attr('action'),
      data: $('[name="'+form+'"]').serialize(),
      success: function(data) {
         $("#" + form + " .btn-search").html('Search');
         $(".view").html(data);
      }
   });
}

function lap_pagging(action, divid, data, frmid){  
   var formdata = '';   
   formdata = "tgl_awal="+$('#tgl_awal').val();    
   formdata += "&tgl_akhir="+$('#tgl_akhir').val();
   formdata = $("#"+frmid).serialize();
   $.ajax({
      type: 'POST',
      url: action,
      data: 'ajax=1&hal='+data+'&'+formdata,       
      success: function(html){
         $("."+divid).html(html);
      }
   });   
}

function post_data(form) { 
   if(validasi(form)){
      swal({
         title:'Confirm',
         text:'Apakah ingin proses data ?',
         type:'info',
         showCancelButton:true,
         closeOnConfirm:true,
         showLoaderOnConfirm:true,
      },function(r){
         if(r){
            $("#" + form + " .btn-save").html('<img src="'+base_url+'assets/images/loaders/loader1.gif" alt="">&nbsp;Loading...');
            $.ajax({
               type: 'POST',
               url: $('[name="'+form+'"]').attr('action'),
               data: $('[name="'+form+'"]').serialize(),
               dataType: "json",  
               success: function(data){
                  if(data.status == 'success') {
                     jQuery.gritter.add({
                        title: data.titlte,
                        text: data.message,
                        class_name: 'growl-success',
                        sticky: false,
                        time: 3000
                     });
                     setTimeout(function(){
                        location.href = data.url; 
                     }, 3000);
                     return false;
                  } else {
                     jQuery.gritter.add({
                        title: data.titlte,
                        text: data.message,
                        class_name: 'growl-danger',
                        sticky: false,
                        time: 3000
                     });
                     return false;
                  }
               }
            });
         }else{
            return false
         }
      });
   }
}

function edit_data(id, _url) {
   location.href = site_url + '/' + _url + '/' + id;
}

function print_report(tipe,jenis){
   document.frm_laporan.action = site_url + "/report/proses/"+tipe+"/"+jenis;
   document.frm_laporan.method = "POST";
   document.frm_laporan.target = "_blank";
   document.frm_laporan.submit();
   if(tipe == "pemasukan" || tipe == "pengeluaran") {
      document.frm_laporan.action = site_url + "/report/"+tipe;
   } else {
      document.frm_laporan.action = site_url + "/report/proses/"+tipe;
   }
}

function delete_data(id, _url, form) { 
   swal({
      title:'Confirm',
      text:'Apakah Anda yakin ingin menghapus data ini ?',
      type:'info',
      showCancelButton:true,
      closeOnConfirm:true,
      showLoaderOnConfirm:true,
   },function(r){
      if(r){
         $.ajax({
            type: 'POST',
            url: site_url + '/' + _url,
            data: {action : 'delete', id: id},
            dataType: "json",  
            success: function(data){
               if(data.status == 'success') {
                  jQuery.gritter.add({
                     title: data.titlte,
                     text: data.message,
                     class_name: 'growl-success',
                     sticky: false,
                     time: 3000
                  });
                  setTimeout(function(){
                     load_table();
                  }, 3000);
                  return false;
               } else {
                  jQuery.gritter.add({
                     title: data.titlte,
                     text: data.message,
                     class_name: 'growl-danger',
                     sticky: false,
                     time: 3000
                  });
                  return false;
               }
            }
         });
      }else{
         return false
      }
   });
}

function menucheckAll(formid){
   if($("#checkAllmenu").attr('checked')=="checked") var checked = "checked";
   else checked = false;
   $("#"+formid).find(':checkbox').attr('checked', checked);   
}
function menucheckParent(formid,id){
   if($("#checkmenuParent_"+id).attr('checked')=="checked") var checked = true;
   else checked = false;
   $("#"+formid + ' #checkmenuChild_'+id).attr('checked',checked);   
}
function menucheckChild(formid,id){ 
   var numchecked = 0;
   $(".checkmenuChild_"+id).each(function(index, element){
      if($(this).attr('checked')=='checked'){
         numchecked++;
      }    
    });
   if(numchecked>0){
      $("#"+formid).find('#checkmenuParent_'+id).attr('checked',true);  
   }else{      
      $("#"+formid).find('#checkmenuParent_'+id).attr('checked',false);    
   }
}

function Autocomp(id,form){
   if(typeof(form)=='undefined'){var formid=""; }else{ var formid = "#"+form;}
   $(formid+" #"+id).autocomplete($(formid+" #"+id).attr('url'), {width: 226, selectFirst: false});
   $(formid+" #"+id).result(function(event, data, formatted){
      if(data){
         $(this).val(data[1]);
         var m = $(this).attr("urai").split(";");
         var a = 2;
         for(var c=0;c<(m.length)-1;c++){
            var tipe = $("#"+m[c]).get(0).tagName;
            if(tipe=='INPUT'){
               $(formid+' #'+m[c]).val(data[a]);
            }else{
               $(formid+' #'+m[c]).html(data[a]);
            }
            a++;
         }
      }
   });   
}

$('.btn-add-pemusnahan').on('click',function() {
   var Mathrandom = Math.floor(Math.random()*1001);
   var $tr    = $(this).closest('#tr_1');
   var $clone = $tr.clone().attr('id','tr_' + Mathrandom);
   $clone.find('#KODE_BARANG_1').attr('id','KODE_BARANG_' + Mathrandom).attr('urai','UR_BRG_'+Mathrandom+';JNS_BRG_'+Mathrandom+';KD_SATUAN_'+Mathrandom+';UR_JNS_'+Mathrandom+';');
   $clone.find('#UR_BRG_1').attr('id','UR_BRG_' + Mathrandom);
   $clone.find('#UR_JNS_1').attr('id','UR_JNS_' + Mathrandom);
   $clone.find('#JNS_BRG_1').attr('id','JNS_BRG_' + Mathrandom);
   $clone.find('#KONDISI_BARANG_1').attr('id','KONDISI_BARANG_' + Mathrandom);
   $clone.find('#JML_BARANG_1').attr('id','JML_BARANG_' + Mathrandom);
   $clone.find('#KD_SATUAN_1').attr('id','KD_SATUAN_' + Mathrandom);
   $clone.find('.btn-add-pemusnahan').removeClass().addClass('btn btn-danger btn-delete-pemusnahan').find("i").removeClass().addClass('fa fa-trash-o');
   $clone.find('.btn-delete-pemusnahan').attr('onclick', 'delete_row('+Mathrandom+')');
   $clone.find(':text').val('');
   $tr.after($clone);
});

function delete_row(id) {
  $('#tr_' +id)
    .children('td, th')
    .animate({ padding: 0 })
    .wrapInner('<div />')
    .children()
    .slideUp(function() { $(this).closest('tr').remove(); });
}

function blank_print(id, _url) {
   window.open(site_url + '/' + _url + '/' + id);
}

function popup_view(id, _url) {
   $.ajax({
      type: "POST",
      url: site_url + '/' + _url,
      dataType: "json",
      data: {
         'id': id
      },
      success: function(msg) {
         $('#div-modal #div-title').html(msg.title);
         $('#div-modal .modal-body').html(msg.data);
         $('#div-modal').modal('show'); 
      }
   });
}