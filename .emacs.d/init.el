(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

(setq-default indent-tabs-mode nil)
(setq-default show-trailing-whitespace t)

(menu-bar-mode -1)

; yes or no => y or n
(fset 'yes-or-no-p 'y-or-n-p)

; *.~ 
(setq make-backup-files nil)
; .#* 
(setq auto-save-default nil)
