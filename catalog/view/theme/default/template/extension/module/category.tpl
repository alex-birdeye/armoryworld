<div class="list-group">
  <?php foreach ($categories as $category) { ?>
  
  <?php if($category['image']) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item active"><?php echo $category['name'];?></a>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } else { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
    <div class="row" style="position: relative">
      <div class="col-sm-4 list-group-item">
        <a href="<?php echo $category['href']; ?>" style="background-color: white; border: none"><img style="width: 100%" src="<?php echo $category['image'];?>" /></a> 
      </div>
     <div class="col-sm-8 list-group-item menu-category-name " style="display: none" >
        <div style="margin-top: 15%">
        <a href="<?php echo $category['href']; ?>" ><span><?php echo $category['name'];?></span></a> 
        </div>
      </div>
    </div> 
    <script>
      $( ".list-group" ).hover(
        function() {
          $(".menu-category-name").each(function(index){/*$(this).removeClass("hidden");*/ $(this).fadeIn()});
        }, function() {
            $(".menu-category-name").each(function(index){$(this).fadeOut()});
          }
      );
    </script>
   <?php } ?>
  
  <?php } ?>
  <?php } ?>
</div>
