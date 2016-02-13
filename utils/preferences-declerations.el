;;; preferences-declarations --- Declare the preferences lists
;;;
;;; Commentary:
;;; Declare the configurable preferences.

;;; Code:

(defvar startup-preferences)
(defvar graphic-preferences)

(defmacro get-graphic-val (key)
  "Get the value of the KEY in the graphic-preferences association list."
  (cdr (assoc key graphic-preferences)))

(defmacro get-startup-val (key)
  "Get the value of the KEY in the startup-preferences association list."
  (cdr (assoc key startup-preferences)))

(provide 'preferences-declerations)
;;; preferences-declerations.el ends here
