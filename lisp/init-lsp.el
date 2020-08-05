;;; init-lsp.el --- Language Server Protocol support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; See also init-lsp.el

(when (maybe-require-package 'lsp-mode)
  ;; (setq lsp-enable-file-watchers nil)
  ;; (setq lsp-file-watch-threshold 0)
  (require 'lsp-mode)
  (add-hook 'lsp-mode-hook (lambda ()
                             (define-key lsp-mode-map (kbd "M-.") 'lsp-find-definition)
                             (define-key lsp-mode-map (kbd "M-[") 'lsp-find-type-definition)
                             (define-key lsp-mode-map (kbd "M-]") 'lsp-find-references))))


(provide 'init-lsp)
;;; init-lsp.el ends here
