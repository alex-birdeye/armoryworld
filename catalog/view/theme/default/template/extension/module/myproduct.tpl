<!-- <div class="container"> -->
   <div class="row">
   
    <div id="content" class="<?php echo $class; ?>">
      <h2><?php echo $heading_title; ?></h2>

      <?php if ($products) { ?>
      
  <!--    <div class="row">-->
  <!--      <div class="col-md-4">-->
  <!--        <div class="btn-group hidden-xs">-->
  <!--          <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>-->
  <!--          <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>-->
  <!--        </div>-->
  <!--      </div>-->
  <!--    </div>-->
  <!--    <br />-->
      
      
      <!--  <?php //foreach ($products as $product) { ?> -->
      <div class="row products">
      <?php $lm = 0; if(!empty($_GET['lm'])) {$lm = $_GET['lm'];}?>
      <?php //if(empty($lm)) {$lm = 7;}?>
      <?php for ($x = 0; $x <= $lm + 7 && $x < count($products); $x++) { ?>
      <?php $product = $products[$x]; ?>
        <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12">
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
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>
              </div>
              <div class="button-group">
                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <?php if($lm + 8 < count($products)) { ?>
        <!-- <button class="btn btn-default" onclick="if(window.location.href.includes('lm=')) {window.location.href = window.location.href.replace(/(lm=).*/,'$1' + <?php echo($lm + 7); ?> );}
        else {window.location.href = window.location.href + '&lm=' + <?php echo($lm + 8); ?>}">Load more >>></button> -->
        <button class="btn btn-default" onclick="loadMore()">Load more >>></button>
      <?php } ?>  
      
      
      
      <?php } ?>
     </div>
    </div>
<!-- </div> -->

<script>
        function loadMore() {
        //var desc = '<?php echo trim(preg_replace("/\s\s+/", " ", $products[8]["description"])) ?>';
        
          $('.products').append('' +
          '<?php $product = $products[8]; ?>' +
          '<div class="product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12">'+
          '<div class="product-thumb">'+
            '<div class="image"><a href="<?php echo $product["href"]; ?>"><img src="<?php echo $product["thumb"]; ?>" alt="<?php echo $product["name"]; ?>" title="<?php echo $product["name"]; ?>" class="img-responsive" /></a></div>'+
            '<div>'+
              '<div class="caption">'+
                '<h4><a href=""><?php echo $product["name"]; ?></a></h4>'+
               '<p><?php echo trim(preg_replace("/\s\s+/", " ", $product["description"])); ?></p>' +
                '<?php if ($product["rating"]) { ?>'+
                '<div class="rating">'+
                  '<?php for ($i = 1; $i <= 5; $i++) { ?>'+
                  '<?php if ($product["rating"] < $i) { ?>'+
                  '<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>'+
                  '<?php } else { ?>'+
                  '<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>'+
                  '<?php } ?>'+
                  '<?php } ?>'+
                '</div>'+
                '<?php } ?>'+
                '<?php if ($product["price"]) { ?>'+
               '<p class="price">'+
                  '<?php if (!$product["special"]) { ?>'+
                  '<?php echo $product["price"]; ?>'+
                  '<?php } else { ?>'+
                 '<span class="price-new"><?php echo $product["special"]; ?></span> <span class="price-old"><?php echo $product["price"]; ?></span>'+
                  '<?php } ?>'+
                  '<?php if ($product["tax"]) { ?>'+
                  '<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product["tax"]; ?></span>'+
                  '<?php } ?>'+
                '</p>'+
                '<?php } ?>'+
              '</div>'+
                '<div class="button-group">'+
                
                  '<button type="button" onclick="cartAdd()"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>'+
                  
                  '<button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add("<?php echo $product["product_id"]; ?>");"><i class="fa fa-heart"></i></button>'+
                  '<button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add("<?php echo $product["product_id"]; ?>");"><i class="fa fa-exchange"></i></button>'+
                '</div>'+
            '</div>'+
          '</div>'+
        '</div>'
          );
        }
        function cartAdd(){
          cart.add('<?php echo $product["product_id"]; ?>', '<?php echo $product["minimum"]; ?>');
        }
      </script>
