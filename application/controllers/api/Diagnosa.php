    <?php
    use Restserver\Libraries\REST_Controller;
    defined('BASEPATH') OR exit('No direct script access allowed');

    require APPPATH . 'libraries/REST_Controller.php';
    require APPPATH . 'libraries/Format.php';

    class Diagnosa extends REST_Controller {
        function __construct(){
            parent::__construct();
            $this->load->model('M_api');
        }
        //indexGet
        function index_get(){
            if ($this->get('serv')=="getDataDiagnosa") {
                $data_get = $this->M_api->getSoal($this->get('id_penyakit'));
                if ($data_get) {
                    $data = array("data" => $data_get
                );
                    $this->response($data, REST_Controller::HTTP_OK);
                }
            }
            else if ($this->get('tipe')== "penyakit") {
             $get = $this->db->get('penyakit')->result();
                 if ($get) {
                     $data = array("data"=>$get);
                 }
             $this->response($data, REST_Controller::HTTP_OK);
            }
            else if ($this->get('tipe') == "gejala") {
            $get = $this->db->get('gejala')->result();
                if ($get) {
                 $data = array("data"=>$get);
                }
        $this->response($data, REST_Controller::HTTP_OK);
    }
}

        //indexPost
    function index_post(){
        $jsongejala = json_decode($this->post("idgejala"),true);
        $idgejala_ = array();
        foreach ($jsongejala as $nilai => $idgejala) {
            if ($idgejala != "kosong") {
                array_push($idgejala_, $idgejala);
            }
        }
        $temp = array();
        $count = $this->db->get('penyakit')->num_rows();
        for ($i=0; $i < $count ; $i++) { 
            $cek = array();
            $getGejalaRule = $this->db->get_where('aturan',array('idpenyakit'=>$i+1))->result_array();
            foreach ($getGejalaRule as $key) {
                for ($j=0; $j < count($idgejala_)  ; $j++) { 
                    if ($key['idgejala'] == $idgejala_[$j] ) {
                        array_push($cek, "true");
                    }
                }
            }
            $countpenyakit = $this->db->get_where('aturan',array('idpenyakit'=>$i+1))->num_rows();
            if (count($cek) == $countpenyakit) {
                array_push($temp, $i+1);
                unset($cek);
            }

        }
        if (count($temp) != 0) {
            $geta = $this->M_api->getHasil($temp);
        }else{
            $geta = array();
        }
        $this->response(['json'=>$idgejala_,'coo'=>$temp,'ss'=>$geta], REST_Controller::HTTP_OK);
    }
}
