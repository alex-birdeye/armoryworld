<?php
class ControllerExtensionModuleMapblock extends Controller {
 public function index($setting) {
  $this->load->language('extension/module/mapblock');
  
//   $data['entry_width']     = $this->language->get('entry_width');
//   $data['heading_title']   = $setting['heading_title'];
//   $data['entry_name']        = $setting['entry_name'];
   $data['entry_img']     = $setting['img'];
  $data['entry_text'] = $setting['text'];

   return $this->load->view('extension/module/mapblock.tpl', $data);
     
 }
}