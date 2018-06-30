(require 'package)

(setq package-archives '(("gnu" . "https://elpa.emacs-china.org/gnu/")
                         ("melpa" . "https://elpa.emacs-china.org/melpa/")))

(defun require-package (package)
  "Install give package if it was not installed before"
  (if (package-installed-p package)
      t
    (progn
      (unless (assoc package package-archive-contents)
	(package-refresh-contents))
      (package-install package))))

(package-initialize)

(provide 'init-elpa)
