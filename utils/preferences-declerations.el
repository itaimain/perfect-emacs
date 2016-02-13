;;; preferences-declarations --- Declare the preferences lists
;;;
;;; Commentary:
;;; Declare the configurable preferences.

;;; Code:

(defvar graphic-preferences)

(defmacro get-graphic-val (key)
  "Get the value of the KEY in the graphic-preferences association list."
  (cdr (assoc key graphic-preferences)))

(provide 'preferences-declerations)
;;; preferences-declerations.el ends here
