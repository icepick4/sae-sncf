<?php

require_once(PATH_MODELS . 'DAO.php');

class AlertDAO extends DAO{

    public function getAllAlerts(){
        $sql = 'SELECT TRAVEL_ID, A.ALERT_TYPE_ID, TO_CHAR(ALERT_DATE,\'DD/MM/YYYY HH24:MI\') AS "DATETIME_TRAVEL", ALERT_MESSAGE, ALERT_LOCATION, ALERT_TYPE_LABEL, ALERT_STATUS, A.ALERT_TYPE_ID FROM ALERT A INNER JOIN ALERT_TYPE A_T ON A.ALERT_TYPE_ID=A_T.ALERT_TYPE_ID ORDER BY ALERT_DATE DESC';
        return $this->queryAll($sql);
    }

    public function getAllAlertsType(){
        $sql = 'SELECT DISTINCT ALERT_TYPE_LABEl FROM ALERT A INNER JOIN ALERT_TYPE A_T ON A.ALERT_TYPE_ID=A_T.ALERT_TYPE_ID';
        return $this->queryAll($sql);
    }

    public function getAllCurrentAlerts(){
        $sql = 'SELECT TRAVEL_ID, A.ALERT_TYPE_ID, TO_CHAR(ALERT_DATE,\'DD/MM/YYYY HH24:MI\') AS "DATETIME_TRAVEL", ALERT_MESSAGE, ALERT_LOCATION, ALERT_TYPE_LABEL FROM ALERT A INNER JOIN ALERT_TYPE A_T ON A.ALERT_TYPE_ID=A_T.ALERT_TYPE_ID WHERE ALERT_STATUS=1 ORDER BY ALERT_DATE DESC';
        return $this->queryAll($sql);
    }

    public function getAllCurrentAlertsType(){
        $sql = 'SELECT DISTINCT ALERT_TYPE_LABEl FROM ALERT A INNER JOIN ALERT_TYPE A_T ON A.ALERT_TYPE_ID=A_T.ALERT_TYPE_ID WHERE ALERT_STATUS=1';
        return $this->queryAll($sql);
    }

    public function getAllAlertsByTravel($travel_id){
        $sql = 'SELECT TRAVEL_ID, A.ALERT_TYPE_ID, TO_CHAR(ALERT_DATE,\'DD/MM/YYYY HH24:MI\') AS "DATETIME_TRAVEL", ALERT_MESSAGE, ALERT_LOCATION, ALERT_TYPE_LABEL FROM ALERT A INNER JOIN ALERT_TYPE A_T ON A.ALERT_TYPE_ID=A_T.ALERT_TYPE_ID WHERE A.TRAVEL_ID=:travel_id ORDER BY ALERT_DATE DESC';
        $args = array(':travel_id' => $travel_id);
        return $this->queryAll($sql, $args);
    }

    public function getAllCurrentAlertsByTravel($travel_id){
        $sql = 'SELECT TRAVEL_ID, A.ALERT_TYPE_ID, TO_CHAR(ALERT_DATE,\'DD/MM/YYYY HH24:MI\') AS "DATETIME_TRAVEL", ALERT_MESSAGE, ALERT_LOCATION, ALERT_TYPE_LABEL FROM ALERT A INNER JOIN ALERT_TYPE A_T ON A.ALERT_TYPE_ID=A_T.ALERT_TYPE_ID WHERE A.TRAVEL_ID=:travel_id AND ALERT_STATUS=1 ORDER BY ALERT_DATE DESC';
        $args = array(':travel_id' => $travel_id);
        return $this->queryAll($sql, $args);
    }
    public function createAlert($travel_id, $alert_type_id, $alert_msg, $alert_location){	
        $sql = 'INSERT INTO ALERT (TRAVEL_ID, ALERT_TYPE_ID, ALERT_MESSAGE, ALERT_LOCATION, ALERT_STATUS) VALUES (:travel_id, :alert_type_id, :alert_msg, :alert_location, 1)';
        $args = array(':travel_id' => $travel_id, ':alert_type_id' => $alert_type_id, ':alert_msg' => $alert_msg, ':alert_location' => $alert_location);
        $this->queryEdit($sql, $args);
    }

    public function updateAlertStatus($travel_id, $alert_type_id, $alert_hh, $alert_mi, $status){	
        $sql = 'UPDATE ALERT SET ALERT_STATUS=0 WHERE TRAVEL_ID=:travel_id AND ALERT_TYPE_ID=:alert_type_id AND TO_CHAR(ALERT_DATE,\'HH24\') = :hh AND TO_CHAR(ALERT_DATE,\'MI\') = :mi';
        $args = array(':travel_id' => $travel_id, ':alert_type_id' => $alert_type_id, ':hh' => $alert_hh, ':mi' => $alert_mi);
        $this->queryEdit($sql, $args);
    }

    public function getAlertByDetail($travel_id, $alert_type_id, $alert_hh, $alert_mi){
        $sql='SELECT TRAVEL_ID, A.ALERT_TYPE_ID, TO_CHAR(ALERT_DATE,\'DD/MM/YYYY HH24:MI\') AS "DATETIME_TRAVEL", ALERT_MESSAGE, ALERT_LOCATION, ALERT_TYPE_LABEL, ALERT_STATUS FROM ALERT A INNER JOIN ALERT_TYPE A_T ON A.ALERT_TYPE_ID = A_T.ALERT_TYPE_ID WHERE A.TRAVEL_ID = :travel_id AND A.ALERT_TYPE_ID = :alert_id AND TO_CHAR(A.ALERT_DATE,\'HH24\') = :hh AND TO_CHAR(A.ALERT_DATE,\'MI\') = :mi';
        $args = array(':travel_id' => $travel_id, ':alert_id' => $alert_type_id, ':hh' => $alert_hh, ':mi' => $alert_mi);
        return $this->queryRow($sql, $args);
    }
}