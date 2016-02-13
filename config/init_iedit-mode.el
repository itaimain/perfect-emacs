;;; package --- init_iedit-mode.el
;;;
;;; Commentary:
;;; Customize the package.
;;;
;;; iedit-mode function binded by default to 'C-;'

(require 'iedit)

;;; Code:

(defun iedit-dwim (arg)
  "Start iedit but use [narrow-to-defun] to limit its scope.  ARG is the argument."
  (interactive "P")
  (if arg
      (iedit-mode)
    (save-excursion
      (save-restriction
	(widen)
	;; this function determines the scope of 'iedit-start'.

	(if iedit-mode
	    (iedit-done)
	  ;; 'current-word' can of course be replaced by other functions.
	  (narrow-to-defun)
	  (iedit-start (current-word) (point-min) (point-max)))))))

(global-set-key (kbd "C-c ;") 'iedit-mode)
(global-set-key (kbd "C-c f") 'iedit-dwim)

(provide 'init-iedit-mode)
;;; init_iedit-mode.el ends here
