<?php
defined('BASEPATH') or exit('No direct script access allowed');
class MY_Controller extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->helper('string');        
		$this->load->helper('url');
		$this->load->helper('form');
		$this->load->library('form_validation');		
		$this->load->helper('language');
		//Load language file
		$this->lang->load('en_admin', 'english');
	}
}