(require 'init-elpa)

(require-package 'yaml-mode)

(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.sls\\'" . yaml-mode))

(add-hook 'yaml-mode-hook 'my-yaml-mode-hook)
(defun my-yaml-mode-hook ()
  (hs-minor-mode 1))

(provide 'init-yaml)
