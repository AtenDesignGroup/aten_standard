<?php

/**
 * @file
 * Enables modules and site configuration for a Aten standard site installation.
 */

use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function aten_standard_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  $form['#submit'][] = 'aten_standard_form_install_configure_submit';
}

/**
 * Submission handler to sync the contact.form.feedback recipient.
 */
function aten_standard_form_install_configure_submit($form, FormStateInterface $form_state) {
  // React on the save of the install configuration.
}
