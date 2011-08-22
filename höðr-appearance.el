;; -*- coding: utf-8 -*-
;;
;; Appearance for Höðr
;;
;; Copyright (C) 2011 by Johan Benum Evensberget <johanbev@ifi.uio.no>
;;


;; First set up some fallback colours, in case color-theme fails
;; somehow:

(setq default-frame-alist 
	'((cursor-color . "red")
	  (foreground-color . "gray61")
	  (background-color . "gray12")))

;; Now, in order not to go crazy when editing lisp we show parens:

(show-paren-mode t)

;; Then lets use a proper programmer's font:

;; if we are in X and clean is present then use it:
(when window-system
  (cond 
   ((find "clean" (font-family-list) :test #'equal)
    (set-default-font "-Schumacher-Clean-medium-r-*-*-12-*-*-*-c-60-iso10646-1"))))

;; otherwise nag johan to find some alternative or DIY.

;; Now, let's use color-theme for some eye-candy

(höðr:add-load-path "themes")

(when (featurep 'color-theme)
  ; Uncomment the theme you want. We don't load zenburn as loading it
  ; changes some faces (why?).

  ; Get Zenburn:
  ;(load-library "zenburn")
  ;(zenburn)
  ;; Get Luobbal
  (load-library "luobbal")
  ;; Init with luobbal-colors
  (luobbal-colors))


