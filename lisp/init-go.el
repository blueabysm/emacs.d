;;; init-go.el --- Go support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; See also init-go.el

(when (maybe-require-package 'go-mode)
  (require-package 'company-go)
  (require-package 'company)
  (require-package 'go-eldoc)
  (require-package 'go-direx)
  (require-package 'company-lsp)
  (setq company-tooltip-limit 20)
  (setq company-idle-delay .1)
  (setq company-begin-commands '(self-insert-command))
  (when (maybe-require-package 'lsp-mode)
    (add-hook 'go-mode-hook (lambda ()
                              (go-eldoc-setup)
                              (define-key go-mode-map (kbd "C-c C-l") 'go-direx-pop-to-buffer)
                              (set (make-local-variable 'company-backends) '(company-lsp))
                              (lsp)
                              (company-mode)))))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))

(provide 'init-go)
;;; init-go.el ends here
