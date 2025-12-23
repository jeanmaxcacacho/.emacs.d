;; -*- lexical-binding: 
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

(add-to-list 'default-frame-alist
             '(font . "VictorMono Nerd Font Mono-12"))

(load-theme 'modus-vivendi t)
(add-to-list 'default-frame-alist '(alpha . 80))

(require 'package)

(setq package-archives
      '(("gnu"   . "https://elpa.gnu.org/packages/")
	("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa" . "https://melpa.org/packages/")))

(package-initialize)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(use-package vterm
  :ensure t)
