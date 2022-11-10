<?php

require_once(PATH_MODELS.'DAO.php');

class UserDAO extends DAO{
    public function getAllUser()
    {
        return $this->queryAll("SELECT * FROM USER_DATA");
    }

    public function getUserMail($mail)
    {
        return $this->queryRow("Select * from USER_DATA WHERE USER_MAIL = '$mail' ");
    }
    public function getUserId($id)
    {
        return $this->queryRow("Select * from USER_DATA WHERE USER_ID = '$id' ");
    }

    public function postUser($data)
    {
        return $this->queryRow("INSERT INTO USER_DATA (USER_MAIL,USER_PHONE,USER_PASSWORD,USER_LASTNAME,USER_FIRSTNAME,USER_CATEGORIE_ID) VALUES (:mail, :phone, :password, :lastname, :firstname, :categorie)",$data);
    }
}


//  $data = [
//     'mail' => $newFileName,
//     'phone' => $_POST["desc"],
//     'password' => $_POST["cat"],
//     'lastname' =>,
//     'firstname' =>,
//     'categorie' =>,
// ];
//$result = $user -> postUser($data);