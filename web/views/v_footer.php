<!-- fin de page -->
<script src=<?= PATH_JS . 'footer.js?flag=' . $_SESSION['user_id'] ?> type="module" defer></script>

</section>
<!-- Pied de page -->
<footer>
	<section>
		<nav>
			<h2>
				<?= TITLE_COMPANY ?>
			</h2>
			<a href="index.php?page=cgu"><?= TITLE_TERMS_OF_USE ?></a>
			<a href="index.php?page=privacy_policy">
				<?= TITLE_PRIVACY_POLICY ?>
			</a>
			<a id="license" rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/" target="_blank"><img
					alt="Licence Creative Commons" style="border-width:0"
					src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" /></a>
		</nav>
		<nav>
			<h2>
				<?= TITLE_INFORM_YOU ?>
			</h2>
			<a href="index.php?page=informations"><?= TITLE_INFORMATION ?></a>
		</nav>
		<nav>
			<h2>
				<?= TITLE_QUICK_ACCESS ?>
			</h2>
			<a href="index.php?page=home">
				<?= TITLE_HOME ?>
			</a>
			<?php if ($_SESSION['logged']) {
				echo '<a href="#" id="deconnexion">' . LOGOUT . '</a>';
			} else {
				echo '<a href="index.php?page=login">' . MY_ACCOUNT . '</a>';
			} ?>
			<?php
			$staff = new StaffDAO();
			if (!$staff->isEmployee($_SESSION['user_id'])) { ?>
				<a href="index.php?page=contact">
					<?= TITLE_CONTACT ?>
				</a>
			<?php } ?>
			<a href="http://82.65.238.70:5569/" target="_blank">
				<?= TITLE_GITPULL ?>
			</a>
		</nav>
	</section>
	<p id="copyright">Tchoutchou Copyright ©2022</p>
	<script src=<?= PATH_JS . 'footer.js' ?> type="module"></script>
</footer>
<div id="lang">
	<p id="SUCCES_LOGOUT"><?= SUCCES_LOGOUT ?></p>
</body>

</html>