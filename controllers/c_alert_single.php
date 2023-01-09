<?php
require_once(PATH_MODELS.'AlertDAO.php');
require_once(PATH_MODELS.'StaffDAO.php');
$staff = new StaffDAO();
if ($_SESSION['logged'] && $staff->isService($_SESSION['user_id']) || $staff->isStation($_SESSION['user_id']) || $staff->isAdministrator($_SESSION['user_id'])) {
    

    if (!isset($_GET['id'])) {
        header("Location: index.php?page=home");
        die();
    }
    $alerts = new AlertDAO();
    echo $_GET['id'];
    print_r(array(intval(substr($_GET['id'],0,sizeof($_GET['id'])-6)),intval(substr($_GET['id'],-6,2)),intval(substr($_GET['id'],-4,2)),intval(substr($_GET['id'],-2,2))));
    $alert = $alerts->getAlertByDetail(intval(substr($_GET['id'],0,sizeof($_GET['id'])-6)),intval(substr($_GET['id'],-6,2)),intval(substr($_GET['id'],-4,2)),intval(substr($_GET['id'],-2,2)));
    print_r($alert);
    $coord = $alert['ALERT_LOCATION'];
    $coord = explode('//', $coord);
    print_r($coord);
    $logo = choixImage($alert['ALERT_TYPE_ID']);
} else {
    header("Location: index.php?page=home");
    die();
}

require_once(PATH_VIEWS.$page.'.php');

