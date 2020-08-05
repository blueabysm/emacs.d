;;; init-visual-regexp.el --- Visual-Regexp support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; See also init-visual-regexp.el

(when (maybe-require-package 'visual-regexp)
  (require-package 'visual-regexp)
  (global-set-key (kbd "C-c C-/") 'vr/replace))
(provide 'init-visual-regexp)
;;; init-visual-regexp.el ends here
