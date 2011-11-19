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

(global-set-key (kbd "C-x C-k") 'kill-this-buffer)


;; Some important commands have very long names, we can use alias to help us out:

(defalias 'qrr 'query-replace-regexp)
(defalias 'llm 'long-lines-mode)
(defalias 'afm 'auto-fill-mode)
(defalias 'mmm 'magit-status)


;; We use keys on hyper to navigate between windows on hyperspeed:

(defun swap-with (dir)
  (interactive)
  (let ((other-window (windmove-find-other-window dir)))
    (when other-window
      (let* ((this-window (selected-window))
             (this-buffer (window-buffer this-window))
             (other-buffer (window-buffer other-window))
             (this-start (window-start this-window))
             (other-start (window-start other-window)))
        (set-window-buffer this-window other-buffer)
        (set-window-buffer other-window this-buffer)
        (set-window-start this-window other-start)
        (set-window-start other-window this-start)))))

(global-set-key (kbd "H-J") (lambda () (interactive) (swap-with 'down)))3
(global-set-key (kbd "H-K") (lambda () (interactive) (swap-with 'up)))
(global-set-key (kbd "H-H") (lambda () (interactive) (swap-with 'left)))
(global-set-key (kbd "H-L") (lambda () (interactive) (swap-with 'right)))

(global-set-key (kbd "H-f") 'other-window)

(global-set-key (kbd "H-j") 'windmove-down)
(global-set-key (kbd "H-k") 'windmove-up)
(global-set-key (kbd "H-h") 'windmove-left)
(global-set-key (kbd "H-l") 'windmove-right)

(global-set-key (kbd "H-c") 'delete-window)
(global-set-key (kbd "H-C") 'kill-buffer-and-window)
(global-set-key (kbd "H-d") 'delete-completion-window)

