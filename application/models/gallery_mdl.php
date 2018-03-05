<?php if ( ! defined('BASEPATH') ) exit('No direct script access allowed');

class Gallery_mdl extends CI_Model
{
	function list_gallery()
	{
		$this->db->select( 'id_gal, id_tipo_gal, tit_gal, des_gal, lnk_vid_gal, img_gal, state' );
		$this->db->from( 'db_gallery' );
		$this->db->where( 'state', '1' );

		$query = $this->db->get();

		return $query->result();
	}
}