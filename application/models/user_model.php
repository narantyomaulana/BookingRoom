<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class : User_model 
 * User model to handle database operations related to users
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class User_model extends CI_Model
{
    /**
     * This function is used to get the user listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function getRuanganFree()
    {
     $now = time();
        $this->db->select('BaseTbl.roomId, BaseTbl.roomNumber, BaseTbl.roomSizeId, RS.sizeTitle, RS.sizeDescription,
                            BaseTbl.floorId, FR.floorName, FR.floorCode');
        $this->db->from('ldg_rooms as BaseTbl');
        $this->db->join('ldg_room_sizes AS RS', 'RS.sizeId = BaseTbl.roomSizeId');
        $this->db->join('ldg_floor AS FR', 'FR.floorId = BaseTbl.floorId');
        $this->db->where('BaseTbl.roomId IN (SELECT roomId FROM ldg_bookings WHERE isDeleted=0)',NULL,FALSE);
        $this->db->or_where('BaseTbl.roomId NOT IN (SELECT roomId FROM ldg_bookings WHERE isDeleted=0 AND bookEndDate <= now())',NULL,FALSE);
        // $this->db->or_where('BaseTbl.roomId NOT IN (SELECT roomId FROM ldg_bookings WHERE isDeleted=0 AND bookEndDate > now())',NULL,FALSE);
        $query = $this->db->get();
        $result = $query->result();

        return count($query->result());
    }
        // AWAL TIDAK MUNCUL 4
        // $this->db->select('BaseTbl.roomId');
        // $this->db->from('ldg_rooms as BaseTbl');
        // // $this->db->where('BaseTbl.roomId NOT IN (SELECT roomId FROM ldg_bookings WHERE isDeleted=0 AND bookEndDate > now())',NULL,FALSE);
        // $this->db->where('BaseTbl.roomId  IN (SELECT roomId FROM ldg_bookings WHERE isDeleted=0 AND bookEndDate < now())',NULL,FALSE);
        
        // $query = $this->db->get();

       

    

    function getRuanganTelahDipakai(){
        $this->db->select('BaseTbl.roomId');
        $this->db->from('ldg_rooms as BaseTbl');
        $this->db->where('BaseTbl.roomId IN (SELECT roomId FROM ldg_bookings WHERE isDeleted=0 AND bookEndDate > now())',NULL,FALSE);
        $query = $this->db->get();

        return count($query->result());
    }

    function getUserCount()
    {
        $this->db->select('BaseTbl.userId');
        $this->db->from('ldg_users as BaseTbl');
        $this->db->where('roleId !=',1);
        $this->db->where('isDeleted',0);
        $query = $this->db->get();

        return count($query->result());
    }

     function getRuanganFull()
    {
        $this->db->select('BaseTbl.roomId');
        $this->db->from('ldg_rooms as BaseTbl');
        $this->db->join('ldg_bookings as bk','bk.roomId = BaseTbl.roomId');
        $this->db->where('BaseTbl.roomId IN (SELECT roomId FROM ldg_bookings WHERE isDeleted=0)',NULL,FALSE);
        $this->db->where('bk.isDeleted',0);
        $this->db->where('bk.bookEndDate >=',date('Y-m-d H:i'));
        $this->db->where('bk.bookStartDate <=',date('Y-m-d H:i'));
        $query = $this->db->get();

        return count($query->result());
    }

    function getBookingListing(){
        $this->db->select('BaseTbl.roomId');
        $this->db->from('ldg_rooms as BaseTbl');
        $this->db->join('ldg_bookings as bk','bk.roomId = BaseTbl.roomId');
        $this->db->where('BaseTbl.roomId IN (SELECT roomId FROM ldg_bookings WHERE isDeleted=0)',NULL,FALSE);
        $this->db->where('bk.isDeleted',0);
        $this->db->where('bk.bookEndDate >=',date('Y-m-d H:i'));
        $this->db->where('bk.bookStartDate >=',date('Y-m-d H:i'));
        $query = $this->db->get();

        return count($query->result());
    }


    function userListingCount($searchText = '')
    {
        $this->db->select('BaseTbl.userId, BaseTbl.userNIK, BaseTbl.userName, BaseTbl.userPhone, Role.role,BaseTbl.divisi');
        $this->db->from('ldg_users as BaseTbl');
        $this->db->join('ldg_roles as Role', 'Role.roleId = BaseTbl.roleId','left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.userNIK  LIKE '%".$searchText."%'
                            OR  BaseTbl.userName  LIKE '%".$searchText."%'
                            OR  BaseTbl.userPhone  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->where('BaseTbl.roleId !=', 1);
        $query = $this->db->get();
        
        return count($query->result());
    }
    
    /**
     * This function is used to get the user listing count
     * @param string $searchText : This is optional search text
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function userListing($searchText = '', $page, $segment)
    {
        $this->db->select('BaseTbl.userId, BaseTbl.userNIK, BaseTbl.userName, BaseTbl.userPhone, Role.role,BaseTbl.divisi');
        $this->db->from('ldg_users as BaseTbl');
        $this->db->join('ldg_roles as Role', 'Role.roleId = BaseTbl.roleId','left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.userNIK  LIKE '%".$searchText."%'
                            OR  BaseTbl.userName  LIKE '%".$searchText."%'
                            OR  BaseTbl.userPhone  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->where('BaseTbl.roleId !=', 1);
        $this->db->limit($page, $segment);
        $query = $this->db->get();
        
        $result = $query->result();        
        return $result;
    }
    
    /**
     * This function is used to get the user roles information
     * @return array $result : This is result of the query
     */
    function getUserRoles()
    {
        $this->db->select('roleId, role');
        $this->db->from('ldg_roles');
        $this->db->where('roleId !=', 1);
        $query = $this->db->get();
        
        return $query->result();
    }
    
    
    /**
     * This function is used to add new user to system
     * @return number $insert_id : This is last inserted id
     */
    function addNewUser($userInfo)
    {
        $this->db->trans_start();
        $this->db->insert('ldg_users', $userInfo);
        
        $insert_id = $this->db->insert_id();
        
        $this->db->trans_complete();
        
        return $insert_id;
    }
    
    /**
     * This function used to get user information by id
     * @param number $userId : This is user id
     * @return array $result : This is user information
     */
    function getUserInfo($userId)
    {
        $this->db->select('userId, userName, userNIK, userPhone, roleId, divisi');
        $this->db->from('ldg_users');
        $this->db->where('isDeleted', 0);
		$this->db->where('roleId !=', 1);
        $this->db->where('userId', $userId);
        $query = $this->db->get();
        
        return $query->result();
    }
    
    
    /**
     * This function is used to update the user information
     * @param array $userInfo : This is users updated information
     * @param number $userId : This is user id
     */
    function editUser($userInfo, $userId)
    {
        $this->db->where('userId', $userId);
        $this->db->update('ldg_users', $userInfo);
        
        return TRUE;
    }
    
    
    
    /**
     * This function is used to delete the user information
     * @param number $userId : This is user id
     * @return boolean $result : TRUE / FALSE
     */
    function deleteUser($userId, $userInfo)
    {
        $this->db->where('userId', $userId);
        $this->db->update('ldg_users', $userInfo);
        
        return $this->db->affected_rows();
    }


    /**
     * This function is used to match users password for change password
     * @param number $userId : This is user id
     */
    function matchOldPassword($userId, $oldPassword)
    {
        $this->db->select('userId, userPassword');
        $this->db->where('userId', $userId);        
        $this->db->where('isDeleted', 0);
        $query = $this->db->get('ldg_users');
        
        $user = $query->result();

        if(!empty($user)){
            if(verifyHashedPassword($oldPassword, $user[0]->password)){
                return $user;
            } else {
                return array();
            }
        } else {
            return array();
        }
    }
    
    /**
     * This function is used to change users password
     * @param number $userId : This is user id
     * @param array $userInfo : This is user updation info
     */
    function changePassword($userId, $userInfo)
    {
        $this->db->where('userId', $userId);
        $this->db->where('isDeleted', 0);
        $this->db->update('ldg_users', $userInfo);
        
        return $this->db->affected_rows();
    }
}