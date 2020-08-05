;;; init-proxy.el --- Proxy support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; See also init-proxy-cider.el

(setq url-proxy-services '(("http" . "localhost:41091")
                           ("https" . "localhost:41091")))
(provide 'init-proxy)
;;; init-proxy.el ends here
