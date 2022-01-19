<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Absen extends BaseController
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('rooms_model');
        $this->load->model('booking_model');
        $this->isLoggedIn();   
        $this->load->library('upload');
        $this->load->helper(array('form', 'url'));
    }

    /**
     * This function used to load the first screen of the user
     */
    public function index()
    {
        $this->global['pageTitle'] = 'DigiLodge : Absen';
        $data['bookingRecords'] = $this->rooms_model->getBookingRecords();
        $this->loadViews("absen/absenrapat",$this->global,$data, NULL);
    }

    public function absensi()
    {
        $this->global['pageTitle'] = 'DigiLodge : Absen';
        $this->loadViews("absen/absensi",$this->global, NULL);
    }

    public function addnewabsen()
    {
        $this->load->library('form_validation');
        
        $this->form_validation->set_rules('nama','Nama','required');
        $this->form_validation->set_rules('nik','Nik','required');
        $this->form_validation->set_rules('email','Email','required');
        $this->form_validation->set_rules('file','File');

        $config['upload_path'] = './gambar/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg|JPEG|GIF|JPG|PNG';
        $config['max_size'] = '100';
        $config['max_width'] = '1024';
        $config['max_height'] = '768';

        
        // absen
        if($this->form_validation->run() == FALSE)
        {
            $this->absensi();
        }
        else
        {
            $banner=$_FILES['file']['name']; 
            $expbanner=explode('.',$banner);
            $bannerexptype=$expbanner[count($expbanner)-1];
            date_default_timezone_set('Asia/Jakarta');
            $date = date('m/d/Yh:i:sa', time());
            $rand=rand(10000,99999);
            $encname=$date.$rand;
            $bannername=md5($encname).'.'.$bannerexptype;
            $bannerpath=FCPATH."/gambar/".$bannername;
            // die($bannerpath);
            move_uploaded_file($_FILES["file"]["tmp_name"],$bannerpath);

            $nama = $this->input->post('nama');
            $nik = $this->input->post('nik');
            $email = $this->input->post('email');
            // $file= $this->input->post('file');
            $file=$bannername;
            $bookingid = $this->input->post('booking_id');
            
            $abseninfo = array('booking_id'=>$bookingid,
                                'nama'=>$nama,
                                'nik'=>$nik,
                                'email'=>$email, 
                                'file'=>$file, 
                                'created_at'=>date('Y-m-d H:i:sa'),
                                'updated_at'=>date('Y-m-d H:i:sa'));

            $result = $this->rooms_model->addednewabsen($abseninfo);
            $this->session->set_flashdata('success', 'Success Absen');
            
            
            redirect('absenrapat/book?id='.$bookingid);
        }
    }

    public function reportabsen()
    {
        $this->global['pageTitle'] = 'DigiLodge : Absen';
        $data['absensi'] = $this->rooms_model->getAbsen();
        $this->loadViews("absen/reportabsen",$this->global,$data, NULL);
    }
    
     function deleteAbsen()
    {
        if($this->isAdmin() == TRUE)
        {
            echo(json_encode(array('status'=>'access')));
        }
        else
        {
            $absenId = $this->input->post('absenId');
            echo $absenId;
            $absenInfo = array('is_delete'=>1,'updated_at'=>date('Y-m-d H:i:sa'));
            
            $result = $this->booking_model->deleteAbsen($absenId, $absenInfo);
            
            if ($result > 0) { echo(json_encode(array('status'=>TRUE))); }
            else { echo(json_encode(array('status'=>FALSE))); }
            redirect('reportabsen');
        }
    }

    
}

