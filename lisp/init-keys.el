;;; init-keys.el --- Keys support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; See also init-keys.el

(global-set-key (kbd "M-`") 'other-window)
(add-hook 'global-flycheck-mode-hook
          (lambda ()
            (define-key flycheck-mode-map (kbd "C-c C-p") 'flycheck-previous-error)
            (define-key flycheck-mode-map (kbd "C-c C-n") 'flycheck-next-error)))

(add-hook 'global-diff-hl-mode-hook
          (lambda ()
            (define-key diff-hl-mode-map (kbd "C-c C-,") 'diff-hl-next-hunk)
            (define-key diff-hl-mode-map (kbd "C-c ,") 'diff-hl-previous-hunk)))

(provide 'init-keys)
;;; init-keys.el ends here
