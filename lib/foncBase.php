<?php

function choixAlert($message)
{
  $alert = array();
  switch($message)
  {
    case 'query' :
      $alert['messageAlert'] = ERREUR_QUERY;
      break;
    case 'url_non_valide' :
      $alert['messageAlert'] = TEXTE_PAGE_404;
      break;
    case 'unknown_mail' :
      $alert['messageAlert'] = UNKWOWN_MAIL;
      break;
    case 'unknown_password' :
      $alert['messageAlert'] = UNKNOWN_PASSWORD;
      break;
    default :
      $alert['messageAlert'] = MESSAGE_ERREUR;
  }
  return $alert;
}
