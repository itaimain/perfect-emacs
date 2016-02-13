;;; startup-log --- Startup log utility
;;; Commentary:
;;; Initialize the startup log and print to it.

;;; Code:
(defcustom startup-log-buffer-name
  "*startup-log-output*"
  "Name of the buffer that shows Emacs startup log."
  :type 'string
  :group 'startup-log)

(defvar startup-log-output-text "")	; The log content.
(defvar startup-log-entries-counter 0)	; Counter of the log entries.

(defun startup-log-add (text)
  "Writes TEXT to the buffer."
  (incf startup-log-entries-counter)
  (setq startup-log-output-text
	(concat startup-log-output-text
		(int-to-string startup-log-entries-counter) ": " text "\n")))

(defun startup-log-display-hook ()
  "Hook on Emacs startup to show the startup-log."
  (let ((inhibit-read-only))
    (pop-to-buffer startup-log-buffer-name)
    (erase-buffer)
    (insert startup-log-output-text)
    (read-only-mode 1)
    (switch-to-buffer startup-log-buffer-name)
    (delete-other-windows)))

(defun startup-log-show ()
  "Show the log to the user if it is chosen."
  (require 'preferences)
  (if (and (get-startup-val startup-log)
	   (> startup-log-entries-counter 0))
      (add-hook 'emacs-startup-hook 'startup-log-display-hook)))

(provide 'startup-log)
;;; startup-log.el ends here
