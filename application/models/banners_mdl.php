<?php if ( ! defined('BASEPATH') ) exit('No direct script access allowed');

class Banners_mdl extends CI_Model
{

	function list_banners()
	{
		$this->db->select( 'id_ban, image_ban, text1_ban, text2_ban, state, pos' );
		$this->db->from( 'db_banners' );
		$this->db->where( 'state', '1' );

		$query = $this->db->get();

		return $query->result();
	}
}