<?php

if (!defined('BASEPATH'))
  exit('No direct script access allowed');

class M_api extends CI_Model
{

  function __construct()
  {
    parent::__construct();
  }

  function getHasil($array){
    $this->db->where_in('penyakit.idpenyakit',$array);
    return $this->db->get('penyakit')->result();
  }


}
