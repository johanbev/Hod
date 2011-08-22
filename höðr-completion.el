;; -*- coding: utf-8 -*-
;;
;;  Completion settings for Höðr
;;
;; Copyright (C) 2011 by Johan Benum Evensberget <johanbev@ifi.uio.no>
;;


(unless (boundp 'höðr:version)
  (error "Load hödr first."))

;; Höðr uses hippie-expand. Someone should really merge this with
;; mode specific completions such as SLIME and ELI.

(setq hippie-expand-try-functions-list ; functions to use for expansion
      '(try-complete-lisp-symbol-partially
        try-expand-all-abbrevs  
        try-expand-dabbrev
        try-expand-list
        try-complete-lisp-symbol
        try-expand-line
        try-complete-file-name
        try-complete-file-name-partially
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill))

