(require 'init-elpa)

(require-package 'color-theme)
;;(require-package 'atom-one-dark-theme)
(require-package 'golden-ratio)

(require 'golden-ratio)

(set-face-attribute 'default nil :height 140)
(setq-default line-spacing 0.4)

(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)
(color-theme-aalto-light)

;; (load-theme 'atom-one-dark t)
(golden-ratio-mode 1)
;; large screen
(setq golden-ratio-auto-scale t)

(set-face-attribute 'default nil
                    :family "Monaco" :height 150 :weight 'normal)

(provide 'init-ui)
