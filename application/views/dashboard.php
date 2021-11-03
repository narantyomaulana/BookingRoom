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
                  <p>List Ruangan Hari Ini</p>
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
    </section>
</div>