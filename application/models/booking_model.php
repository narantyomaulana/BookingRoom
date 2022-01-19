<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class : Booking_model 
 * Booking model to handle database operations related to room booking.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 29 Mar 2017
 */
class Booking_model extends CI_Model
{
    function bookingCount($searchText, $searchRoomId, $searchFloorId, $searchRoomSizeId)
    {
        $this->db->select('BaseTbl.bookingId, BaseTbl.bookingDtm, BaseTbl.roomId,
                            BaseTbl.bookStartDate, BaseTbl.bookEndDate,
                            
                            R.roomNumber, R.roomSizeId, R.floorId, RS.sizeTitle, RS.sizeDescription,
                            F.floorName, F.floorCode');
        $this->db->from('ldg_bookings AS BaseTbl');
        $this->db->join('ldg_rooms AS R', 'BaseTbl.roomId = R.roomId');
        $this->db->join('ldg_room_sizes AS RS', 'RS.sizeId = R.roomSizeId', 'left');
        $this->db->join('ldg_floor AS F', 'F.floorId = R.floorId', 'left');
        $this->db->where('BaseTbl.isDeleted', 0);
        if(!empty($searchRoomId)){
            $this->db->where('R.roomId', $searchRoomId);
        }
        if(!empty($searchRoomSizeId)){
            $this->db->where('R.roomSizeId', $searchRoomSizeId);
        }
        if(!empty($searchFloorId)){
            $this->db->where('R.floorId', $searchFloorId);
        }
        $query = $this->db->get();
        
        return count($query->result());
    }

    function bookingListing($searchText, $searchRoomId, $searchFloorId, $searchRoomSizeId)
    {
        $this->db->select('BaseTbl.bookingId, BaseTbl.bookingDtm, BaseTbl.roomId,
                            BaseTbl.bookStartDate,BaseTbl.customerName, BaseTbl.bookEndDate, BaseTbl.bookingComments,BaseTbl.kontakpic,BaseTbl.jumlahpeserta,
                            
                            R.roomNumber, R.roomSizeId, R.floorId, RS.sizeTitle, RS.sizeDescription,
                            F.floorName, F.floorCode');
        $this->db->from('ldg_bookings AS BaseTbl');
        $this->db->join('ldg_rooms AS R', 'BaseTbl.roomId = R.roomId');
        $this->db->join('ldg_room_sizes AS RS', 'RS.sizeId = R.roomSizeId', 'left');
        $this->db->join('ldg_floor AS F', 'F.floorId = R.floorId', 'left');
        $this->db->where('BaseTbl.isDeleted', 0);
        if(!empty($searchRoomId)){
            $this->db->where('R.roomId', $searchRoomId);
        }
        if(!empty($searchRoomSizeId)){
            $this->db->where('R.roomSizeId', $searchRoomSizeId);
        }
        if(!empty($searchFloorId)){
            $this->db->where('R.floorId', $searchFloorId);
        }
        // $this->db->limit($page, $segment);
        $query = $this->db->get();
        
        $result = $query->result();
        return $result;
    }
    function print_booking(){
        $this->db->select('BaseTbl.bookingId, BaseTbl.bookingDtm, BaseTbl.roomId,
                            BaseTbl.bookStartDate,BaseTbl.customerName, BaseTbl.bookEndDate, BaseTbl.bookingComments,BaseTbl.kontakpic,BaseTbl.jumlahpeserta,
                            
                            R.roomNumber, R.roomSizeId, R.floorId, RS.sizeTitle, RS.sizeDescription,
                            F.floorName, F.floorCode');
        $this->db->from('ldg_bookings AS BaseTbl');
        $this->db->join('ldg_rooms AS R', 'BaseTbl.roomId = R.roomId');
        $this->db->join('ldg_room_sizes AS RS', 'RS.sizeId = R.roomSizeId', 'left');
        $this->db->join('ldg_floor AS F', 'F.floorId = R.floorId', 'left');
        $this->db->where('BaseTbl.isDeleted', 0);
        $query = $this->db->get();
        
        $result = $query->result();
        return $result;
    }

    /**
     * Get customer list by name
     * @param {string} $customerName : This is customer name
     */
    // function getCustomersByName($customerName = '')
    // {
    //     $this->db->select('customerId, customerName');
    //     $this->db->from('ldg_customer');
    //     $this->db->where('isDeleted', 0);
    //     if(!empty($customerName)) {
    //         $likeCriteria = "(customerName LIKE '%".$customerName."%')";
    //         $this->db->where($likeCriteria);
    //     }
    //     $query = $this->db->get();

    //     return $query->result();
    // }

    /**
     * This function is used to add new floor to system
     * @param array $floorInfo : This is floor information
     * @return number $insert_id : This is last inserted id
     */
    function addedNewBooking($bookingInfo)
    {
        $this->db->trans_start();
        $this->db->insert('ldg_bookings', $bookingInfo);
        $insert_id = $this->db->insert_id();
        $this->db->trans_complete();
        
        return $insert_id;
    }

    public function getsamebook($bookstart,$bookend,$room)
    {
        $this->db->select('BaseTbl.bookingId, BaseTbl.roomId,
                            BaseTbl.bookStartDate, BaseTbl.bookEndDate');
        $this->db->from('ldg_bookings AS BaseTbl');
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->where('BaseTbl.roomId',$room);
        $this->db->where("BaseTbl.bookStartDate BETWEEN '$bookstart' AND '$bookend'");
        $this->db->where("BaseTbl.bookEndDate BETWEEN '$bookstart' AND '$bookend'");
        $query = $this->db->get();

        if(count($query->result())>=1){
            return true;
        }else{
            return false;
        }
    }

    function deleteBook($bookId, $bookInfo)
    {
        $this->db->where('bookingId', $bookId);
        $this->db->update('ldg_bookings', $bookInfo);
        
        return $this->db->affected_rows();
    }

    function deleteAbsen($absenId, $absenInfo)
    {
        $this->db->where('id', $absenId);
        $this->db->update('ldg_absensi', $absenInfo);
        
        return $this->db->affected_rows();
    }
}
