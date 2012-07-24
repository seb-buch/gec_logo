; Makefile for the gec_logo_profile Install profile.
; This lives in the same level as the install profile itself
; A separate stub makefile or 'build' file will fetch Drupal core + this
install profile,
; then recursively execute this makefile to fetch the remaining components.
;
; Core version to work with
core = 7.x
;
; Drush Make API compatibility version
api = 2

projects[block] = 7.14
projects[aggregator] = 7.14
projects[color] = 7.14
projects[comment] = 7.14
projects[contextual] = 7.14
projects[dashboard] = 7.14
projects[field] = 7.14
projects[field_sql_storage] = 7.14
projects[field_ui] = 7.14
projects[file] = 7.14
projects[filter] = 7.14
projects[help] = 7.14
projects[image] = 7.14
projects[list] = 7.14
projects[locale] = 7.14
projects[menu] = 7.14
projects[node] = 7.14
projects[number] = 7.14
projects[options] = 7.14
projects[path] = 7.14
projects[rdf] = 7.14
projects[search] = 7.14
projects[shortcut] = 7.14
projects[taxonomy] = 7.14
projects[text] = 7.14
projects[trigger] = 7.14
projects[update] = 7.14
projects[user] = 7.14
projects[dblog] = 7.14
projects[system] = 7.14
projects[ctools] = 1.0
projects[ctools_custom_content] = 1.0
projects[views_content] = 1.0
projects[page_manager] = 1.0
projects[fivestar] = 2.0-alpha2
projects[votingapi] = 2.6
projects[l10n_update] = 1.0-beta3
projects[lightbox2] = 1.0-beta1
projects[logintoboggan] = 1.3
projects[standard] = 7.14
projects[logo_review] = 1.0
projects[features] = 1.0-rc3
projects[panels] = 3.2
projects[profiler_builder] = 1.0-alpha2
projects[simplenews] = 1.0-rc1
projects[views_ui] = 3.3
projects[views] = 3.3
projects[admin] = 2.0-beta3

libraries[profiler][download][type] = "get"
libraries[profiler][download][url] = "http://ftp.drupal.org/files/projects/profiler-7.x-2.0-beta1.tar.gz"

