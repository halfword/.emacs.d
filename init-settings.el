;;
(server-mode 1)

;;; Shell for windows.
(setq shell-file-name "D:/cygwin/bin/bash.exe")
(setq explicit-shell-file-name "D:/cygwin/bin/bash.exe")
;;(setq shell-file-name "C:/WINDOWS/system32/cmd.exe")
;;(setq explicit-shell-file-name "C:/WINDOWS/system32/cmd.exe")
(setenv "SHELL" shell-file-name)

;;缺省文本模式
(setq default-major-mode 'text-mode)

;;禁用启动画面
(setq inhibit-startup-message t)

(ido-mode t) 

;;鼠标指针规避光标
(mouse-avoidance-mode 'animate)

;;使用 y or n 提问
(fset 'yes-or-no-p 'y-or-n-p)

;;显示时间
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq frame-title-format "halfword@%f")

;;不生成临时文件
(setq-default make-backup-files nil)

;;设置字体大小
(set-default-font "Monospace-13")
(set-default-font "-outline-Consolas-bold-normal-normal-mono-19-*-*-*-c-*-iso8859-1")
 
(setq indent-tabs-mode nil)

;;outline模式前缀修改
(setq outline-minor-mode-prefix [(control o)])

;;显示行号
(require 'linum)
(global-linum-mode 1)
(setq linum-format "%2d ")

(require 'browse-kill-ring)
(global-set-key [(control c)(k)] 'browse-kill-ring)
(browse-kill-ring-default-keybindings)

;;(require 'tabbar)
;;(tabbar-mode)
;;(global-set-key (kbd "C-c C-o") 'tabbar-backward-group)
;;(global-set-key (kbd "C-c C-l") 'tabbar-forward-group)
;;(global-set-key (kbd "C-c C-p") 'tabbar-backward)
;;(global-set-key (kbd "C-c C-n") 'tabbar-forward)

;;org-mode
(setq org-startup-indented t)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)

;;cc-mode
(setq c-default-style '((cc-mode . "stroustrup")
                        (java-mode . "java")
                        (awk-mode . "awk")
                        (other . "free-group-style")))

(provide 'init-settings)
