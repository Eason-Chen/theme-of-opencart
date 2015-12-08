<?php echo $header; ?>
<div class="cate">
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1 class="text-center" style="text-transform: uppercase;"><?php echo $heading_title; ?></h1>
      <div class="text-center">
        <div style="border:1px solid #000; margin-top:15px; padding: 5px 15px; display:inline-block;">BY PHONE</div>
        <div>0800 108 208</div>
        <div>09-2741548</div>
        <div style="border:1px solid #000; margin-top:15px; padding: 5px 15px; display:inline-block;">BY EMAIL</div>
        <div>sales@skipbag.co.nz</div>
        <div style="border:1px solid #000; margin-top:15px; padding: 5px 15px; display:inline-block;">REQUEST A CALLBACK</div>
      </div>
      <?php if ($locations) { ?>
      <h3><?php echo $text_store; ?></h3>
      <div class="panel-group" id="accordion">
        <?php foreach ($locations as $location) { ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
            <div class="panel-body">
              <div class="row">
                <?php if ($location['image']) { ?>
                <div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
                <?php } ?>
                <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br />
                  <address>
                  <?php echo $location['address']; ?>
                  </address>
                  <?php if ($location['geocode']) { ?>
                  <a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=en&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                  <?php } ?>
                </div>
                <div class="col-sm-3"> <strong><?php echo $text_telephone; ?></strong><br>
                  <?php echo $location['telephone']; ?><br />
                  <br />
                  <?php if ($location['fax']) { ?>
                  <strong><?php echo $text_fax; ?></strong><br>
                  <?php echo $location['fax']; ?>
                  <?php } ?>
                </div>
                <div class="col-sm-3">
                  <?php if ($location['open']) { ?>
                  <strong><?php echo $text_open; ?></strong><br />
                  <?php echo $location['open']; ?><br />
                  <br />
                  <?php } ?>
                  <?php if ($location['comment']) { ?>
                  <strong><?php echo $text_comment; ?></strong><br />
                  <?php echo $location['comment']; ?>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <script type="text/javascript">
        $(function() {
          $('#sendBtn2').click(function(e){
            e.preventDefault();
            $.post('send2.php',$('#sendform2').serialize(),function(data){
              if(data.error==1){
                $.fancybox({
                  'padding' : 0,
                  'margin'  : 0,
                  'autoScale' : false,
                  'content' : '<div class="form_message">Please fill in a valid email.</div>'
                });
              }
              else if(data.error==2){
                $.fancybox({
                  'padding' : 0,
                  'margin'  : 0,
                  'autoScale' : false,
                  'content' : '<div class="form_message">Please fill in all fields.</div>'
                });
              }
              else if(data.error==3){
                $.fancybox({
                  'padding' : 0,
                  'margin'  : 0,
                  'autoScale' : false,
                  'content' : '<div class="form_message">Please fill in a valid phone number.</div>'
                });
              }
              else if(data.error==4){
                $.fancybox({
                  'padding' : 20,
                  'margin'  : 0,
                  'autoScale' : false,
                  'content' : '<div class="form_message">Sorry, please try again later.</div>'
                });
              }
              else if(data.error==5){
                $.fancybox({
                  'padding' : 20,
                  'margin'  : 0,
                  'autoScale' : false,
                  'content' : '<div class="form_message">Thank you for your feedback.</div>'
                });
              }
            }, 'json');
          });
        });
      </script>
      <form action="send2.php" method="post" id="sendform2" class="form-horizontal">
        <fieldset>
          <div class="col-md-2"></div>
          <div class="col-md-8 text-center">
          <div class="form-group required">
            <label class="col-sm-12 control-label"><?php echo $entry_name; ?></label>
            <div class="col-sm-12">
              <input type="text" name="name" class="form-control" />
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-12 control-label"><?php echo $entry_email; ?></label>
            <div class="col-sm-12">
              <input type="text" name="email" class="form-control" />
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-12 control-label" for="input-email">Phone Number</label>
            <div class="col-sm-12">
              <input type="text" name="phone" class="form-control" />
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-12 control-label"><?php echo $entry_enquiry; ?></label>
            <div class="col-sm-12">
              <textarea name="message" rows="10" class="form-control"><?php echo $enquiry; ?></textarea>
            </div>
          </div>
          <?php if ($site_key) { ?>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                <?php if ($error_captcha) { ?>
                  <div class="text-danger"><?php echo $error_captcha; ?></div>
                <?php } ?>
              </div>
            </div>
          <?php } ?></div>
          <div class="col-md-2"></div>
        </fieldset>
        <div class="">
          <div class="col-md-2"></div>
          <div class="col-md-8">
            <div class="buttons">
          <div class="">
            <input class="btn btn-primary" id="sendBtn2" style="width:100%;" type="submit" value="<?php echo $button_submit; ?>" />
          </div>
        </div>
          </div>
          <div class="col-md-2"></div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
</div>
<?php echo $footer; ?>
