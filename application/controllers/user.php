<?php if ( ! defined('BASEPATH') ) exit('No direct script access allowed');

class User extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('user_mdl','', true);
	}

	public function loginuser()
	{
		$txt_email = $this->input->post('eml');
		$txt_password = $this->input->post('pas');

		$data = json_encode( $this->user_mdl->login_user( $txt_email, $txt_password ) );

		$this->output
            ->set_content_type('application/json')
            ->set_status_header(200)
            ->set_output(
            	$data
         );

	}

}