<?php if ( ! defined('BASEPATH') ) exit('No direct script access allowed');

class Services extends CI_Controller
{

	public function __construct()
	{
		header("Access-Control-Allow-Origin: *");
		header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Access-Control-Allow-Origin');
		header('Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE');
		parent::__construct();
		$this->load->model('services_mdl','', true);
	}

	public function list_services()
	{
		$tags_ser = $this->input->post('tags_ser');

		$data = json_encode( $this->services_mdl->list_services(
			$tags_ser
		) );

		$this->output
            ->set_content_type('application/json')
            ->set_status_header(200)
            ->set_output(
            	$data
         );
	}

	public function get_service()
	{
		$id_ser = $this->input->post('id_ser');

		$data = json_encode( $this->services_mdl->get_service(
			$id_ser
		) );

		$this->output
            ->set_content_type('application/json')
            ->set_status_header(200)
            ->set_output(
            	$data
         );
	}

	public function insert_service()
	{
		if( isset($_FILES["image_ser"]["name"]) ){
			$target_dir = "./assets/services/";
			$target_name = str_replace(' ', '-', basename($_FILES["image_ser"]["name"]) );
			$target_file = $target_dir . $target_name;
			move_uploaded_file($_FILES["image_ser"]["tmp_name"], $target_file);
		}else{
			$target_name = '';
		}

		$desc_ser = $this->input->post('desc_ser');
		$descexp_ser = $this->input->post('descexp_ser');
		$precio_ser = $this->input->post('precio_ser');
		$image_ser = $target_name;
		$tags_ser = $this->input->post('tags_ser');

		$data = json_encode( $this->services_mdl->insert_service(
			$desc_ser,
			$descexp_ser,
			$precio_ser,
			$image_ser,
			$tags_ser
		) );

		$this->output
            ->set_content_type('application/json')
            ->set_status_header(200)
            ->set_output(
            	$data
         );
	}

	public function update_service()
	{

		if( isset($_FILES["image_ser"]["name"]) ){
			$target_dir = "./assets/services/";
			$target_name = str_replace(' ', '-', basename($_FILES["image_ser"]["name"]) );
			$target_file = $target_dir . $target_name;
			move_uploaded_file($_FILES["image_ser"]["tmp_name"], $target_file);
		}else{
			$target_name = '';
		}

		$id_ser = $this->input->post('id_ser');
		$desc_ser = $this->input->post('desc_ser');
		$descexp_ser = $this->input->post('descexp_ser');
		$precio_ser = $this->input->post('precio_ser');
		$image_ser = $target_name;
		$tags_ser = $this->input->post('tags_ser');

		$data = json_encode( $this->services_mdl->update_service(
			$id_ser,
			$desc_ser,
			$descexp_ser,
			$precio_ser,
			$image_ser,
			$tags_ser
		) );

		$this->output
            ->set_content_type('application/json')
            ->set_status_header(200)
            ->set_output(
            	$data
         );
	}

	public function update_service_state()
	{
		$id_ser = $this->input->post('id_ser');
		$state = $this->input->post('state');

		$data = json_encode( $this->services_mdl->update_service_state(
			$id_ser,
			$state
		) );

		$this->output
            ->set_content_type('application/json')
            ->set_status_header(200)
            ->set_output(
            	$data
         );
	}

}