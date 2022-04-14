
<!-- Begin Page Content -->
<div class="container-fluid">
	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800 mb-4">Product Data</h1>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<a
				href="?page=product_add"
				class="btn btn-primary"
				>Add Product</a
			>
		</div>
		<div class="card-body">
            <?php
            $dbData = mysqli_query($db,"select p.id AS productsId, p.title AS productsTitle, p.price AS productsPrice, p.stock AS productsStock, 
                                        p.date_submit AS productsDate, p.img AS productsImg, p.publish AS productsPublish, c.name AS categoriesName
                                        from products p
                                        left join categories c on p.category=c.id
                                        order by p.id Desc"
                                    );
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
								<th>Photo</th>
								<th>Title</th>
								<th>Price</th>
								<th>Stock</th>
								<th>Category</th>
								<th style="width: 150px">Input date</th>
								<th>Status</th>
								<th style="width: 130px">Action</th>
							</tr>
						</thead>
						<tfoot></tfoot>
						<tbody class="data-content">
							<?php $no = 1; ?>
							<?php while($dbRow = mysqli_fetch_array($dbData)){ ?>
							<tr>
								<td><?= $no ?></td>
								<td><img style="width: 50px" src="assets/images/product/<?= $dbRow['productsImg']; ?>"><small><a href="administrator/product/add-img/<?= $data['productsId']; ?>" target="_blank" class="btn-block mt-2">Other Image</a></small></td>
								<td><?= $dbRow['productsTitle']; ?></td>
								<td><?= $dbRow['productsPrice']; ?></td>
								<td><?= $dbRow['productsStock']; ?></td>
								<td><?= $dbRow['categoriesName']; ?></td>
								<td><?= $dbRow['productsDate']; ?></td>
								<?php if($dbRow['productsPublish'] == 1){ ?>
									<td>Publish</td>
								<?php }else{ ?>
									<td>Draft</td>
								<?php } ?>
								<td>
									<a href="administrator/product/<?= $dbRow['productsId']; ?>" class="btn btn-sm btn-success"><i class="fa fa-eye"></i></a>
									<a href="administrator/product/<?= $dbRow['productsId']; ?>/edit" class="btn btn-sm btn-info"><i class="fa fa-pen"></i></a>
									<a href="administrator/delete_product/<?= $dbRow['productsId']; ?>" onclick="return confirm('Are you sure you want to delete the product?')" class="btn btn-sm btn-danger"><i class="fa fa-trash-alt"></i></a>
								</td>
							</tr>
							<?php $no++ ?>
							<?php } ?>
						</tbody>
					</table>
				</div>
				<?php }else{ ?>
				<div class="alert alert-warning" role="alert">
				Oops, the product is still empty, let's add the product now.
				</div>
				<?php } ?>
		</div>
	</div>
</div>
<!-- /.container-fluid -->
