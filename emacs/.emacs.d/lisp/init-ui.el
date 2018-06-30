(require 'init-elpa)

(require-package 'color-theme)
(require-package 'golden-ratio)

(require 'golden-ratio)

(set-face-attribute 'default nil :height 140)
(setq-default line-spacing 0.4)

(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)
(golden-ratio-mode 1)
;; large screen
(setq golden-ratio-auto-scale t)

(color-theme-dark-laptop)

(provide 'init-ui)
