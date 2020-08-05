;;; init-go.el --- Go support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; See also init-go.el

(when (and (maybe-require-package 'go-mode)
           (maybe-require-package 'lsp-mode))
  (add-hook 'go-mode-hook #'lsp))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))

(provide 'init-go)
;;; init-go.el ends here
