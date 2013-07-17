;; -*- coding: utf-8 -*-
(setenv "HOME" "D:/emacs-24.3")
(setenv "PATH" "D:/emacs-24.3")

(setq emacs-load-start-time (current-time))
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;;----------------------------------------------------------------------------
;; Which functionality to enable (use t or nil for true and false)
;;----------------------------------------------------------------------------
(setq *spell-check-support-enabled* t)
(setq *macbook-pro-support-enabled* t)
(setq *is-a-mac* (eq system-type 'darwin))
(setq *is-carbon-emacs* (and *is-a-mac* (eq window-system 'mac)))
(setq *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))
(setq *win32* (eq system-type 'windows-nt) )
(setq *cygwin* (eq system-type 'cygwin) )
(setq *linux* (or (eq system-type 'gnu/linux) (eq system-type 'linux)) )
(setq *unix* (or *linux* (eq system-type 'usg-unix-v) (eq system-type 'berkeley-unix)) )
(setq *linux-x* (and window-system *linux*) )
(setq *xemacs* (featurep 'xemacs) )
(setq *emacs23* (and (not *xemacs*) (or (>= emacs-major-version 23))) )
(setq *emacs24* (and (not *xemacs*) (or (>= emacs-major-version 24))) )

;----------------------------------------------------------------------------
; Functions (load all files in defuns-dir)
; Copied from https://github.com/magnars/.emacs.d/blob/master/init.el
;----------------------------------------------------------------------------
(setq defuns-dir (expand-file-name "~/.emacs.d/defuns"))
(dolist (file (directory-files defuns-dir t "\\w+"))
  (when (file-regular-p file)
      (load file)))

;----------------------------------------------------------------------------
; Load configs for specific features and modes
;----------------------------------------------------------------------------
(require 'init-modeline)

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp) 

;; win32 auto configuration, assuming that cygwin is installed at "d:/cygwin"
(if *win32*
    (progn
      (setq cygwin-mount-cygwin-bin-directory "d:/cygwin/bin")
      (require 'setup-cygwin)))


(require 'init-elpa)
;;(require 'init-exec-path) ;; Set up $PATH
(require 'init-frame-hooks)
(require 'init-xterm)
(require 'init-osx-keys)
(require 'init-gui-frames)
(require 'init-maxframe)
(require 'init-proxies)
(require 'init-dired)
(require 'init-isearch)
(require 'init-uniquify)
(require 'init-ibuffer)
(require 'init-flymake)
;;(require 'init-artbollocks-mode)
(require 'init-recentf)
(require 'init-ido)
(if *emacs24* (require 'init-helm))
(require 'init-hippie-expand)
(require 'init-windows)
(require 'init-sessions)
(require 'init-fonts)
(require 'init-mmm)
;(require 'init-growl)
(require 'init-editing-utils)
(require 'init-git)
(require 'init-crontab)
(require 'init-textile)
(require 'init-markdown)
(require 'init-csv)
;;(require 'init-erlang)
(require 'init-javascript)
(require 'init-sh)
(require 'init-php)
(require 'init-org)
(require 'init-org-mime)
;;(require 'init-nxml)
(require 'init-css)
(require 'init-haml)
(require 'init-python-mode)
;;(require 'init-haskell)
;;(require 'init-ruby-mode)
(if (not (boundp 'light-weight-emacs)) (require 'init-rails))
;(require 'init-rcirc)
;;(require 'init-lisp)
;;(require 'init-slime)
(require 'init-my-slime)
;;(require 'init-clojure)
;;(require 'init-common-lisp)

(when *spell-check-support-enabled*
  (require 'init-spelling))

;;(require 'init-marmalade)

;; Finally set up themes, after most possibly-customised faces have been defined
(require 'init-themes) ; color-themes 6.6.1 has some problem

(require 'init-org2blog)

;;(require 'init-fill-column-indicator) ;make auto-complete dropdown wierd
(if (not (boundp 'light-weight-emacs)) (require 'init-yasnippet))

(require 'init-zencoding-mode) ;behind init-better-register to override C-j
(require 'init-yari)
(require 'init-cc-mode)
(require 'init-auto-complete) ; after init-yasnippeta to override TAB
(require 'init-semantic)
(require 'init-cmake-mode)
;;(require 'init-csharp-mode)
(require 'init-linum-mode)

;(require 'init-delicious) ;make startup slow, I don't use delicious in w3m
(require 'init-emacs-w3m)

;;(if (not (boundp 'light-weight-emacs)) (require 'init-eim))

(require 'init-thing-edit)
;;(require 'paredit-autoloads)


(require 'init-settings)
(require 'init-key)

;;doxymacs
(add-to-list 'load-path "~/.emacs.d/site-lisp/doxymacs-1.8.0/no-autoconf")
(require 'doxymacs)
(add-hook 'c-mode-common-hook 'doxymacs-mode)


;;everything
(setq everything-cmd "d:/Program Files/everything/es.exe")
(require 'everything)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector (vector "#c5c8c6" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#8abeb7" "#1d1f21"))
 '(custom-enabled-themes (quote (sanityinc-tomorrow-bright)))
 '(custom-safe-themes (quote ("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(fci-rule-color "#282a2e")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map (quote ((20 . "#cc6666") (40 . "#de935f") (60 . "#f0c674") (80 . "#b5bd68") (100 . "#8abeb7") (120 . "#81a2be") (140 . "#b294bb") (160 . "#cc6666") (180 . "#de935f") (200 . "#f0c674") (220 . "#b5bd68") (240 . "#8abeb7") (260 . "#81a2be") (280 . "#b294bb") (300 . "#cc6666") (320 . "#de935f") (340 . "#f0c674") (360 . "#b5bd68"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
