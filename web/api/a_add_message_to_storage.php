<!DOCTYPE html>
<html>

<body>
    
    <?php
    
    require_once(PATH_MODELS . 'MessageDAO.php');

    $mailbox = new MessageDAO();

    $id_discussion = intval($_GET['id']);

    $discussion = $mailbox->getDiscussionHeaderById($id_discussion);

    if($discussion['STATUS'] == 0){
        $status = 1;
    }else{
        $status = 0;
    }
    $mailbox->storeDiscussion($id_discussion,$status);



