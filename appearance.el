;; Turn on hl-line:
(global-hl-line-mode 1)
;; Set any color as the background face of the current line:
(set-face-background 'hl-line "#3e4446")
;; To keep syntax highlighting in the current line:
(set-face-foreground 'highlight nil)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

(provide 'appearance)
