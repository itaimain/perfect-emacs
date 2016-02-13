(require 'eno)
(require 'bind-key)

(bind-keys
 ("C-S-w g" . eno-word-goto)
 ("C-S-w c" . eno-word-copy)
 ("C-S-w k" . eno-word-cut)
 ("C-S-w s" . eno-word-swap)
 ("C-S-w p" . eno-word-paste)

 ("C-S-s g" . eno-symbol-goto)
 ("C-S-s c" . eno-symbol-copy)
 ("C-S-s k" . eno-symbol-cut)
 ("C-S-s s" . eno-symbol-swap)
 ("C-S-s p" . eno-symbol-paste)

 ("C-S-t g" . eno-str-goto)
 ("C-S-t c" . eno-str-copy)
 ("C-S-t k" . eno-str-cut)
 ("C-S-t p" . eno-str-paste)

 ("C-S-l g" . eno-line-goto)
 ("C-S-l c" . eno-line-copy)
 ("C-S-l k" . eno-line-cut)
 ("C-S-l p" . eno-line-paste)

 ("C-S-p g" . eno-paren-goto)
 ("C-S-p c" . eno-paren-copy)
 ("C-S-p k" . eno-paren-cut)
 ("C-S-p p" . eno-paren-paste))

(eno-set-all-letter-str " sdfjkla;weioqpruvncmghxz,./")
(eno-set-same-finger-list '("qaz" "wsx" "edc" "rfvg" "ujmh" "ik" "ol." "p;/"))
(setq eno-stay-key-list '("<prior>" "<next>" "<wheel-up>" "<wheel-down>"))
