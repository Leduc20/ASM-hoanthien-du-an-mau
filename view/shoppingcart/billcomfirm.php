<section class="max-w ">
    <div class="max-w-[800px] m-auto mt-5 border rounded p-6 bg-white">
        <p class="rounded-[5px] p-2 text-[35px] text-emerald-600">
            Cảm ơn đã đặt hàng
        </p>

    </div>
    <div>

    </div>
    <?php
    if(isset($bill) && is_array($bill)){
        extract($bill);

    }
    ?>
    <div class="grid grid-cols-1 max-w-[800px] m-auto mt-5 mb-5 border rounded p-6 bg-white">
        <p class="text-[19px] font-bold">Mã Đơn Hàng Của Bạn : </p>
        <div class="flex items-center rounded border border-gray-200 dark:border-gray-700 text-center">
            <p class="py-4 w-full text-[19px] font-bold text-gray-900 dark:text-gray-300">DD <?=$bill['id_bill']?></p>
            <p class="py-4 w-full text-[19px] font-bold text-gray-900 dark:text-gray-300">Ngày đặt  :<?=$bill['date_buy']?></p>
            <p class="py-4 w-full text-[19px] font-bold text-gray-900 dark:text-gray-300">Tổng đơn : <?=$bill['sum']?> VNĐ</p>
            <p class="py-4 w-full text-[19px] font-bold text-gray-900 dark:text-gray-300">PTT : <?=$bill['bill_pttt']?></p>
        </div>
    </div>

    </div>
    <div class="max-w-[800px] m-auto border rounded bg-white p-6">
        <p class="text-[19px] font-bold">Thông tin người đặt:</p>
        <form action="" method="post">
            <p class="font-bold mt-3 mb-2">Người đặt</p>
            <input class="border w-full p-2 rounded-[4px]" type="text" name="name" id="" value="<?=$bill['bill_name']?>">
            <p class="font-bold mt-3 mb-2">Địa chỉ</p>
            <input class="border w-full p-2 rounded-[4px]" type="text" name="addres" id="" value="<?=$bill['bill_address']?>">
            <p class="font-bold mt-3 mb-2">Email</p>
            <input class="border w-full p-2 rounded-[4px]" type="email" name="email" id="" value="<?=$bill['bill_email']?>">
            <p class="font-bold mt-3 mb-2">Số điện thoại</p>
            <input class="border w-full p-2 rounded-[4px]" type="text" name="phone" id="" value="<?=$bill['bill_phone']?>">
     </form>
    </div>

    </div>

    <div class="grid grid-cols-1 max-w-[800px] m-auto mt-5 mb-5 border rounded p-6 bg-white">
        <p class="text-[19px] font-bold">Phương thức thanh toán : </p>
        <div class="flex items-center rounded border border-gray-200 dark:border-gray-700 text-center">
            <p class="py-4 w-full text-[19px] font-bold text-gray-900 dark:text-gray-300"><?=$bill['bill_pttt']?></p>
        </div>
    </div>

    </div>


</section>
<div class="container mt-[50px] border rounded p-6 bg-white">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1 w-[1200px] mx-auto">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Số lượng</th>
                        <th class="text-center">Giá</th>
                        <th class="text-center">Tổng tiền</th>
                        <th class="text-center">Tổng Hóa Đơn</th>
                        <th> EDIT</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    // show_bill_ct($billct);
                        // global $img_path;
                        // $sumall = 0;
                        // $sum = 0;
                        // foreach ($bill as $show) {
                        //     echo $show;
                        //     var_dump($show);
                        //     $img = $img_path . $show['image'];
                        //     $sumall += $sum['thanhtien'];
                    
                        //     echo '
                           
                        // </tr>
                        //     <tr>
                        //     <td class="col-sm-8 col-md-6">
                        //     <div class="media">
                        //         <a class="thumbnail pull-left" href="#"> <img class="media-object w-[180px]" src="' . $img . '" "> </a>
                        //         <div class="media-body">
                        //             <h4 class="media-heading"><a href="#">' . $show['name'] . '</a></h4>
                        //             <h5 class="media-heading"> by <a href="#">Brand name</a></h5>
                        //             <!-- <span>Status: </span><span class="text-success"><strong>In Stock</strong></span> -->
                        //         </div>
                        //     </div></td>
                        //     <td class="col-sm-1 col-md-1" style="text-align: center">
                        //     <t class="col-sm-1 col-md-1 text-center w-[60px]"><strong>' . $show['soluong'] . '</strong></t>
                        //     </td>
                        //     <td class="col-sm-1 col-md-1 text-center w-[60px]"><strong>' . $show['price'] . ' VNĐ</strong></td>
                        //     <td class="col-sm-1 col-md-1 text-center w-[60px]"><strong>' . $show['thanhtien'] . ' VNĐ</strong></td>
                        //     </tr>
                        // ';
                        // }
                        // echo '
                        //      <tr>
                        //     <td>   </td>
                        //     <td>   </td>
                        //     <td>   </td>
                        //     <td><h5>Tổng tất cả</h5></td>
                        //     <td class="text-right"><h5><strong>' . $sumall . ' VNĐ</strong></h5></td>
                        // </tr>   ';
                    ?> 
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <!-- <td>
                            <a href="index.php?act=bill">
                                <input type="button" class="btn bg-sky-300 hover:bg-emerald-800 hover:text-white" value="Tiếp tục mua hàng">
                            </a>
                        </td>
                        <td>
                            <a href="index.php?act=bill">
                                <input type="button" class="btn bg-sky-300 hover:bg-emerald-800 hover:text-white" value="Đồng ý đặt hàng">
                            </a>
                        </td> -->
                        <!-- <td>
                            <a href="index.php?act=bill">
                                <input type="button" class="btn bg-sky-300 hover:bg-emerald-800 hover:text-white" value="Continue Shopping">
                            </a>
                        </td> -->
                    </tr>

                </tbody>
            </table>
        </div>
    </div>
</div>