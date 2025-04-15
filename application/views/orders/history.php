<div class="span12">
    <?php echo set_breadcrumb('<span class="divider">/</span>') ?>
    <div class="page-header">
        <h1> Order History</h1>
    </div>
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>Code</th>
                <th>Date</th>
                <th>Total</th>
                <th>Due Date</th>
                <th>Method</th>
                <th>Status</th>
                <th>Action</th>

            </tr>
        </thead>
        <?php if (!empty($orders)): ?>
            <?php $i = 1; ?>

            <?php foreach ($orders as $order): ?>



                <tr>
                    <td><?php echo $order['code']; ?></td>
                    <td><?php echo $this->general->humanDate2($order['order_date']) ?></td>
                    <td><strong><?php echo $this->cart->format_number($order['total']); ?></strong></td>
                    <td><?php echo $this->general->humanDate2($order['payment_deadline']) ?></td>
                    <td><?php echo $paymentMethods[$order['payment_method']] ?></td>
                    <td><?php echo $status[$order['status']] ?></td>
                    <td>
                        <?php if ($order['status'] == 0): ?>
                            <?php echo anchor('confirmations/add/' . $order['code'], 'Confirm'); ?>
                            |
                        <?php endif; ?>

                        <?php echo anchor('orders/detail/' . $order['code'], 'Detail'); ?>


                    </td>

                </tr>

                <?php $i++; ?>

            <?php endforeach; ?>

        <?php endif; ?>

    </table>
**Jika Status masih <b>Pending</b> Silahkan Lakukan Transfer Uang seharga yang tertera ke Rekening Admin yang tertera pada Halaman <a href="<?php echo base_url()?>index.php/pages/read/how-to-shop"> Cara Berbelanja</a><br>
*Jika sudah melakukan Pen Transferan Uang silahkan klik <b>Confirm</b> pada menu Action untuk melanjutkan transaksi<br>
**Jika Status masih <b> Waiting Approval</b> silahkan tunggu sampai Admin mengkonfirmasi transaksi anda

</div>	

