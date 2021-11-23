<?php
 $title="Clinical Management - Pasien";
?>
<div class="modal fade" id="modal-tambah-pemindahan" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Form Pemindahan Pasien</h5>
                <i class="fas fa-times"data-bs-dismiss="modal" aria-label="Close"></i>
            </div>
            <div class="modal-body">
                <form action="addclinicalpasien.php" method="post">
                    <div class="form-group">
                        <div class="col-lg-15">
                            <label> Tag ID </label>
                            <Input type="text" name="tag_id" class="form-control input-default">
                        </div>
                    </div>
                    <div class="form-group">
                        <label> Tanggal Masuk </label>
                        <Input type="text" name="tanggal_masuk" class="form-control input-default">
                    </div>
                    <div class="form-group ">
                        <div class="col-lg-15">
                            <label class="text-label">Jenis Pasien</label>
                            <select class="form-control" name="jenis_pasien">
                                <option>Pilih Jenis Pasien</option>
                                <option>Dewasa</option>
                                <option>Anak</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label> Nama Pasien </label>
                        <Input type="text" name="nama_pasien" class="form-control input-default">
                    </div>
                    <div class="form-group">
                        <label> Dokter </label>
                        <Input type="text" name="dokter" class="form-control input-default">
                    </div>
                    <div class="form-group">
                        <label> Diagnosa </label>
                        <Input type="text" name="diagnosa" class="form-control input-default">
                    </div>
                    <div class="form-group">
                        <label> Status </label>
                        <Input type="text" name="status" class="form-control input-default">
                    </div>
                    <div class="form-group">
                        <label> Asal Ruang </label>
                        <Input type="text" name="asal_ruang" class="form-control input-default">
                    </div>
                    <div class="form-group">
                        <label> Ruang Pemindahan</label>
                        <Input type="text" name="ruang_pemindahan" class="form-control input-default">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" value="insertclinicalpasien" class="btn btn-primary" name="input">Simpan</button>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
	<div class="row">
	    <div class="col-xl-3 col-lg-6 col-sm-6">
            <div class="widget-stat card">
                <div class="card-body p-4">
                    <div class="media ai-icon">
                        <span class="mr-3 bgl-warning text-info">
							<i class="la la-baby"></i>
                        </span>
                        <div class="media-body">
                            <p class="mb-1">Pasien Bayi</p>
                            <?php 
                                $sql ="SELECT id from tb_pasien where kategori_pasien='Bayi' ";
                                $query = $dbh -> prepare($sql);
                                $query->execute();
                                $results=$query->fetchAll(PDO::FETCH_OBJ);
                                $jumlahAset=$query->rowCount();
                            ?>
                            <h4 class="mb-0"><?php echo htmlentities($jumlahAset); ?></h4>
                            <!-- <span class="badge badge-warning">+250</span> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-6 col-sm-6">
            <div class="widget-stat card">
                <div class="card-body p-4">
                    <div class="media ai-icon">
                        <span class="mr-3 bgl-warning text-info">
							<i class="la la-child"></i>
			            </span>
                        <div class="media-body">
                            <p class="mb-1">Pasien Anak</p>
                            <?php 
                                $sql ="SELECT id from tb_pasien where kategori_pasien='Anak'";
                                $query = $dbh -> prepare($sql);
                                $query->execute();
                                $results=$query->fetchAll(PDO::FETCH_OBJ);
                                $jumlahKategori=$query->rowCount();
                            ?>
                            <h4 class="mb-0"><?php echo htmlentities($jumlahKategori); ?></h4>
                            <!-- <span class="badge badge-warning">+250</span> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<div class="col-xl-3 col-lg-6 col-sm-6">
            <div class="widget-stat card">
                <div class="card-body p-4">
                    <div class="media ai-icon">
                        <span class="mr-3 bgl-warning text-info">
							<i class="la la-user"></i>
                        </span>
                        <div class="media-body">
                            <p class="mb-1">Pasien Dewasa</p>
                            <?php 
                                $sql ="SELECT id from tb_pasien where kategori_pasien='Dewasa'";
                                $query = $dbh -> prepare($sql);
                                $query->execute();
                                $results=$query->fetchAll(PDO::FETCH_OBJ);
                                $terpinjam=$query->rowCount();
                            ?>
                            <h4 class="mb-0"><?php echo htmlentities($terpinjam); ?></h4>
                            <!-- <span class="badge badge-warning">+250</span> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-6 col-sm-6">
			<div class="row">
				<div class="widget-stat card bg-success mr-4 mb-2" style="width: 100%">
					<a href="" data-toggle="modal" data-target=".modal-pindah-aset">
						<div class="card-body p-3">
                    		<div class="media ai-icon">
                       			<!-- <span class="mr-3 bgl-warning text-info">
                            		<i class="fas fa-procedures"></i>
                        		</span> -->
                        		<div class="media-body text-white">
                            		<p class="mb-1">Reservasi Kamar</p>
                            		<!-- <h4 class="mb-0">250</h4> -->
                            <!-- <span class="badge badge-warning">+250</span> -->
                        		</div>
                    		</div>
                		</div>
					</a>
				</div>
			</div>
			<div class="row">
				<div class="widget-stat card bg-success mr-4 mb-2" style="width: 100%;">
					<a href="" data-toggle="modal" data-target="#modal-tambah-pemindahan">
						<div class="card-body p-3 ">
                    		<div class="media ai-icon ">
                       			<!-- <span class="mr-3 bgl-warning text-info">
                            		<i class="fas fa-procedures"></i>
                        		</span> -->
                        		<div class="media-body text-white">
                            		<p class="mb-1">Pemindahan Pasien</p>
                            		<!-- <h4 class="mb-0">250</h4> -->
                            <!-- <span class="badge badge-warning">+250</span> -->
                        		</div>
                    		</div>
                		</div>
					</a>
				</div>
			</div>
		</div>
        <div class="col-xl-12 col-lg-12 col-xxl-12 col-sm-12">
            <div class="card" id="log-data-pasien">
            <div class="card-header">
                <h4 class="card-title">Log Data Pasien</h4>
            </div>
            <div class="card-body">
                <div class="default-tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#home"><i class="la la-baby mr-2"></i> Bayi</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#profile"><i class="la la-child mr-2"></i> Anak-Anak</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#contact"><i class="la la-user mr-2"></i> Dewasa</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="home" role="tabpanel">
                            <div class="pt-4">
                                <div class="table-responsive">
                                    <table id="example5" class="display" style="min-width: 845px">
                                        <thead>
                                            <tr>
                                                <th>Tanggal Masuk</th>
                                                <th>UID</th>
                                                <th>Nama Pasien</th>
                                                <th>Tanggal Lahir</th>
                                                <th>Alamat</th>
                                                <th>Diagnosa</th>
                                                <th>Dokter Penanggungjawab</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php 
								                $sql = "SELECT*FROM tb_pasien WHERE kategori_pasien='Bayi'";
								                $query = $dbh -> prepare($sql);
								                $query->execute();
								                $results=$query->fetchAll(PDO::FETCH_OBJ);
								                $cnt=1;
								                if($query->rowCount() > 0)
								                {
									                foreach($results as $result)
									            {               
						                    ?>  
                                            <tr>
                                                <td><?php echo htmlentities($result->tanggal_masuk);?></td>                            
                                                <td><?php echo htmlentities($result->kode_rfid);?></td>                            
                                                <td><?php echo htmlentities($result->nama);?></td>                            
                                                <td><?php echo htmlentities($result->tanggal_lahir);?></td> 
                                                <td><?php echo htmlentities($result->alamat);?></td>         
                                                <td><?php echo htmlentities($result->diagnosa);?></td>
                                                <td><?php echo htmlentities($result->dokter_penanggungjawab);?></td> 
                                                <td><?php echo htmlentities($result->status_pasien);?></td>
                                                <td>
                                                    <div class="d-flex">
                                                        <a href="#" id="<?php echo htmlentities ($result->id); ?>" class="btn btn-primary shadow btn-xs sharp mr-1 openmodaleditpasien" ><i class="fa fa-pencil" ></i></a>
											            <a href="deletePasien.php?id=<?php echo htmlentities($result->id);?>" onclick="return confirm('Are you sure you want to delete?');" class="btn btn-danger shadow btn-xs sharp" ><i class="fa fa-trash"></i></a>
									                </div>
                                                </td>                               
                                                <?php
                                                    }}
                                                ?>												
                                            </tr>                    
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    <div class="tab-pane fade" id="profile">
                        <div class="pt-4">
                        <div class="table-responsive">
                                <table id="example5" class="display" style="min-width: 845px">
                                    <thead>
                                        <tr>
                                            <th>Tanggal Masuk</th>
                                            <th>UID</th>
                                            <th>Nama Pasien</th>
                                            <th>Tanggal Lahir</th>
                                            <th>Alamat</th>
                                            <th>Diagnosa</th>
                                            <th>Dokter Penanggungjawab</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php 
								                $sql = "SELECT*FROM tb_pasien WHERE kategori_pasien='Anak'";
								                $query = $dbh -> prepare($sql);
								                $query->execute();
								                $results=$query->fetchAll(PDO::FETCH_OBJ);
								                $cnt=1;
								                if($query->rowCount() > 0)
								                {
									                foreach($results as $result)
									            {               
						                    ?>  
                                            <tr>
                                                <td><?php echo htmlentities($result->tanggal_masuk);?></td>                            
                                                <td><?php echo htmlentities($result->kode_rfid);?></td>                            
                                                <td><?php echo htmlentities($result->nama);?></td>                            
                                                <td><?php echo htmlentities($result->tanggal_lahir);?></td> 
                                                <td><?php echo htmlentities($result->alamat);?></td>         
                                                <td><?php echo htmlentities($result->diagnosa);?></td>
                                                <td><?php echo htmlentities($result->dokter_penanggungjawab);?></td> 
                                                <td><?php echo htmlentities($result->status_pasien);?></td>
                                                <td>
                                                    <div class="d-flex">
                                                        <a href="#" id="<?php echo htmlentities ($result->id); ?>" class="btn btn-primary shadow btn-xs sharp mr-1 openmodaleditpasien" ><i class="fa fa-pencil" ></i></a>
											            <a href="deletePasien.php?id=<?php echo htmlentities($result->id);?>" onclick="return confirm('Are you sure you want to delete?');" class="btn btn-danger shadow btn-xs sharp" ><i class="fa fa-trash"></i></a>
									                </div>
                                                </td>                               
                                                <?php
                                                    }}
                                                ?>												
                                            </tr>                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="contact">
                        <div class="pt-4">
                        <div class="table-responsive">
                                <table id="example5" class="display" style="min-width: 845px">
                                    <thead>
                                        <tr>
                                            <th>Tanggal Masuk</th>
                                            <th>UID</th>
                                            <th>Nama Pasien</th>
                                            <th>Tanggal Lahir</th>
                                            <th>Alamat</th>
                                            <th>Diagnosa</th>
                                            <th>Dokter Penanggungjawab</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php 
								                $sql = "SELECT*FROM tb_pasien WHERE kategori_pasien='Dewasa'";
								                $query = $dbh -> prepare($sql);
								                $query->execute();
								                $results=$query->fetchAll(PDO::FETCH_OBJ);
								                $cnt=1;
								                if($query->rowCount() > 0)
								                {
									                foreach($results as $result)
									            {               
						                    ?>  
                                            <tr>
                                                <td><?php echo htmlentities($result->tanggal_masuk);?></td>                            
                                                <td><?php echo htmlentities($result->kode_rfid);?></td>                            
                                                <td><?php echo htmlentities($result->nama);?></td>                            
                                                <td><?php echo htmlentities($result->tanggal_lahir);?></td> 
                                                <td><?php echo htmlentities($result->alamat);?></td>         
                                                <td><?php echo htmlentities($result->diagnosa);?></td>
                                                <td><?php echo htmlentities($result->dokter_penanggungjawab);?></td> 
                                                <td><?php echo htmlentities($result->status_pasien);?></td>
                                                <td>
                                                    <div class="d-flex">
                                                        <a href="#" id="<?php echo htmlentities ($result->id); ?>" class="btn btn-primary shadow btn-xs sharp mr-1 openmodaleditpasien" ><i class="fa fa-pencil" ></i></a>
											            <a href="deletePasien.php?id=<?php echo htmlentities($result->id);?>" onclick="return confirm('Are you sure you want to delete?');" class="btn btn-danger shadow btn-xs sharp" ><i class="fa fa-trash"></i></a>
									                </div>
                                                </td>                               
                                                <?php
                                                    }}
                                                ?>												
                                            </tr>                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
        <div class="col-xl-12 col-lg-12 col-xxl-12 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Riwayat Pemindahan Pasien</h4>
            	</div>
                <div class="card-body">
                <div class="table-responsive">
                                    <table class="table table-responsive-md">
                                        <thead>
                                            <tr>
                                                <th style="width:80px;" ><strong>No</strong></th>
                                                <th><strong>Kode RFID</strong></th>
                                                <th><strong>Tanggal Masuk</strong></th>
                                                <th><strong>Nama Pasien</strong></th>
                                                <th><strong>Jenis Pasien</strong></th>
                                                <th><strong>Dokter</strong></th>
                                                <th><strong>Diagnosa</strong></th>
                                                
                                                <th><strong>Asal Ruang</strong></th>
                                                <th><strong>Ruang Pemindahan</strong></th>
                                                <th><strong>Action</strong></th>
                                                <th></th>  
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php 
									$sql = "SELECT * from tb_clinical_pasien";
									$row = $dbh -> prepare($sql);
									$row->execute();
									$results=$row->fetchAll(PDO::FETCH_OBJ);
									$cnt=1;
									if($row->rowCount() > 0)
									{
										foreach($results as $result)
									{               
								?>

                                            <tr>
                                                <td><?php echo $cnt;?></td>

                                                <td><?php echo htmlentities($result->tag_id);?></td>
                                                <td><?php echo htmlentities($result->tanggal_masuk);?></td>
                                                <td><?php echo htmlentities($result->nama_pasien);?></td>
                                                <td><?php echo htmlentities($result->jenis_pasien);?></td>
                                                <td><?php echo htmlentities($result->dokter);?></td>
                                                <td><?php echo htmlentities($result->diagnosa);?></td>
                                                
                                                <td><?php echo htmlentities($result->asal_ruang);?></td>
                                                <td><?php echo htmlentities($result->ruang_pemindahan);?></td>
                                                
                                                <td>
                                                <a href="updateclinicpasien.php?id=<?php echo htmlentities($result->id);?>" class="fa fa-edit"></i></a>
                                                <a href="deleteclinicpasien.php?id=<?php echo htmlentities($result->id);?>" onclick="return confirm('Are you sure you want to delete?');" ><i class="fa fa-trash"></i></a>
												</td>
                                            </tr>

                                            <?php $cnt++;}} ?>  

                                        </tbody>
                                    </table>
                                </div>
                </div>
            </div>
        </div>
    </div>
</div>