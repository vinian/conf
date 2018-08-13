(require 'init-elpa)

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

(require-package 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(add-hook 'python-mode-hook 'my-python-mode-hook)

(defun my-python-mode-hook ()
  (hs-minor-mode 1))

(provide 'init-python)
