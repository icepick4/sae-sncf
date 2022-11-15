<?php
require_once(PATH_MODELS . 'UserDAO.php');
require_once(PATH_MODELS . 'TrainDAO.php');


if (!$_SESSION['logged']) {
    header("Location: index.php?page=login");
    die();
} else {
    $user = new UserDAO(true);
    $train = new TrainDAO(true);
    $tickets = $user->getTicketsById($_SESSION['user_id']);
    $tickets = $train->getAllTickets($tickets);
}

require_once(PATH_VIEWS . $page . '.php');
