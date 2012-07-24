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


projects[ctools] = 1.0
projects[fivestar] = 2.0-alpha2
projects[votingapi] = 2.6
projects[l10n_update] = 1.0-beta3
projects[lightbox2] = 1.0-beta1
projects[logintoboggan] = 1.3

projects[features] = 1.0-rc3
projects[panels] = 3.2
projects[simplenews] = 1.0-rc1

projects[views] = 3.3
projects[admin] = 2.0-beta3

libraries[profiler][download][type] = "get"
libraries[profiler][download][url] = "http://ftp.drupal.org/files/projects/profiler-7.x-2.0-beta1.tar.gz"

