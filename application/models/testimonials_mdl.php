<?php if ( ! defined('BASEPATH') ) exit('No direct script access allowed');

class Testimonials_mdl extends CI_Model
{

	function list_testimonials()
	{
		$this->db->select( 'id_tes, name_tes, desc_tes, state, pos' );
		$this->db->from( 'db_testimonials' );
		$this->db->where( 'state', '1' );

		$query = $this->db->get();

		return $query->result();
	}
}