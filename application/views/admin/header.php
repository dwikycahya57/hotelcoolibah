<title> Coolibah</title>

<div id="header" class="clearfix">

    <div class="info">
        <h3>Admin Panel</h3>
    </div>
    
    <div class="menu">
        
            <ul>
				<li><a href="<?php echo site_url('/');?>" target="_blank">View Site</a></li>
                <li><a href="<?php echo site_url('admin/users/profile');?>">Profile (<?php echo $this->session->userdata('full_name')?>)</a></li>
                <li><a href="<?php echo site_url('users/logout') ?>">Logout</a></li>
                
            </ul>
        </div> 
</div>         <!--end #header-->

<div id="breadcrumbs" class="clearfix">
    <?php echo set_breadcrumb() ?>
</div>        <!--end #breadcrumbs-->
