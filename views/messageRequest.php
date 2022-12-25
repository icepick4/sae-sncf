<!DOCTYPE html>
<html>

<body>
    <?php
    chdir("../");
    //pour utiliser le fichier de config de base
    $skipSession = true;
    require_once('./config/configuration.php');
    require_once(PATH_MODELS . 'UserDAO.php');
    require_once(PATH_MODELS . 'MessageDAO.php');

    $user = new UserDAO();
    $mailbox = new MessageDAO();

    $id_discussion = intval($_GET['number']);
    $user_id = intval($_GET['id']);

    if($id_discussion < 0){
        $id_destinataire = abs($id_discussion);


        $mailbox->insertDiscussion("contact pro",$user_id,null,null,null,null,$id_destinataire);
        $discussion_id = $mailbox->getDiscussionBetweenUsers($user_id,$id_destinataire);
        $id_discussion = $discussion_id["DISCUSSION_ID"];

    }

    $discussionData = $mailbox->getDiscussionSubjectById($id_discussion);

    
    
    
    if($user->isEmployee($user_id)){
        $discussion = $mailbox->getDiscussionHeaderById($id_discussion);
        if($discussion['USER_ID'] == $user_id){
            $receiver = $user->getUserById($discussion['DESTINATION_ID']);
        }else{
            $receiver = $user->getUserById($discussion['USER_ID']);    
        }
            
    }

    ?><div id="headermsg"><h2><?php echo($discussionData['DISCUSSION_SUBJECT']); ?> - <?php if(isset($receiver)){echo $receiver['USER_FIRSTNAME'] ;} else{ echo  "Support";} ?></h2>
    <?php if(!$user->isEmployee($user_id) || !$user->isEmployee($receiver['USER_ID'])){
        if($user->isEmployee($user_id)){ ?>
    <img src="/assets/images/storage.svg" id="storageImage">
    </div>
    <?php }} ?>
    <?php

    $result = $mailbox->getDiscussionById($id_discussion);

    foreach ($result as $message) {
        if ($message['SENDER_ID'] == $user_id) {
    ?><p class="receiver">
            <?php
        } else {
            ?>
            <p class="sender">
            <?php
        }
        print_r($message['MESSAGE_CONTENT']) ?></p>
        <?php
    }
        ?>
        <form method="post" action="index.php?page=messages">
            <input type="hidden" id="discussion_id" name="discussion_id" value=<?= $id_discussion ?>>
            <input type="text" id="message" name="message" placeholder="Votre message">
            <input type="submit" id="submit" value="Envoyer">
        </form>
        <p id="discussionId" style="display:none"><? echo $id_discussion ?></p>
        