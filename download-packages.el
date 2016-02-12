(require 'cl)

(setq packages-content-refreshed nil)

(defun packages-content-refresh-if-needed ()
  (unless packages-content-refreshed
    (package-refresh-contents)
    (setq packages-content-refreshed t)))

(defun download-one-package (package)
  (packages-content-refresh-if-needed)
  (package-install package))

(defun download-packages-download (packages)
  (loop for p in packages
	unless (package-installed-p p)
	do (download-one-package p)))

(provide 'download-packages)
