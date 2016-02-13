;;; packages-download-utils --- download packages
;;; Commentary:
;;; Download all packages of a list.

;;; Code:
(require 'cl)

(setq packages-content-refreshed nil)

(defun packages-content-refresh-if-needed ()
  (unless packages-content-refreshed
    (package-refresh-contents)
    (setq packages-content-refreshed t)))

(defun download-one-package (package)
  (packages-content-refresh-if-needed)
  (package-install package))

(defun packages-download-list (packages)
  (loop for p in packages
	unless (package-installed-p p)
	do (download-one-package p)))

(provide 'packages-download-utils)
;;; packages-download-utils.el ends here
