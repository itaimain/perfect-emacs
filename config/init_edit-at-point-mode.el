(require 'edit-at-point)
(require 'bind-key)

(bind-keys
 ("C-S-w c" . edit-at-point-word-copy)
 ("C-S-w k" . edit-at-point-word-cut)
 ("C-S-w d" . edit-at-point-word-delete)
 ("C-S-w p" . edit-at-point-word-paste)

 ("C-S-s c" . edit-at-point-symbol-copy)
 ("C-S-s k" . edit-at-point-symbol-cut)
 ("C-S-s d" . edit-at-point-symbol-delete)
 ("C-S-s p" . edit-at-point-symbol-paste)

 ("C-S-t c" . edit-at-point-str-copy)
 ("C-S-t k" . edit-at-point-str-cut)
 ("C-S-t d" . edit-at-point-str-delete)
 ("C-S-t p" . edit-at-point-str-paste)

 ("C-S-l c" . edit-at-point-line-copy)
 ("C-S-l k" . edit-at-point-line-cut)
 ("C-S-l d" . edit-at-point-line-delete)
 ("C-S-l p" . edit-at-point-line-paste)
 ("C-S-l m" . edit-at-point-line-dup)

 ("C-S-p c" . edit-at-point-paren-copy)
 ("C-S-p k" . edit-at-point-paren-cut)
 ("C-S-p d" . edit-at-point-paren-delete)
 ("C-S-p p" . edit-at-point-paren-paste)

 ("C-S-d c" . edit-at-point-defun-copy)
 ("C-S-d k" . edit-at-point-defun-cut)
 ("C-S-d d" . edit-at-point-defun-delete)
 ("C-S-d p" . edit-at-point-defun-paste)
 ("C-S-d m" . edit-at-point-defun-dup)

 )
