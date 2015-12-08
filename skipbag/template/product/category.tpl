<?php echo $header; ?>
<div class="cate">
<div class="container">
  <div class="row">
      <div class="buy">
      <h2>BUY KIWI SKIP BAG</h2>
      <p>Simply choose the right size Kiwi Skip Bag from below 4 different sizes</p>
      <p>and we'll delivery it direct to your door.</p>
      <p>We also offer 3 cubic metre and 4.5 cubic metre Green Waste Only skip bags</p>
      </div>
      <?php if ($products) { ?>


        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12 col-sm-6 col-md-4 col-lg-4">
          <div class="product-thumb">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div>
              <div class="caption">
                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <p><?php echo $product['description']; ?></p>
                <?php if ($product['rating']) { ?>
                <div class="rating">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
                </div>
                <?php } ?>
                <?php if ($product['price']) { ?>
                <p class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']." (Including GST)"; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']." (Including GST)"; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>

                <button type="button" style="background-color: #F6DD3B; border: none; outline: none;" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>

      <?php } ?>
      <?php echo $content_bottom; ?>
      <?php echo $column_right; ?>
  </div>
</div>
</div>
<?php echo $footer; ?>
