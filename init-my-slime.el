;;slime and clozure-cl
(if *win32*
    (progn
      (setq slime-lisp-implementations '((clozurecl ("~/ccl-1.6-windowsx86/wx86cl.exe"))))
      (require 'slime-autoloads)
      (setq slime-net-coding-system 'utf-8-unix)
      (slime-setup '(slime-fancy slime-asdf slime-banner))

      ;;keybingdings
      (global-set-key (kbd "C-c C-q") 'slime-close-all-parens-in-sexp)))

(provide 'init-my-slime)
