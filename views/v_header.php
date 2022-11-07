<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="Language" content="<?= LANG ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?= TITLE ?></title>
    <link href="<?php echo PATH_CSS."common.css" ?>" rel="stylesheet" />
  </head>
  <body>
    <nav class="navbar">
      <button onclick="toggleMenu()" class="burger"></button>
      <button class="button"><?= TITLE_HOME ?></button>
      <div class="dropdowns">
        <div class="dropdown">
          <button class="button">
            <?= TITLE_PURCHASE ?>
            <img src="./assets/images/dropdown.svg" />
          </button>
          <div class="dropdown-menu">
            <button><?= TITLE_SEARCH ?></button>
            <button><?= TITLE_TICKET ?></button>
          </div>
        </div>
        <div class="dropdown">
          <button class="button">
            <?= TITLE_INFORMATION ?>
            <img src="./assets/images/dropdown.svg" />
          </button>
          <div class="dropdown-menu">
            <button><?= STATION_INFORMATION ?></button>
          </div>
        </div>
      </div>
    </nav>
    <script>
      const toggleMenu = () => document.body.classList.toggle("open");
    </script>
  </body>
</html>
