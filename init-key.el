;;;;;;;;公用功能快捷键设置
;;F1列模式
(global-set-key [f1] 'cua-mode)
;;恢复，常用键
(global-set-key [f2] 'undo)
;;F4,kill键，习惯设置，关闭当前buffer
(global-set-key [f4] 'kill-this-buffer)

;;Alt+space标记
(global-set-key (kbd "M-<SPC>") 'set-mark-command)


;;设置M-g为goto-line
(global-set-key (kbd "M-g") 'goto-line)

;; 刷新文件。
(global-set-key (kbd "C-c u") 'revert-buffer)

(provide 'init-key)
