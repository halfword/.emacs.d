;;;;;;;;���ù��ܿ�ݼ�����
;;F1��ģʽ
(global-set-key [f1] 'cua-mode)
;;�ָ������ü�
(global-set-key [f2] 'undo)
;;F4,kill����ϰ�����ã��رյ�ǰbuffer
(global-set-key [f4] 'kill-this-buffer)

;;Alt+space���
(global-set-key (kbd "M-<SPC>") 'set-mark-command)


;;����M-gΪgoto-line
(global-set-key (kbd "M-g") 'goto-line)

;; ˢ���ļ���
(global-set-key (kbd "C-c u") 'revert-buffer)

(provide 'init-key)
