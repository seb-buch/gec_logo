<?php

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function gec_logo_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = "Logo GEC";
  $form['site_information']['site_slogan']['#default_value'] = "Choisis ton logo pour le GEC!";
}

