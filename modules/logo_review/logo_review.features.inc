<?php
/**
 * @file
 * logo_review.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function logo_review_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "page_manager" && $api == "pages_default") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_views_api().
 */
function logo_review_views_api() {
  return array("version" => "3.0");
}

/**
 * Implements hook_image_default_styles().
 */
function logo_review_image_default_styles() {
  $styles = array();

  // Exported image style: logo_big.
  $styles['logo_big'] = array(
    'name' => 'logo_big',
    'effects' => array(
      3 => array(
        'label' => 'Échelle',
        'help' => 'La mise à l\'échelle maintiendra les proportions originales de l\'image. Si une seule dimension est précisée, l\'autre dimension sera calculée automatiquement.',
        'effect callback' => 'image_scale_effect',
        'dimensions callback' => 'image_scale_dimensions',
        'form callback' => 'image_scale_form',
        'summary theme' => 'image_scale_summary',
        'module' => 'image',
        'name' => 'image_scale',
        'data' => array(
          'width' => '600',
          'height' => '600',
          'upscale' => 1,
        ),
        'weight' => '1',
      ),
    ),
  );

  // Exported image style: logo_thumb.
  $styles['logo_thumb'] = array(
    'name' => 'logo_thumb',
    'effects' => array(
      1 => array(
        'label' => 'Échelle',
        'help' => 'La mise à l\'échelle maintiendra les proportions originales de l\'image. Si une seule dimension est précisée, l\'autre dimension sera calculée automatiquement.',
        'effect callback' => 'image_scale_effect',
        'dimensions callback' => 'image_scale_dimensions',
        'form callback' => 'image_scale_form',
        'summary theme' => 'image_scale_summary',
        'module' => 'image',
        'name' => 'image_scale',
        'data' => array(
          'width' => '220',
          'height' => '220',
          'upscale' => 1,
        ),
        'weight' => '1',
      ),
    ),
  );

  return $styles;
}

/**
 * Implements hook_node_info().
 */
function logo_review_node_info() {
  $items = array(
    'logo' => array(
      'name' => t('Logo'),
      'base' => 'node_content',
      'description' => t('Proposition de logo pour le GEC'),
      'has_title' => '1',
      'title_label' => t('Titre'),
      'help' => '',
    ),
    'simplenews' => array(
      'name' => t('Simplenews newsletter'),
      'base' => 'node_content',
      'description' => t('A newsletter issue to be sent to subscribed email addresses.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
  );
  return $items;
}
