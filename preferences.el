;;; package --- preferences
;;;
;;; Commentary:
;;; Sets the configurable preferences.

;;; Code:
(require 'preferences-declerations)

(setq startup-preferences '(
			    (startup-log . t)
			    ))

(setq graphic-preferences '(
			    (theme . 'wombat)
			    (region-background-color . "#555")
			    (region-foreground-color . 'unspecified)
			    (tool-bar . -1)
			    (scroll-bar . -1)
			    (menu-bar . -1)
			    (blink-cursor . 1)
			    (font-type . "monaco")
			    (font-size . 15)
			    (which-function . 1)
			    ))

(provide 'preferences)
;;; preferences.el ends here
