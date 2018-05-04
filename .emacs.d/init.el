;; hide startup screen
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("ba9be9caf9aa91eb34cf11ad9e8c61e54db68d2d474f99a52ba7e87097fa27f5" default)))
 '(inhibit-startup-screen t))

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

;; インデントはタブではなくスペースを使用
(setq-default indent-tabs-mode nil)

;; 行末の空白をハイライト
(setq-default show-trailing-whitespace t)

(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

;; メニューバーを非表示
(menu-bar-mode -1)

;; yes or no => y or n
(fset 'yes-or-no-p 'y-or-n-p)

(add-to-list 'auto-mode-alist '("\\.erb?$"     . web-mode))

;;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)
