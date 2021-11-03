
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-book" aria-hidden="true"></i> Ruangan Penuh
      </h1>
    </section>
    <section class="content">
        <br>
        <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Ruangan Penuh</h3>
                    <div class="box-tools">
                        
                    </div>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table class="table table-hover">
                    <tr>
                        <!-- <th>No</th> -->
                        <th>Nama PIC</th>
                        <th>Waktu Mulai</th>
                        <th>Waktu Selesai</th>
                        <th>Lantai</th>
                        <th>Kegiatan</th>
                    </tr>
                    <?php
                    if(!empty($fullroom))
                    {
                        foreach($fullroom as $record)
                        {
                    ?>
                    <tr>
                      <!-- <td><?php echo $record->roomId ?></td> -->
                     <td><?php echo $record->customerName ?></td>
                      <!-- <td><?php echo $record->roomNumber ?></td> -->
                      <td><?php echo $record->bookStartDate ?></td>
                      <td><?php echo $record->bookEndDate ?></td>
                      <td><?php echo $record->floorCode." - ".$record->floorName; ?></td>
                      <td><?php echo $record->bookingComments ?></td>
                      
                    </tr>
                    <?php
                        }
                    }
                    ?>
                  </table>
                  
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                </div>
              </div><!-- /.box -->
            </div>
        </div>
    </section>
</div>
<script type="text/javascript" src="<?= base_url() ?>assets/js/common.js" charset="utf-8"></script>
