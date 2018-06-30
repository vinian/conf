;;;

(require 'init-elpa)

;;
(require-package 'company)

(require 'company)

(add-hook 'after-init-hook 'global-company-mode)
(setq company-tooltip-align-annotations t)
(add-hook 'prog-mode-hook 'company-mode)

(provide 'init-auto-complete)
;;;
