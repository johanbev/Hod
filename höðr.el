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


;; Load ourselves

(defvar höðr:root "~/.emacs.d/höðr")

(add-to-list 'load-path höðr:root)

(require 'cl) 

(defun höðr:get-path (path)
 (format "%s/%s" höðr:root path))

(defun höðr:add-load-path (path)
  (add-to-list 'load-path (höðr:get-path path)))


;;; core höðr shoud now have been setup, and we can provide ourselves:

(provide 'höðr)


;; First load settings:

(load-library "höðr-behaviour") ; load global behaviour
(load-library "höðr-keys") ; load global keybindings
(load-library "höðr-completion") ; load completion/expanding

;; We use color theme to manage colors. To be changed in 24, but we aren't there quite yet

(progn
  (höðr:add-load-path "ext/color-theme")
  (load-library "color-theme")
  (load-library "höðr-appearance"))

;; Now that apperance, completion and general settings have been
;; loaded, we start loading up any additional packages.


;; We now have ELPA to help us out with many of these packages:

(when (and (file-exists-p "~/.emacs.d/elpa/package.el")
           (load
            (expand-file-name "~/.emacs.d/elpa/package.el")))
  (package-initialize))



;; Some small els are nice but not in elpa yet:

(höðr:add-load-path "ext/misc")
(load-library "csharp-mode")


;;; Slime (elpa has slime but it's age old)

(setq inferior-lisp-program "/usr/bin/sbcl")
(höðr:add-load-path "ext/slime")
(require 'slime)
(slime-setup '(slime-fancy))

;;; Templates

(höðr:add-load-path "tmpl")
(load-library "template")
(global-template-insert t)

;;; Fastnav

(höðr:add-load-path "fastnav")
(load-library "fastnav")


