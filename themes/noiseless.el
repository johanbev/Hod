;; -*- coding: utf-8
;;
;; Noiseless colour scheme
;;
;; low-contrast light colors
;;
;; Copyright (C) 2011 by Johan Benum Evensberget <johanbev@ifi.uio.no>
;;

(defun noiseless ()
  (interactive)
  (color-theme-install
   '(noiseless
      ((background-color . "#ededed")
      (background-mode . light)
      (border-color . "#dedede")
      (cursor-color . "#a42828")
      (foreground-color . "#666666")
      (mouse-color . "black"))
     (fringe ((t (:background "#dedede"))))
     (mode-line ((t (:foreground "#0a0401" :background "#9d9c9b"))))
     (region ((t (:background "#cccbc7"))))
     (font-lock-builtin-face ((t (:foreground "#f83a41"))))
     (font-lock-comment-face ((t (:foreground "#303030"))))
     (font-lock-function-name-face ((t (:foreground "#0a7eff"))))
     (font-lock-keyword-face ((t (:foreground "#fc9836"))))
     (font-lock-string-face ((t (:foreground "#4129c7"))))
     (font-lock-type-face ((t (:foreground"#0a26ff"))))
     (font-lock-variable-name-face ((t (:foreground "#e6a00f"))))
     (minibuffer-prompt ((t (:foreground "#2856f6" :bold t))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t))))
     )))
(provide 'noiseless)
