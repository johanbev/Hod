;; -*- coding: utf-8 -*-
;;
;;  Keybindings for Höðr
;;
;; Copyright (C) 2011 by Johan Benum Evensberget <johanbev@ifi.uio.no>
;;

(unless (boundp 'höðr:version)
  (error "Load hödr first."))

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)


(global-set-key [C-left]  'backward-word)
(global-set-key [C-right] 'forward-word)
(global-set-key [C-up]    'backward-paragraph)
(global-set-key [C-down]  'forward-paragraph)

(global-set-key [insert]      'overwrite-mode)
(global-set-key [delete]      'delete-char)
(global-set-key [home]        'beginning-of-buffer)
(global-set-key [end]         'end-of-buffer)
(global-set-key [prior]       'scroll-down)
(global-set-key [next]        'scroll-up)

(global-set-key [f1] 'next-error)
(global-set-key [f2] 'previous-error)

(global-set-key [C-backspace] 'backward-kill-word)
(global-set-key [C-insert]    'kill-ring-save)
(global-set-key [C-delete]    'delete-region)
(global-set-key [C-home]      'beginning-of-buffer)
(global-set-key [C-end]       'end-of-buffer)
(global-set-key [C-prior]     'scroll-right)
(global-set-key [C-next]      'scroll-left)
(global-set-key [M-return]    'find-file-at-point)

(global-set-key [C-tab]       'hippie-expand) 


;;; Wheel the buffers:

(global-set-key  [M-mouse-5] 'previous-buffer)
(global-set-key  [M-mouse-4] 'next-buffer)


;; Some important commands have very long names, we can use alias to help us out:

(defalias 'qrr 'query-replace-regexp)
(defalias 'llm 'long-lines-mode)
(defalias 'afm 'auto-fill-mode)
(defalias 'mmm 'magit-status)
