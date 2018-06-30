(require 'init-elpa)

(require-package 'anaconda-mode)

(require-package 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(provide 'init-python)
