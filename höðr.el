;; -*- coding: utf-8 -*-
;;
;; Höðr 0.2
;;
;; This is Höðr, a collection of emacs settings and add-on packages.
;;
;; Copyright (C) 2011-2012 by Johan Benum Evensberget <johan.benum@gmail.com>
;;
;; No rights reserved.

(defvar höðr:version 0.2)

(defvar höðr:root "~/höðr")

(add-to-list 'load-path höðr:root)

(require 'cl) 

(defun höðr:get-path (path)
 (format "%s/%s" höðr:root path))

(defun höðr:add-load-path (path)
  (add-to-list 'load-path (höðr:get-path path)))


;; First load settings:

(load-library "höðr-behaviour") ; load global behaviour
(load-library "höðr-keys") ; load global keybindings
(load-library "höðr-completion") ; load completion/expanding

;; We use color theme to manage colors. To be changed in 24.

(progn
  (höðr:add-load-path "color-theme")
  (load-library "color-theme")
  (load-library "höðr-appearance"))

;; Now that apperance, completion and general settings have been
;; loaded, we start loading up any additional packages.


;; We now have ELPA to help us out with many of these packages:

(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(defun höðr:install-elpas ()
  (interactive)
  (when (y-or-n-p "Install magit? ")
    (package-install 'magit))
  (when (y-or-n-p "Install yasnippet? ")
    (package-install 'yasnippet-bundle))
  (when (y-or-n-p "Install js2-mode? ")
    (package-install 'js2-mode))
  (when (y-or-n-p "Install json? ")
    (package-install 'json))
  (when (y-or-n-p "Install nxml? ")
    (package-install 'nxml)))

;; Some small els are nice but not in elpa yet:

(höðr:add-load-path "misc")
(load-library "csharp-mode")


;;; Slime (elpa has slime but it's age old)

(setq inferior-lisp-program "/usr/bin/sbcl")
(höðr:add-load-path "slime")
(require 'slime)
(slime-setup '(slime-fancy ))

;;; Templates

(höðr:add-load-path "tmpl")
(load-library "template")
(global-template-insert t)

;;; Fastnav

(höðr:add-load-path "fastnav")
(load-library "fastnav")


