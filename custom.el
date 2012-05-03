(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; disable screen flashing
(setq ring-bell-function 'ignore)

;; use M-` to switch between windows
(global-set-key (kbd "M-`") 'other-window)

;; auto indent = 4
(add-hook 'lisp-mode-hook '(lambda ()
			     (local-set-key (kbd "RET") 'newline-and-indent)))
(add-hook 'c-mode-common-hook '(lambda ()
				 (local-set-key (kbd "RET") 'newline-and-indent)))
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq ruby-indent-level 4)
(setq-default tab-width 4)

;; goto line
(global-set-key (kbd "C-c g") 'goto-line)

;; editor mode
(setq auto-mode-alist (cons '("\\.html$" . html-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.asp$" . html-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.php$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.tpl$" . html-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.pss$" . css-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.pjs$" . javascript-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.json$" . javascript-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.txt$" . org-mode) auto-mode-alist))

;; use ediff
(eval-after-load "vc-hooks"
  '(define-key vc-prefix-map "=" 'ediff-revision))


;; auto warp line
(toggle-truncate-lines t)

;; jabber
;; (require 'jabber-autoloads)
;; (setq jabber-account-list
;;       '(("blueabysm@gmail.com"
;;          (:network-server . "talk.google.com")
;;          (:connection-type . ssl))))

;; scroll the other window
(global-set-key (kbd "M-p") 'scroll-other-window-down)
(global-set-key (kbd "M-n") 'scroll-other-window)

;; map key to w3m-browse-url
(global-set-key (kbd "C-x p") 'w3m-browse-url)
(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
(global-set-key "\C-xm" 'browse-url-at-point)
