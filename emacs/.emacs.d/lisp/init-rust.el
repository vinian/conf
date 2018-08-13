(require 'init-elpa)
(require-package 'company)
(require-package 'racer)
(require-package 'rust-mode)
(require-package 'flycheck)
(require-package 'flycheck-rust)
(require-package 'cargo)

(require 'company)
(require 'racer)
(require 'rust-mode)
(require 'electric)
(require 'eldoc)
(require 'flycheck)
(require 'flycheck-rust)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-hook 'rust-mode-hook #'company-mode)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'rust-mode-hook #'cargo-minor-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(add-hook 'rust-mode-hook
          '(lambda ()
	     (setq racer-cmd (concat (getenv "HOME") "/.cargo/bin/racer"))
	     (setq racer-rust-src-path (concat (getenv "HOME") "/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"))
             (local-set-key (kbd "TAB") #'company-indent-or-complete-common)
	     (electric-pair-mode 1)))

(add-hook 'rust-mode-hook 'my-rust-mode-hook)

(defun my-rust-mode-hook ()
  (hs-minor-mode 1))

(provide 'init-rust)

