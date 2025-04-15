<div class="span12">
    <?php echo set_breadcrumb('<span class="divider">/</span>') ?>
    <div class="page-header">
        <h1> Shopping Cart</h1>
    </div>
    <?php if ($this->cart->contents()): ?>
        <?php echo form_open('carts/update'); ?>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Name</th>
                    <th>Day</th>
                    <th>Price</th>
                    <th>Total</th>
                    <th>Action</th>
                    
                </tr>
            </thead>
            <tbody>
            <div class="control-group">
                <label for="focusedInput" class="control-label">From:</label>
                <div class="controls">
                    <input type="text"  name="" value="<?php echo set_value(''); ?>" placeholder="Date" id="focusedInput" class="input-xlarge focused span6 datepicker" data-date="2012-02-15" data-date-format="yyyy-mm-dd" />
                </div>
            </div>
</script> 

</html>

</html>
            
                <?php $i = 1; ?>

                <?php foreach ($this->cart->contents() as $items): ?>

                    <?php echo form_hidden($i . '[rowid]', $items['rowid']); ?>
                    <tr>

                        <td class="muted center_text">
                            <a href="product.html">
                                <?php if ($this->cart->has_options($items['rowid']) == TRUE): ?>
                                    <?php foreach ($this->cart->product_options($items['rowid']) as $option_name => $option_value): ?>
                                        <img src="<?php echo base_url() ?>timthumb.php?src=<?php echo $option_value; ?>&h=70&w=50" title="<?php echo $items['name']; ?>" alt=""/>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </a>
                        </td>
                        <td><?php echo $items['name']; ?></td>
                        <td><?php echo form_input(array('name' => $i . '[qty]', 'value' => $items['qty'], 'class' => 'input-mini')); ?></td>
                        <td><?php echo number_format($items['price']); ?></td>
                        <td><?php echo number_format($items['subtotal']); ?></td>
                        <td><a href="<?php echo site_url('carts/delete/' . $items['rowid']); ?>" onclick="return confirm('Are you sure want to delete this?')">Delete</a></td>
                    </tr>			
                    <?php $i++; ?>

                <?php endforeach; ?>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><strong><?php echo number_format($this->cart->total()); ?></strong></td>
                </tr>		  
            </tbody>
        </table>
        <div class="row">
            <div class="span5">
                <button class="btn btn-primary" type="submit">Update</button>
            </div>		  
            <div class="span2">
                <a href="<?php echo site_url('products'); ?>" class="btn btn-primary">Continue shopping</a>
            </div>		  
            <div class="span5">
                <a href="<?php echo site_url('orders/checkout'); ?>" class="btn btn-primary pull-right">Checkout</a>
            </div>
        </div>
        <?php echo form_close(); ?>
    <?php else: ?>
        <div class="row">
            <div class="span12">
                Your shopping cart is empty !
            </div>
        </div>
        <div class="row">
            <div class="span5">
                &nbsp;
            </div>		  
            <div class="span2">
                <a href="<?php echo site_url('products'); ?>" class="btn btn-primary">&lt; Back to Shop</a>
            </div>		  
            <div class="span5">
                &nbsp;
            </div>
        </div>
        
    <?php endif; ?>
    

    


</div>