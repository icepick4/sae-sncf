<?php echo shell_exec( 'cd /home/vo269ma/sae-sncf; git reset --hard origin/prod; git clean -d -f; git pull https://gitlab-ci-token:glpat-wFygfmCs9RddfneY2Zvo@forge.univ-lyon1.fr/p2103642/sae-sncf.git main');

echo "good?";

echo shell_exec( 'ls');
shell_exec( 'touch working') ?>