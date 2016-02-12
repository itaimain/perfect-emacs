(defalias 'yes-or-no-p 'y-or-n-p)

;; Graphic configurations
(defun fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
			 '(2 "_NET_WM_STATE_FULLSCREEN" 0)))
(fullscreen)
(setq inhibit-startup-message t)
(load-theme 'wombat)
(which-function-mode 1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(menu-bar-mode -1)
