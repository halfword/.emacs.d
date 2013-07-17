;;
(server-mode 1)

;;; Shell for windows.
(setq shell-file-name "D:/cygwin/bin/bash.exe")
(setq explicit-shell-file-name "D:/cygwin/bin/bash.exe")
;;(setq shell-file-name "C:/WINDOWS/system32/cmd.exe")
;;(setq explicit-shell-file-name "C:/WINDOWS/system32/cmd.exe")
(setenv "SHELL" shell-file-name)

;;ȱʡ�ı�ģʽ
(setq default-major-mode 'text-mode)

;;������������
(setq inhibit-startup-message t)

(ido-mode t) 

;;���ָ���ܹ��
(mouse-avoidance-mode 'animate)

;;ʹ�� y or n ����
(fset 'yes-or-no-p 'y-or-n-p)

;;��ʾʱ��
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq frame-title-format "halfword@%f")

;;��������ʱ�ļ�
(setq-default make-backup-files nil)

;;���������С
(set-default-font "Monospace-13")
(set-default-font "-outline-Consolas-bold-normal-normal-mono-19-*-*-*-c-*-iso8859-1")
 
(setq indent-tabs-mode nil)

;;outlineģʽǰ׺�޸�
(setq outline-minor-mode-prefix [(control o)])

;;��ʾ�к�
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
