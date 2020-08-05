;;; init-go.el --- Go support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; See also init-go.el

(when (maybe-require-package 'go-mode)
  (require-package 'company-go)
  (require-package 'company)
  (require-package 'go-eldoc)
  (require-package 'go-direx)
  (setq company-tooltip-limit 20)
  (setq company-idle-delay .1)
  (setq company-echo-delay 0)
  (setq company-begin-commands '(self-insert-command)))

;; lsp-mode is not completely compatible to go-mode
;; (add-hook 'go-mode-hook 'lsp-deferred)
(add-hook 'go-mode-hook (lambda ()
                          (go-eldoc-setup)
                          (set (make-local-variable 'company-backends) '(company-go))
                          (define-key go-mode-map (kbd "M-.") 'godef-jump)
                          (define-key go-mode-map (kbd "C-c C-l") 'go-direx-pop-to-buffer)
                          (company-mode)))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))

(provide 'init-go)
;;; init-go.el ends here
