<?php
$selected = "selected='selected'";
?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-book" aria-hidden="true"></i> Absen Rapat
        
      </h1>
    </section>
    <section class="content">
        <!-- <div class="row">
            <div class="col-xs-12 text-right">
                <div class="form-group">
                    <a class="btn btn-primary" href="<?= base_url(); ?>addNewBooking"><i class="fa fa-plus" aria-hidden="true"></i> New Booking</a>
                </div>
            </div>
        </div> -->
        <form action="<?php echo base_url() ?>absen" method="POST" id="searchList">
            <div class="row form-group">
            
            <!-- &ensp; <a class="btn btn-danger" href="<?= base_url(); ?>print"> <i class="fa fa-print"></i>Print </a> &ensp;
            <a class="btn btn-primary" href="<?= base_url(); ?>addNewBooking"> <i class="fa fa-plus" aria-hidden="true"></i> Pesan Ruangan</a> -->
                <!-- <div class="col-md-3">
                    <input type="text" name="searchText" value="" class="form-control input-sm" placeholder="Search"/>
                </div>
                <div class="col-md-2">
                    <button class="btn btn-sm btn-primary btn-block searchList"> <i class="fa fa-search"></i></button>
                </div> -->
            </div>
        </form>
        <br>
        <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Booking List</h3>
                    <div class="box-tools">

                    </div>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table id="table_id" class="display">
                    <thead>
                    <tr>
                        <th>Ruangan</th>
                        <th>Waktu Mulai</th>
                        <th>Waktu Selesai</th>
                        <th>Kegiatan</th>
                        <th>Booking Date</th>
                        <th>Kontak PIC</th>
                        <th>Jumlah Peserta</th>

                        <th class="text-center">Actions</th>
                    </tr>
                </thead>
                    <tbody>

                    
                    <?php
                    if(!empty($bookingRecords))
                    {
                        foreach($bookingRecords as $record)
                        {
                    ?>
                        <td><?= $record->roomNumber ?><br>(<?= $record->floorCode ?>)<br><?= $record->sizeTitle ?></td>
                        <td><?= $record->bookStartDate ?></td>
                        <td><?= $record->bookEndDate ?></td>
                        <td><?= $record->bookingComments ?></td>
                        <td><?= $record->bookingDtm ?></td>
                        <td><?= $record->kontakpic ?></td>
                        <td><?= $record->jumlahpeserta ?></td>
                        <td class="text-center">
                          <!-- <a href="<?php echo base_url().'editOldBooking/'.$record->bookingId; ?>" class="btn btn-sm btn-info"><i class="fa fa-pencil"></i></a> -->
                          <a href="<?= base_url(); ?>absenrapat/book?id=<?=$record->bookingId?>" class="btn btn-sm btn-info">Absen</a>
                      </td>
                    </tr>

                    <?php
                        }
                    }?>
                    </tbody>
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
<script type="text/javascript">
    $(document).ready( function () {
    $('#table_id').DataTable(
        {
            "order":[[1,"desc"]]
        });
} );
</script>