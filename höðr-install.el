;; -*- coding: utf-8 -*-
;;
;;  Installation routines for höðr
;;
;; Copyright (C) 2012 by  <johanbev@angrenost>
;;




(defun höðr:install-elpa ()
  (let ((buffer (url-retrieve-synchronously
	       "http://tromey.com/elpa/package-install.el")))
  (save-excursion
    (set-buffer buffer)
    (goto-char (point-min))
    (re-search-forward "^$" nil 'move)
    (eval-region (point) (point-max))
    (kill-buffer (current-buffer)))))

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

(defun höðr:install-deps ()
  (call-process "~/.emacs.d/höðr/get-deps" nil)
  (url-copy-file "http://www.emacswiki.org/emacs/download/csharp-mode.el"
                 "~/.emacs.d/höðr/ext/misc/csharp-mode.el"))


(defun höðr:first-time-setup (&optional root)
  (interactive)
  (message "Höðr first-time setup")
  (if (file-exists-p "~/.emacs.d/höðr")
      (message "Höðr is already installed.")
    (progn
      (mkdir "~/.emacs.d/höðr/ext/misc" t)
      (message "checking for ELPA")
      (unless (featurep 'package)
        (höðr:install-elpa))
      (höðr:install-elpas)
      (message "Downloading dependencies")
      (höðr:install-deps)
