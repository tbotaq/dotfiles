;; set Japanese as language
(set-language-environment 'Japanese)

;; set UTF-8 as code system
(prefer-coding-system 'utf-8)

;; show line number
(require 'linum)
(global-linum-mode t)

(require 'package)
;; add MELPA
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
;; add MELPA-stable
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;; add Marmalade
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/") t)
;; add Org
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

;; ruby-block.el --- highlight matching block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)
;; Rinari
(add-to-list 'load-path "~/path/to/your/elisp/rinari")
(require 'rinari)

(setq-default indent-tabs-mode nil)

(setq-default show-trailing-whitespace t)

(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

(menu-bar-mode -1)

;; yes or no => y or n
(fset 'yes-or-no-p 'y-or-n-p)

(add-to-list 'auto-mode-alist '("\\.erb?$"     . web-mode))

;;; *.~ 
(setq make-backup-files nil)
;;; .#* 
(setq auto-save-default nil)
