(require 'edit-at-point)
(require 'bind-key)

(bind-keys
 ("C-s-w c" . edit-at-point-word-copy)
 ("C-s-w k" . edit-at-point-word-cut)
 ("C-s-w d" . edit-at-point-word-delete)
 ("C-s-w p" . edit-at-point-word-paste)

 ("C-s-s c" . edit-at-point-symbol-copy)
 ("C-s-s k" . edit-at-point-symbol-cut)
 ("C-s-s d" . edit-at-point-symbol-delete)
 ("C-s-s p" . edit-at-point-symbol-paste)

 ("C-s-t c" . edit-at-point-str-copy)
 ("C-s-t k" . edit-at-point-str-cut)
 ("C-s-t d" . edit-at-point-str-delete)
 ("C-s-t p" . edit-at-point-str-paste)

 ("C-s-l c" . edit-at-point-line-copy)
 ("C-s-l k" . edit-at-point-line-cut)
 ("C-s-l d" . edit-at-point-line-delete)
 ("C-s-l p" . edit-at-point-line-paste)

 ("C-s-p c" . edit-at-point-paren-copy)
 ("C-s-p k" . edit-at-point-paren-cut)
 ("C-s-p d" . edit-at-point-paren-delete)
 ("C-s-p p" . edit-at-point-paren-paste)

 ("C-s-d c" . edit-at-point-defun-copy)
 ("C-s-d k" . edit-at-point-defun-cut)
 ("C-s-d d" . edit-at-point-defun-delete)
 ("C-s-d p" . edit-at-point-defun-paste))
