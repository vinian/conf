
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; inspired by http://manenko.com/2016/08/03/setup-emacs-for-rust-development.html
(add-to-list 'load-path
	     (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa)
(require 'init-common)
(require 'init-auto-complete)
(require 'init-auto-pair)
(require 'init-ui)
(require 'init-editing)
(require 'init-rust)
(require 'init-python)

(provide 'init)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (flycheck-rust racer flycheck rainbow-delimiters autopair company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
