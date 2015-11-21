<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?>
    <div class="row home-area">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="top-line"></div>
            <div class="home-art">The 's' discount specialist offers a</div>
            <div class="home-art">full range of cigarettes</div>
            <div class="home-art">roll-your-own, pipe twobacco, cigars</div>
            <div class="home-art">and accessories in its North Island,</div>
            <div class="home-art">New Zealand stores.</div>
            <div class="home-art-more line-to-art">At 's' discount specialist, as a specialist discount</div>
            <div class="home-art-more">twobacconist we only welcome consumers</div>
            <div class="home-art-more">of tobacco products who are</div>
            <div class="home-art-more">adults, aged 18 and above.</div>
            <div class="bottom-line line-to-art"></div>
            <div class="bottom-line line-space line-to-item"></div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="home-item">
                <div class="items">
                    <div class="items-cat"><a href="http://demo.2bacco.co.nz/index.php?route=product/category&path=61">Tobacco<br><span class="items-small">On all Collections</span></a></div>
                </div>
                <div class="space"></div>
                <div class="items">
                    <div class="items-cat"><a href="http://demo.2bacco.co.nz/index.php?route=product/category&path=60">Cigarettes<br><span class="items-small">On all Collections</span></a></div>
                </div>
                <div class="items">
                    <div class="items-cat"><a href="http://demo.2bacco.co.nz/index.php?route=product/category&path=62">Cigars<br><span class="items-small">On all Collections</span></a></div>
                </div>
                <div class="space"></div>
                <div class="items">
                    <div class="items-cat"><a href="http://demo.2bacco.co.nz/index.php?route=product/category&path=63">Accessories<br><span class="items-small">On all Collections</span></a></div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <?php echo $column_right; ?>
    </div>
</div>
<?php echo $footer; ?>