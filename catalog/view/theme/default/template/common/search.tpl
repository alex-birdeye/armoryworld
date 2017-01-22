<div id="search" class="input-group">
    <div class="row">
      <span class="input-group-btn">
        <!--<button type="button" class="btn btn-default btn-lg"><i class="fa fa-search"></i></button>-->
        <button class="btn btn-default btn-lg" onclick="function qqq() {
//         alert(111);
          $('input[name=\'search\']').removeClass('hidden');
//          document.getElementById('qqq')[0].removeClass('hidden');
        }
        qqq()"><i class="fa fa-search"></i></button>
      </span>
    </div>
    <div class="row">
    <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>"
           class="form-control input-lg hidden"/>
    </div>
</div>