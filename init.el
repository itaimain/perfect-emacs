;;; init --- Init
;;; Commentary:
;;; Init everything.

;;; Code:
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(defun load-directory (directory)
  "Load recursively all '.el' files in DIRECTORY."
  (dolist (element (directory-files-and-attributes directory nil nil nil))
    (let* ((path (car element))
	   (fullpath (concat directory "/" path))
	   (isdir (car (cdr element)))
	   (ignore-dir (or (string= path ".") (string= path ".."))))
      (cond
       ((and (eq isdir t) (not ignore-dir))
	(load-directory fullpath))
       ((and (eq isdir nil) (string= (substring path -3) ".el"))
	(load (file-name-sans-extension fullpath)))))))

(load-directory "~/.emacs.d/utils")

(load (expand-file-name "~/.emacs.d/preferences"))

(require 'packages-download)
(packages-download-necessary)

(load-directory "~/.emacs.d/config")

(require 'preferences)
(require 'startup-log)
(startup-log-show)

(provide 'init)
;;; init.el ends here
