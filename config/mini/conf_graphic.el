;;; package --- conf_graphic
;;; Commentary:
;;; Sets the graphical configurations.

;;; Code:
(require 'preferences)
(require 'startup-log)

(defun graphic-font-exist-p (font-name)
  "Test if the font FONT-NAME exists."
  (if (or (not font-name) (string= font-name ""))
      nil
    (if (not (x-list-fonts font-name))
	nil t)))

(defun graphic-set-font (font-name font-size)
  "Setup Emacs English FONT-NAME and FONT=SIZE on x-window-system."
  (if (graphic-font-exist-p font-name)
      (set-frame-font (format "%s:pixelsize=%d" font-name font-size) t)
    (startup-log-add
     (format "The requested font (%s) counldn't be found on you system."
	     font-name))))

(add-to-list 'default-frame-alist '(fullscreen . fullboth))
(setq inhibit-startup-message t)
(setq inhibit-x-resources 't)

(load-theme (get-graphic-val theme))
(set-face-attribute 'region nil
		    :background (get-graphic-val region-background-color)
		    :foreground (get-graphic-val region-foreground-color))
(menu-bar-mode (get-graphic-val menu-bar))
(tool-bar-mode (get-graphic-val tool-bar))
(scroll-bar-mode (get-graphic-val scroll-bar))
(blink-cursor-mode (get-graphic-val blink-cursor))
(graphic-set-font (get-graphic-val font-type)
		  (get-graphic-val font-size))
(which-function-mode (get-graphic-val which-function))
