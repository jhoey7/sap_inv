<div class="visible-xs hidden-sm hidden-md hidden-lg">   
  <div class="media userlogged">
      <img alt="" src="<?php echo base_url('assets/images/photos/loggeduser.png'); ?>" class="media-object">
      <div class="media-body">
          <h4><?php echo $this->session->userdata('NAMA'); ?></h4>
          <span>"Life is so..."</span>
      </div>
  </div>

  <h5 class="sidebartitle actitle">Account</h5>
  <ul class="nav nav-pills nav-stacked nav-bracket mb30">
    <li><a href="profile.html"><i class="fa fa-user"></i> <span>Profile</span></a></li>
    <li><a href="#"><i class="fa fa-cog"></i> <span>Account Settings</span></a></li>
    <li><a href="#"><i class="fa fa-question-circle"></i> <span>Help</span></a></li>
    <li><a href="signout.html"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>
  </ul>
</div>

<h5 class="sidebartitle">Navigation</h5>
<ul class="nav nav-pills nav-stacked nav-bracket">
  <?php echo $menu; ?>
  <!-- <li><a href="#"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
  <li class="nav-parent">
    <a href="#"><i class="fa fa-suitcase"></i> <span>Inventory</span></a>
    <ul class="children">
      <li><a href="<?php echo site_url('inventory/barang'); ?>"><i class="fa fa-caret-right"></i> Data Barang</a></li>
      <li><a href="<?php echo site_url('inventory/stockopname'); ?>"><i class="fa fa-caret-right"></i> Stockopname</a></li>
    </ul>
  </li>
  <li class="nav-parent">
    <a href="#"><i class="fa fa-gear"></i> <span>Referensi</span></a>
    <ul class="children">
      <li><a href="<?php echo site_url('referensi/supplier'); ?>"><i class="fa fa-caret-right"></i> Supplier</a></li>
      <li><a href="<?php echo site_url('referensi/satuan'); ?>"><i class="fa fa-caret-right"></i> Satuan</a></li>
      <li><a href="<?php echo site_url('referensi/negara'); ?>"><i class="fa fa-caret-right"></i> Negara</a></li>
    </ul>
  </li>
  <li class="nav-parent">
    <a href="#"><i class="fa fa-users"></i> <span>Users</span></a>
    <ul class="children">
      <li><a href="<?php echo site_url('users/user'); ?>"><i class="fa fa-caret-right"></i> Daftar User</a></li>
      <li><a href="<?php echo site_url('users/role'); ?>"><i class="fa fa-caret-right"></i> User Role</a></li>
    </ul>
  </li>
  <li class="nav-parent">
    <a href="#"><i class="fa fa-laptop"></i> <span>Laporan</span></a>
    <ul class="children">
      <li><a href="<?php echo site_url('report/pemasukan'); ?>"><i class="fa fa-caret-right"></i> Pemasukan</a></li>
      <li><a href="<?php echo site_url('report/pengeluaran'); ?>"><i class="fa fa-caret-right"></i> Pengeluaran</a></li>
      <li><a href="timeline.html"><i class="fa fa-caret-right"></i> Mutasi</a></li>
    </ul>
  </li> -->
</ul>