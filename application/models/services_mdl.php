<?php if ( ! defined('BASEPATH') ) exit('No direct script access allowed');

class Services_mdl extends CI_Model
{

	function list_services( $tags_ser )
	{
		$this->db->select( 'id_ser, desc_ser, descexp_ser, precio_ser, image_ser, tags_ser' );
		$this->db->from( 'db_services' );
		if($tags_ser){
			$this->db->like( 'tags_ser', $tags_ser );
		}
		$this->db->where( 'state', '1' );

		$query = $this->db->get();

		return $query->result();
	}

	function get_service( $id_ser )
	{
		$this->db->select( 'id_ser, desc_ser, descexp_ser, precio_ser, image_ser, tags_ser' );
		$this->db->from( 'db_services' );
		$this->db->where( 'id_ser', $id_ser );

		$query = $this->db->get();

		return $query->result();
	}

	function insert_service( 
		$desc_ser,
		$descexp_ser,
		$precio_ser,
		$image_ser,
		$tags_ser
	)
	{
		$this->db->set( 'desc_ser', $desc_ser );
		$this->db->set( 'descexp_ser', $descexp_ser );
		$this->db->set( 'precio_ser', $precio_ser );
		$this->db->set( 'image_ser', $image_ser );
		$this->db->set( 'tags_ser', $tags_ser );

		$this->db->insert('db_services');

		$dump['id'] = $this->db->insert_id();
		
		if(!empty($dump['id']) && $dump['id'] > 0){
			$dump['state'] = 'Registros ingresado.';
		    return $dump;
		}else{
			$dump['state'] = 'Problemas al ingresar registros.';
			return $dump;
		}
	}

	function update_service(
		$id_ser,
		$desc_ser,
		$descexp_ser,
		$precio_ser,
		$image_ser,
		$tags_ser
	)
	{
		$data = array(
			'desc_ser' => $desc_ser,
			'descexp_ser' => $descexp_ser,
			'precio_ser' => $precio_ser,
			'image_ser' => $image_ser,
			'tags_ser' => $tags_ser
		);

		$data = array_filter($data);

		$this->db->where('id_ser', $id_ser);
		$this->db->update('db_services', $data); 

		$dump['affected_rows'] = $this->db->affected_rows();

		if(!empty($dump['affected_rows']) && $dump['affected_rows'] > 0){
			$dump['state'] = 'Registro actualizado.';
		    return $dump;
		}else{
			$dump['state'] = 'No hay registros afectados.';
			return $dump;
		}

		return $this->db->affected_rows();
	}

	function update_service_state(
		$id_ser,
		$state
	)
	{
		$data = array(
			'state' => $state
		);

		$this->db->where('id_ser', $id_ser);
		$this->db->update('db_services', $data); 

		$dump['affected_rows'] = $this->db->affected_rows();

		if(!empty($dump['affected_rows']) && $dump['affected_rows'] > 0){
			$dump['state'] = 'Registro actualizado.';
		    return $dump;
		}else{
			$dump['state'] = 'No hay registros afectados.';
			return $dump;
		}

		return $this->db->affected_rows();
	}

}