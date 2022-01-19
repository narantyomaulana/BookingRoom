<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard
        
      </h1>
    </section>
    
    <section class="content">
        <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3><?php echo $freeroom ?></h3>
                  <!-- <p>Ruangan Kosong Hari Ini</p> -->
                  <p>List Ruangan</p>
                </div>
                <div class="icon">
                  <i class="ion-home"></i>
                </div>
                <a href="<?php echo base_url(); ?>freeroom" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3><?php echo $fullroom ?></h3>
                  <p>Ruangan Terisi Hari ini</p>
                </div>
                <div class="icon">
                  <i class="ion-alert-circled"></i>
                </div>
                 <a href="<?php echo base_url(); ?>fullroom" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-blue">
                <div class="inner">
                  <h3><?= $bookinglist ?></h3>
                  <p>Booking List</p>
                </div>
                <div class="icon">
                  <i class="fa fa-list"></i>
                </div>
                <a href="<?php echo base_url(); ?>bookinglist" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
          </div>
          <!-- Telegramm -->
        <div> 
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

            <a href="https://tttttt.me/putriaudina25" class="float" target="_blank">
              <i class="fa fa-telegram my-float"></i>  
            </a>
            <div class="bottomright">Contact Admin</div>
            <style>
              .float{
                position:fixed;
                width:50px;
                height:50px;
                bottom:40px;
                right:40px;
                background-color:#0088cc;
                color:#FFF;
                border-radius:40px;
                text-align:center;
                font-size:30px;
                box-shadow: 2px 2px 3px #999;
                z-index:100;
              }

              .my-float{
                margin-top:10px;
                border-width: 20px;
              }
              .bottomright{
                position: absolute;
                bottom: 10px;
                right: 14px;

                font-size: 17px;
              }
              
            </style>
          
        </div>
    </section>
</div>