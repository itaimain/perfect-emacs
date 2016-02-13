(add-to-list 'load-path (expand-file-name "~/.emacs.d/config/mini"))

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; Graphic configurations
(defun fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
			 '(2 "_NET_WM_STATE_FULLSCREEN" 0)))
(fullscreen)
(setq inhibit-startup-message t)
(load-theme 'wombat)
(set-face-attribute 'region nil :background "#555" :foreground 'unspecified)
(which-function-mode 1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(menu-bar-mode -1)

;; ---------------------------

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
