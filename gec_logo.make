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


projects[] = ctools
projects[] = fivestar
projects[] = votingapi
projects[l10n_update] = 1.x-dev

projects[] = lightbox2
projects[] = logintoboggan

projects[] = features
projects[] = panels
projects[] = simplenews

projects[] = views
projects[] = admin

project[] = zen

