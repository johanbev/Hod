;; -*- coding: utf-8 -*-
;;
;; Höðr 0.1 
;;
;; This is Höðr, a collection of emacs settings and add-on packages.
;;
;; Copyright (C) 2011 by Johan Benum Evensberget <johanbev@ifi.uio.no>
;;


(defvar höðr:version 0.1.1)

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

;; We use color theme to manage colors.

(progn
  (höðr:add-load-path "color-theme")
  (load-library "color-theme")
  (load-library "höðr-appearance"))

;; Now that apperance, completion and general settings have been
;; loaded, we start loading up any additional packages.


; slime magit yas templates fastnav

;;; Slime:

(setq inferior-lisp-program "/usr/bin/sbcl")
(höðr:add-load-path "slime")
(require 'slime)
(slime-setup '(slime-fancy slime-js))

;;; ELI:

;(höðr:add-load-path "eli")
;(load-library "fi-site-init")

;;; Magit:

(höðr:add-load-path "magit")
(load-library "magit")

;;; Templates

(höðr:add-load-path "tmpl")
(load-library "template")
(global-template-insert t)

;;; Fastnav

(höðr:add-load-path "fastnav")
(load-library "fastnav")


;;; These misc packages are loaded upon request

(höðr:add-load-path "misc")
