;;; ctags-update-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ctags-update-minor-mode ctags-update) "ctags-update"
;;;;;;  "ctags-update.el" (20958 4598 0 0))
;;; Generated autoloads from ctags-update.el

(autoload 'ctags-update "ctags-update" "\
update TAGS in parent directory using `exuberant-ctags' you
can call this function directly , or enable
`ctags-update-minor-mode' or with prefix `C-u' then you can
generate a new TAGS file in directory

\(fn &optional ARGS)" t nil)

(autoload 'ctags-update-minor-mode "ctags-update" "\
auto update TAGS using `exuberant-ctags' in parent directory.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("ctags-update-pkg.el") (20958 4598 31000
;;;;;;  0))

;;;***

(provide 'ctags-update-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ctags-update-autoloads.el ends here
