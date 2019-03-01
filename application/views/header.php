<div class="headerbar">
  <a class="menutoggle"><i class="fa fa-bars"></i></a>
  <form class="searchform" action="#" method="post">
    <input type="text" class="form-control" name="keyword" placeholder="Search here..." />
  </form>
  <div class="header-right">
    <ul class="headermenu">
      <li>
        <div class="btn-group">
          <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
            <img src="<?php echo base_url('assets/images/photos/loggeduser.png'); ?>" alt="" />
            <?php echo $this->session->userdata('NAMA'); ?>
            <span class="caret"></span>
          </button>
          <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
            <li><a href="profile.html"><i class="glyphicon glyphicon-user"></i> My Profile</a></li>
            <li><a href="#"><i class="glyphicon glyphicon-cog"></i> Account Settings</a></li>
            <li><a href="<?php echo site_url('home/signout'); ?>"><i class="glyphicon glyphicon-log-out"></i> Log Out</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div><!-- header-right -->
</div><!-- headerbar -->