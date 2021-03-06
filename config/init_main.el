;;; init_main --- Main Emacs initializations
;;;
;;; Commentary:
;;; Init global configurations.

;;; Code:

(add-to-list 'load-path (expand-file-name "~/.emacs.d/config/mini"))

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(defalias 'yes-or-no-p 'y-or-n-p)

(setq c-basic-offset 4)
(setq c-default-style "linux" c-basic-offset 4)

(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq ido-vertical-show-count t)

(winner-mode 1)
(add-hook 'prog-mode-hook 'idle-highlight-mode)

(global-set-key (kbd "<scroll_Lock>") 'scroll-lock-mode)


(load "conf_hl-line")
(load "conf_auto-package-update")

(require 'server)
(setq server-use-tcp t)

(require 'sudo-ext)

(require 'volatile-highlights)
(volatile-highlights-mode t)

(global-diff-hl-mode)

(add-hook 'after-init-hook #'global-flycheck-mode)

(global-linum-mode 1)
(column-number-mode 1)
(global-whitespace-cleanup-mode t)
(global-set-key (kbd "C-c w") 'whitespace-mode)
(require 'makefile-runner)
(global-set-key (kbd "<f5>") 'makefile-runner)

(setq compilation-scroll-output t)

(yas-global-mode)
(require 'undo-tree)
(global-undo-tree-mode)
(require 'sudo-edit)

(require 'autopair)
(autopair-global-mode)

(global-set-key (kbd "C-x g t") 'git-timemachine)

(require 'smartparens-config)
(show-smartparens-global-mode 1)
(smooth-scrolling-mode 1)

(global-set-key (kbd "C-c s e") 'string-edit-at-point)
(global-set-key (kbd "C-c s s") 'sudo-edit-current-file)

(global-aggressive-indent-mode 1)

;; ========= Place backup files in specific directory =========
(setq make-backup-files t		; Don't clobber symlinks
      backup-by-copying t
      backup-directory-alist '(("." . "~/.emacs_backups")) ; Don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)		; Use versioned backup

(provide 'init_main)
;;; init_main.el ends here
