;;; everything-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (everything-find-prompt everything-find-file) "everything"
;;;;;;  "everything.el" (20958 19308 0 0))
;;; Generated autoloads from everything.el

(defalias 'everything 'everything-find-file)

(autoload 'everything-find-file "everything" "\
Prompt for a search string, let the user choose one of the returned files and
open it.

\(fn)" t nil)

(autoload 'everything-find-prompt "everything" "\
Prompt for a query and return the chosen filename.
If the current major mode is dired or (e)shell-mode limit the search to
the current directory and its sub-directories.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("everything-pkg.el") (20958 19308 781000
;;;;;;  0))

;;;***

(provide 'everything-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; everything-autoloads.el ends here
