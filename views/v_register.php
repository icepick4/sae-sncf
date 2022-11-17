<?php require_once(PATH_VIEWS.'header.php');?>
<script src=<?= PATH_JS . 'register.js' ?> type="module" defer></script>

<h1 id="title"><?= REGISTER ?></h1>
<form method="post" action="index.php?page=register">
        <p class="info"><?= ERROR_FORM ?></p>
        <input type="text" id="name" name="name" placeholder="<?= INPUT_NAME ?>" required>
        <input type="text" id="fname" name="fname" placeholder="<?= INPUT_FIRST_NAME ?>" required>
        <label class="info"><?= ERROR_PHONE ?></label>
        <input type="phone" id="phone" name="phone" placeholder="<?= INPUT_PHONE ?>" required>
        <label class="info"><?= ERROR_MAIL ?></label>
        <input type="email" id="email" name="email" placeholder="<?= INPUT_EMAIL ?>" required>
        <label class="info"><?= ERROR_PASSWORD_TOO_WEAK ?></label>
        <input type="password" id="password" name="password" placeholder="<?= INPUT_PASSWORD ?>" required>
        <label class="info"><?= ERROR_PASSWORD_DIFFERENT ?></label>
        <input type="password" id="confirmPassword" name="confirmPassword" placeholder="<?= INPUT_CONFIRMPASSWORD ?>" required>
    <input type="submit" value=<?= TOREGISTER ?>></input>
</form>
<?php require_once(PATH_VIEWS.'footer.php'); 