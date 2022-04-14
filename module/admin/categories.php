<?php
    if(isset($_POST['submit_category'])){
        $cKategoriName = $_POST['cKategoriName'];
        $cKategoriIcon = $_POST['cKategoriIcon'];
        mysqli_query($db,"insert into categories (name,icon) values ('$cKategoriName','$cKategoriIcon')");
        echo "<script>alert('Data Disimpan');</script>";
        header("location:?page=categories");
    }
?>
<!-- Begin Page Content -->
<div class="container-fluid">
	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800 mb-4">Category data</h1>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<a
				href="#"
				class="btn btn-primary"
				data-toggle="modal"
				data-target="#addCategory"
				>Add Category</a
			>
		</div>
		<div class="card-body">
            <?php 
            $dbData = mysqli_query($db,"select * from categories");
            if(mysqli_num_rows($dbData) > 0){ ?>
			<div class="table-responsive">
				<table
					class="table table-bordered"
					id="dataTable"
					width="100%"
					cellspacing="0"
				>
					<thead>
						<tr>
							<th>#</th>
							<th>Icon</th>
							<th>Name</th>
                            <th>Slug</th>
                            <th>Action</th>
						</tr>
					</thead>
					<tfoot></tfoot>
					<tbody class="data-content">
                        <?php $no = 1 ?>
						<?php while($dbRow = mysqli_fetch_array($dbData)){?>
						<tr>
                            <td><?= $no ?></td>
                            <td><img style="width: 50px" src="assets/images/icon/<?= $dbRow['icon']; ?>"></td>
                            <td><?= $dbRow['name']; ?></td>
                            <td><?= $dbRow['slug']; ?></td>
                            <td>
                                <a href="administrator/category/<?= $dbRow['id']; ?>" class="btn btn-sm btn-info"><i class="fa fa-pen"></i></a>
                                <a href="administrator/deleteCategory/<?= $dbRow['id']; ?>" onclick="return confirm('Are you sure you want to delete a category? All products in this category will be deleted as well')" class="btn btn-sm btn-danger"><i class="fa fa-trash-alt"></i></a>
                            </td>
                        </tr>
                        <?php $no++ ?>
                        <?php } ?>
					</tbody>
				</table>
			</div>
			<?php }else{ ?>
			<div class="alert alert-warning" role="alert">
			Oops, the category is still empty, let's add a category now.
			</div>
            <?php } ?>
		</div>
	</div>
</div>
<!-- /.container-fluid -->

<!-- Modal Add Category -->
<div
	class="modal fade"
	id="addCategory"
	tabindex="-1"
	role="dialog"
	aria-labelledby="exampleModalLabel"
	aria-hidden="true"
>
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Add Category</h5>
				<button
					type="button"
					class="close"
					data-dismiss="modal"
					aria-label="Close"
				>
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form
					action=""
					method="post"
					enctype="multipart/form-data"
				>
					<div class="form-group">
						<label for="name">Category Name</label>
						<input
							type="text"
							class="form-control"
							id="name"
							name="cKategoriName"
							autocomplete="off"
							required
						/>
					</div>
					<div class="form-group">
						<label for="icon">Category Icon</label>
						<input
							type="file"
							class="form-control"
							required
							name="cKategoriIcon"
							id="icon"
						/>
						<small id="iconHelp" class="form-text text-muted"
							>Recommended icon size 100x100 px</small
						>
					</div>
					<button type="submit" name="submit_category" class="btn btn-primary" id="btnAddCategory">
					Add
					</button>
				</form>
			</div>
		</div>
	</div>
</div>
