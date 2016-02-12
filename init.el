(add-to-list 'load-path (expand-file-name "~/.emacs.d/config/"))

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(defvar packages-list-1
  '(ido-vertical-mode
    ggtags
    magit
    ace-jump-mode
    smooth-scrolling
    idle-highlight-mode
    function-args
    sudo-ext
    swiper
    volatile-highlights
    diff-hl
    async
    helm
    popup
    auto-complete
    slime				; must be the last one of this list(should have a delay after)
    ))

(defvar packages-list-2
  '(ac-slime
    comment-dwim-2
    drag-stuff
    epl
    dash
    let-alist
    pkg-info
    flycheck
    whitespace-cleanup-mode
    makefile-runner
    auto-package-update
    expand-region
    undo-tree
    sudo-edit
    autopair
    yasnippet
    ))

(load (expand-file-name "~/.emacs.d/download-packages"))
(download-packages-download packages-list-1)
(sleep-for 1)
(download-packages-download packages-list-2)

;;Load all the modes configuration files
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

(load-directory "~/.emacs.d/config")

(provide 'init)
;; init.el ends here
