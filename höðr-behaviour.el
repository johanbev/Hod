;; -*- coding: utf-8 -*-
;;
;;  Behaviour settings for Höðr
;;
;; Copyright (C) 2011 by Johan Benum Evensberget <johanbev@ifi.uio.no>
;;


(unless (boundp 'höðr:version)
  (error "Load hödr first."))

;; The modern world uses UTF-8. Emacs is modern. 
;; Therefore emacs uses UTF-8:

(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")

;; Misc. settings:

(setq next-line-add-newlines nil)     ; avoid blank lines at end of file
(setq inhibit-startup-message t)      ; don't display startup screen
(setq mouse-yank-at-point t)          ; yank at cursor instead of mouse
(setq backup-by-copying-when-linked t) ; make sure links point to newest file
(setq sentence-end-double-space nil)  ; no double space to end sentence
(setq kill-whole-line t)              ; kill whole line if at beginning
(setq search-highlight t)             ; Highlight current search match
(setq query-replace-highlight t)      ; highlight during quey replace
(setq fill-column 72)                 ; auto-fill wrap column
(setq require-final-newline t)        ; always end files with a newline
(fset 'yes-or-no-p 'y-or-n-p)         ; always ask y/n questions
(setq make-backup-files nil)          ; do not make backup files
(setq completion-ignore-case t)       ; don't consider case in completions

(line-number-mode t)                  ; want line numbers in modeline
(column-number-mode t)                ; want column numbers in modeline

(load-library "icomplete")            ; shows completions in minibuffer

(setq ring-bell-function 'ignore)     ; NO FUCKING ALARM!

;; In order to prevent pain and suffering and hate,
;; we indent with spaces only:

(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; Use transient marks to not confuse everybody:

(transient-mark-mode 1)

;; We want tramp to use ssh.

(setq tramp-default-method "ssh")

;; Use midnight mode to clean up buffers in long-running emacs-sessions:

(require 'midnight)

(midnight-delay-set 'midnight-delay 0)
(setq midnight-period 14400) ;; Clean up buffers every 4 hours.

;; Now, custom can be nice, but we don't want it to clutter up .emacs:

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)
