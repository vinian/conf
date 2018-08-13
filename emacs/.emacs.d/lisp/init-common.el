(setq display-time-day-and-date t)
;;(setq display-time-24hr-format)
(display-time)

;; disable menu and toolbar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; 禁止ecb启动提示
(setq ecb-tip-of-the-day nil)

;;设置行宽
(setq-default fill-column 80)
(setq auto-fill-mode t)

(setq time-stamp-start "最后更新时间:[   ]+\\\\?")
(setq time-stamp-end: "\n")
(setq time-stamp-format: "%:y年%:m月%:d日")

;; 显示列号
(setq column-number-mode t)
(setq line-number-mode t)

;; 高亮显示拷贝区域
(transient-mark-mode t)

;; 交互式粘贴
(setq x-select-enable-clipboard t)

;; 语法高亮
(global-font-lock-mode 1)

;; 自动显示图片
(auto-image-file-mode)

;; 光标靠近指针时，指针自动让开
(mouse-avoidance-mode 'animate)

;; 显示匹配的括号
(show-paren-mode t)

;; 去掉工具条
(tool-bar-mode -1)

;;输入密码时不明文显示
(add-hook 'comint-output-filter-functions
	  'comint-watch-for-password-prompt)

(prefer-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;; 禁止响铃
(setq visible-bell nil)
;; 启动界面
;; 关闭splash-screen
(setq inhibit-splash-screen t)
;关闭startup-screen
(setq inhibit-startup-message t)

;显示行号
(set-scroll-bar-mode nil); no scroll bar, even in x-window-system
(global-linum-mode t)
(setq linum-format "  %d ")

;; 外观
(setq frame-title-format "willian.wnh@gmail.com")

;; By an unknown contributor
(global-set-key "%" 'match-paren)

;; session
(desktop-save-mode t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; open outline-mode
(outline-minor-mode 1)

(provide 'init-common)
