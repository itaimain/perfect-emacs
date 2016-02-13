;;; packages-download --- Download packages
;;; Commentary:
;;; Download necessary packages.

;;; Code:
(require 'packages-download-utils)

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
    corral
    edit-at-point
    bind-key
    eno
    git-timemachine
    iedit
    smartparens
    string-edit
    aggressive-indent
    yasnippet
    ))

(defun packages-download-necessary ()
  "Download the necessary packages."
  (packages-download-list packages-list-1)
  (sleep-for 1)
  (packages-download-list packages-list-2))

(provide 'packages-download)
;;; packages-download.el ends here
