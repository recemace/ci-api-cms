<?php if ( ! defined('BASEPATH') ) exit('No direct script access allowed');

class Banners extends CI_Controller
{

	public function __construct()
	{
		header("Access-Control-Allow-Origin: *");
		header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Access-Control-Allow-Origin');
		header('Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE');
		parent::__construct();
		$this->load->model('banners_mdl','', true);
	}

	public function list_banners()
	{
		$tags_ser = $this->input->post('tags_ser');

		$data = json_encode( $this->banners_mdl->list_banners() );

		$this->output
            ->set_content_type('application/json')
            ->set_status_header(200)
            ->set_output(
            	$data
         );
	}
}