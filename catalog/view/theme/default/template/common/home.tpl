<?php echo $header; ?>
<!-- <div class="container"> -->
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
    <?php echo $content_top; ?>
    
    <section id="about_box">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                <h3 class="about_s-h3">About</h3>
                <h2 class="about_s-h2">About Armory World<br>
                    <span>Online Outlet Of High Quality Medieval Wares</span>
                </h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nibh arcu, elementum in ex vitae, suscipit faucibus leo. Nullam quis ligula tempus, ultricies felis eget, consectetur velit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas volutpat mi et lectus bibendum, commodo pharetra quam semper. Nam posuere pulvinar nisi, nec efficitur felis rhoncus in. Nunc consequat augue a mi venenatis efficitur at luctus mauris. Sed id justo massa. Curabitur vel nisl est. Nunc placerat nunc luctus, bibendum tortor ac, ultricies sapien. Proin cursus massa mauris, at tristique ex varius ac. Nullam a lectus tincidunt enim tristique varius.</p>

                <p>Duis eu gravida justo. Fusce ultrices, arcu vitae tincidunt aliquam, lacus elit bibendum neque, posuere scelerisque ante neque at erat. Sed cursus sodales magna, non aliquam purus gravida at. Curabitur viverra dui viverra, varius mauris id, fringilla sapien. Pellentesque aliquam non magna in vulputate. Nulla mollis at nunc ut venenatis. Fusce scelerisque nulla id justo fermentum, at viverra augue tincidunt.</p>

                <p>Aliquam quis porta turpis. Curabitur eget lectus ut lectus malesuada congue sit amet nec erat. Nunc odio magna, finibus ac lacus in, viverra aliquam lectus. Fusce cursus, nunc vel sodales consequat, nisi lectus scelerisque magna, non porta tellus purus eu ligula. Aenean bibendum purus eget leo fermentum rhoncus. Integer vitae diam eros. Morbi eleifend, diam imperdiet iaculis ultricies, arcu metus aliquam felis, ac auctor neque neque at lorem. Etiam eget est tortor. Nam sit amet placerat est, nec maximus est. Proin et tellus posuere, lacinia ligula nec, hendrerit massa. Aliquam sit amet ligula sed turpis varius ultrices.</p>

                <p>Suspendisse blandit tortor sed auctor laoreet. In non elementum ex, et accumsan risus. Praesent et nulla purus. Sed lobortis libero et erat tincidunt, eu ultricies odio iaculis. Etiam eget dictum arcu, eu maximus enim. Integer semper placerat urna, eget aliquam ligula iaculis vitae. Quisque viverra quam vitae massa faucibus sagittis. Ut elementum, mauris nec ornare dapibus, elit velit varius massa, quis ullamcorper felis quam nec nunc. Integer ac risus eget elit euismod bibendum. Donec dignissim hendrerit sodales.</p>

                <p>Vestibulum varius, dui sed lobortis consequat, erat nisl consequat ex, in fermentum est urna vitae enim. Aliquam a aliquet nibh. Donec sapien nisi, dictum nec congue eget, placerat nec leo. Duis sit amet justo purus. Aliquam metus purus, cursus nec dolor eget, cursus maximus leo. Pellentesque nulla justo, egestas vel lectus rutrum, laoreet viverra purus. Curabitur bibendum purus convallis fermentum tincidunt. Ut ligula neque, pellentesque a iaculis quis, vulputate in magna. Nullam egestas convallis imperdiet. Mauris lobortis sem ipsum, commodo varius nulla pretium ac.
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nibh arcu, elementum in ex vitae, suscipit faucibus leo. Nullam quis ligula tempus, ultricies felis eget, consectetur velit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas volutpat mi et lectus bibendum, commodo pharetra quam semper. Nam posuere pulvinar nisi, nec efficitur felis rhoncus in. Nunc consequat augue a mi venenatis efficitur at luctus mauris. Sed id justo massa. Curabitur vel nisl est. Nunc placerat nunc luctus, bibendum tortor ac, ultricies sapien. Proin cursus massa mauris, at tristique ex varius ac. Nullam a lectus tincidunt enim tristique varius.</p>

                <p>Duis eu gravida justo. Fusce ultrices, arcu vitae tincidunt aliquam, lacus elit bibendum neque, posuere scelerisque ante neque at erat. Sed cursus sodales magna, non aliquam purus gravida at. Curabitur viverra dui viverra, varius mauris id, fringilla sapien. Pellentesque aliquam non magna in vulputate. Nulla mollis at nunc ut venenatis. Fusce scelerisque nulla id justo fermentum, at viverra augue tincidunt.</p>

                <p>Aliquam quis porta turpis. Curabitur eget lectus ut lectus malesuada congue sit amet nec erat. Nunc odio magna, finibus ac lacus in, viverra aliquam lectus. Fusce cursus, nunc vel sodales consequat, nisi lectus scelerisque magna, non porta tellus purus eu ligula. Aenean bibendum purus eget leo fermentum rhoncus. Integer vitae diam eros. Morbi eleifend, diam imperdiet iaculis ultricies, arcu metus aliquam felis, ac auctor neque neque at lorem. Etiam eget est tortor. Nam sit amet placerat est, nec maximus est. Proin et tellus posuere, lacinia ligula nec, hendrerit massa. Aliquam sit amet ligula sed turpis varius ultrices.</p>

                <p>Suspendisse blandit tortor sed auctor laoreet. In non elementum ex, et accumsan risus. Praesent et nulla purus. Sed lobortis libero et erat tincidunt, eu ultricies odio iaculis. Etiam eget dictum arcu, eu maximus enim. Integer semper placerat urna, eget aliquam ligula iaculis vitae. Quisque viverra quam vitae massa faucibus sagittis. Ut elementum, mauris nec ornare dapibus, elit velit varius massa, quis ullamcorper felis quam nec nunc. Integer ac risus eget elit euismod bibendum. Donec dignissim hendrerit sodales. </p>

                <p>Vestibulum varius, dui sed lobortis consequat, erat nisl consequat ex, in fermentum est urna vitae enim. Aliquam a aliquet nibh. Donec sapien nisi, dictum nec congue eget, placerat nec leo. Duis sit amet justo purus. Aliquam metus purus, cursus nec dolor eget, cursus maximus leo. Pellentesque nulla justo, egestas vel lectus rutrum, laoreet viverra purus. Curabitur bibendum purus convallis fermentum tincidunt. Ut ligula neque, pellentesque a iaculis quis, vulputate in magna. Nullam egestas convallis imperdiet. Mauris lobortis sem ipsum, commodo varius nulla pretium ac.</p>


                <div class="text_cen"><img src="catalog/view/theme/default/image/about.svg" class="icon_about" alt=""></div>
                <div class="box-a-t-i text_cen"><strong>6451</strong> users from <strong>54</strong> cities in <strong>16</strong> countries</div>
                <a href="#" class="btn-more_datailed">More detailed</a>
                </div>
            </div>
        </div>
    </section>
    
    <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
    
<!-- </div> -->



<?php echo $footer; ?>