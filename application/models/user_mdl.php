<?php if ( ! defined('BASEPATH') ) exit('No direct script access allowed');

class User_mdl extends CI_Model
{

	function login_user( $email, $password )
	{
		$this->db->select( 'id_user' );
		$this->db->from( 'db_user' );
		$this->db->where( 'email_user', $email );
		$this->db->where( 'pass_user', sha1( $password ) );
		$this->db->limit(1);

		$query = $this->db->get();

		if( $query->num_rows() == 1 )
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}
