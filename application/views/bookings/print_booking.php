<!DOCTYPE html>
<html>
<head>
	<title>Print</title>
</head>
<body>
	<table>
		<tr>
			<th>Nama</th>
			<th>Waktu Mulai</th>
			<th>Waktu Selesai</th>
			<th>Ruangan</th>
			<th>Kegiatan</th>
			<th>Tanggal Pemesanan</th>
			<th>Kontak PIC</th>
		</tr>
		<?php
		$no=1;
		foreach ($booking as $bkg): ?>
			
		<tr>
			<td><?= $bkg->customerName ?></td>
            <td><?= $bkg->bookStartDate ?></td>
            <td><?= $bkg->bookEndDate ?></td>
            <td><?= $bkg->roomNumber ?><br>(<?= $bkg->floorCode ?>)<br><?= $bkg->sizeTitle ?></td>
            <td><?= $bkg->bookingComments ?></td>
            <td><?= $bkg->bookingDtm ?></td>
            <td><?= $bkg->kontakpic ?></td>
		</tr>

		<?php endforeach; ?>
	</table>
<script type="text/javascript">
	window.print();
</script>

</body>
</html>