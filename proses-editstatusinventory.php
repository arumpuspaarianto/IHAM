<?php  
   require_once('connect.php');

   	 
   	if(!empty($_POST['RFID_UID'])){
   		$RFID_UID = $_POST['RFID_UID'];
   		$NAMA_ALAT = $_POST['NAMA_ALAT'];
   		$JUMLAH = $_POST['JUMLAH'];
   		$PENANGGUNG_JAWAB = $_POST['PENANGGUNG_JAWAB'];
   		$STATUS_ASET = $_POST['STATUS_ASET'];
   		$TANGGAL_PEMINJAMAN = $_POST['TANGGAL_PEMINJAMAN'];
		$TANGGAL_PENGEMBALIAN = $_POST['TANGGAL_PENGEMBALIAN'];
		$KETERANGAN = $_POST['KETERANGAN'];
   		$id = $_POST['ID'];
		
   		$data[] = $RFID_UID;
   		$data[] = $NAMA_ALAT;
   		$data[] = $JUMLAH;
   		$data[] = $PENANGGUNG_JAWAB;
   		$data[] = $STATUS_ASET;
   		$data[] = $TANGGAL_PEMINJAMAN;
		$data[] = $TANGGAL_PENGEMBALIAN;
		$data[] = $KETERANGAN;
   		$data[] = $id;
	
		
   		$sql = "UPDATE `tb_rfid` SET RFID_UID=?,NAMA_ALAT=?,JUMLAH=?,PENANGGUNG_JAWAB=?,STATUS_ASET=?,TANGGAL_PEMINJAMAN=?,TANGGAL_PENGEMBALIAN=?,KETERANGAN=? WHERE id=?";
   		$row = $dbh->prepare($sql);
   		$row->execute($data);
		
   		echo '<script>alert("Berhasil Edit Data");window.location="index.php?halaman=status-peralatanmedis"</script>';
	   }
   
   	$id = $_GET['id'];
   	$sql = "SELECT *FROM `tb_rfid` WHERE ID= ?";
   	$row = $dbh->prepare($sql);
   	$row->execute(array($id));
   	$result = $row->fetch();
   ?>
   <!DOCTYPE HTML>
   <html>
   	<head>
   		<title>Edit - <?php echo $result['RFID_UID'];?></title>
   		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
   		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   	</head>
   	<body>
   		<div class="container">
   			 <br/>
   			 <h3>Edit - <?php echo $result['RFID_UID'];?></h3>
   			 <br/>
   			<div class="row">
   				 <div class="col-lg-6">
   					 <form action="" method="POST">
   						 <div class="form-group">
   							 <label>RFID UID</label>
   							 <input type="text" value="<?php echo $result['RFID_UID'];?>" class="form-control" name="RFID_UID">
   						 </div>
   						 <div class="form-group">
   							 <label>NAMA ALAT</label>
   							 <input type="text" value="<?php echo $result['NAMA_ALAT'];?>" class="form-control" name="NAMA_ALAT">
   						 </div>
   						 <div class="form-group">
   							 <label>JUMLAH</label>
   							 <input type="text" value="<?php echo $result['JUMLAH'];?>" class="form-control" name="JUMLAH">
   						 </div>
   						 <div class="form-group">
   							 <label>PENANGGUNG JAWAB</label>
   							 <input type="text" value="<?php echo $result['PENANGGUNG_JAWAB'];?>" class="form-control" name="PENANGGUNG_JAWAB">
   						 </div>
   						 <div class="form-group">
   							 <label>STATUS ASET</label>
   							 <input type="text" value="<?php echo $result['STATUS_ASET'];?>" class="form-control" name="STATUS_ASET">
   						 </div>
   						 <div class="form-group">
   							 <label>TANGGAL PEMINJAMAN</label>
   							 <input type="date/time" value="<?php echo $result['TANGGAL_PEMINJAMAN'];?>" class="form-control" name="TANGGAL_PEMINJAMAN">
   						 </div>
							<div class="form-group">
   							 <label>TANGGAL PENGEMBALIAN</label>
   							 <input type="date/time" value="<?php echo $result['TANGGAL_PENGEMBALIAN'];?>" class="form-control" name="TANGGAL_PENGEMBALIAN">
   						 </div>
							<div class="form-group">
   							 <label>KETERANGAN</label>
   							 <input type="text" value="<?php echo $result['KETERANGAN'];?>" class="form-control" name="KETERANGAN">
   						 </div>
   						 <input type="hidden" value="<?php echo $result['ID'];?>" name="ID">
   						 <button class="btn btn-primary btn-md" name="create"><i class="fa fa-edit"> </i> Update</button>
   					 </form>
   				  </div>
   			</div>
   		</div>
   	</body>
   </html>