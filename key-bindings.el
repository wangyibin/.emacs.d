;; Move more quickly
(global-set-key (kbd "C-S-n") (λ (ignore-errors (next-line 5))))
(global-set-key (kbd "C-S-p") (λ (ignore-errors (previous-line 5))))
(global-set-key (kbd "C-S-f") (λ (ignore-errors (forward-char 5))))
(global-set-key (kbd "C-S-b") (λ (ignore-errors (backward-char 5))))

(global-unset-key (kbd "C-S-o"))
(global-set-key (kbd "C-S-o") 'other-window)

;; I don't need to kill emacs that easily
;; the mnemonic is C-x REALLY QUIT
;; (global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)
;; (global-set-key (kbd "C-x C-c") 'delete-frame)

;; Completion that uses many different methods to find options.
;; (global-set-key (kbd "C-.") 'hippie-expand-no-case-fold)
;; (global-set-key (kbd "C-:") 'hippie-expand-lines)
;; (global-set-key (kbd "C-,") 'completion-at-point)

;; (require 'misc)
;; (global-set-key (kbd "s-.") 'copy-from-above-command)

;; Smart M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Use C-x C-m to do M-x per Steve Yegge's advice
;; (global-set-key (kbd "C-x C-m") 'smex)

;; Expand region (increases selected region by semantic units)
(global-set-key (if is-mac (kbd "C-@") (kbd "C-'")) 'er/expand-region)


;; Perform general cleanup.
;; (global-set-key (kbd "C-c n") 'cleanup-buffer)
;; (global-set-key (kbd "C-c C-n") 'cleanup-buffer)
;; (global-set-key (kbd "C-c C-<return>") 'delete-blank-lines)

;; M-i for back-to-indentation
;; (global-set-key (kbd "M-i") 'back-to-indentation)

;; Turn on the menu bar for exploring new modes
;; (global-set-key (kbd "C-<f10>") 'menu-bar-mode)

;; Use shell-like backspace C-h, rebind help to F1
;; (define-key key-translation-map [?\C-h] [?\C-?])
;; (global-set-key (kbd "<f1>") 'help-command)

;; (global-set-key (kbd "M-h") 'kill-region-or-backward-word)

;; Transpose stuff with M-t
;; (global-unset-key (kbd "M-t")) ;; which used to be transpose-words
;; (global-set-key (kbd "M-t l") 'transpose-lines)
;; (global-set-key (kbd "M-t w") 'transpose-words)
;; (global-set-key (kbd "M-t s") 'transpose-sexps)
;; (global-set-key (kbd "M-t p") 'transpose-params)

;; Interactive selective display
;; (global-set-key (kbd "C-x $") 'inc-selective-display)

;; ;; Change next underscore with a camel case
;; (global-set-key (kbd "C-c C--") 'replace-next-underscore-with-camel)
;; (global-set-key (kbd "M-s M--") 'snakeify-current-word)

;; ;; Change word separators
;; (global-unset-key (kbd "C-x +")) ;; used to be balance-windows
;; (global-set-key (kbd "C-x + -") (λ (replace-region-by 's-dashed-words)))
;; (global-set-key (kbd "C-x + _") (λ (replace-region-by 's-snake-case)))
;; (global-set-key (kbd "C-x + c") (λ (replace-region-by 's-lower-camel-case)))
;; (global-set-key (kbd "C-x + C") (λ (replace-region-by 's-upper-camel-case)))

;; ;; Killing text
;; (global-set-key (kbd "C-S-k") 'kill-and-retry-line)
;; (global-set-key (kbd "C-w") 'kill-region-or-backward-word)
;; (global-set-key (kbd "C-c C-w") 'kill-to-beginning-of-line)

;; ;; Use M-w for copy-line if no active region
;; (global-set-key (kbd "M-w") 'save-region-or-current-line)
;; (global-set-key (kbd "s-w") 'save-region-or-current-line)
;; (global-set-key (kbd "M-W") (λ (save-region-or-current-line 1)))

;; ;; Make shell more convenient, and suspend-frame less
;; (global-set-key (kbd "C-z") 'shell)
;; (global-set-key (kbd "C-x M-z") 'suspend-frame)

;; ;; Zap to char
;; (global-set-key (kbd "M-z") 'zap-up-to-char)
;; (global-set-key (kbd "s-z") (lambda (char) (interactive "cZap up to char backwards: ") (zap-up-to-char -1 char)))

;; (global-set-key (kbd "M-Z") (lambda (char) (interactive "cZap to char: ") (zap-to-char 1 char)))
;; (global-set-key (kbd "s-Z") (lambda (char) (interactive "cZap to char backwards: ") (zap-to-char -1 char)))

;; ;; iy-go-to-char - like f in Vim
;; (global-unset-key (kbd "C-f"))
;; (global-unset-key (kbd "C-b"))
(global-set-key (kbd "C-c f") 'jump-char-forward)
(global-set-key (kbd "C-c b") 'jump-char-backward)

;; (global-set-key (kbd "C-f") 'forward-char)
;; (global-set-key (kbd "C-b") 'backward-char)
;; (global-set-key (kbd "s-m") 'jump-char-backward)

;; ;; vim's ci and co commands
;; (global-set-key (kbd "M-I") 'change-inner)
;; (global-set-key (kbd "M-O") 'change-outer)

;; (global-set-key (kbd "s-i") 'copy-inner)
;; (global-set-key (kbd "s-o") 'copy-outer)

;; ;; Create new frame
;; (define-key global-map (kbd "C-x C-n") 'make-frame-command)

;; Jump to a definition in the current file. (This is awesome)
(global-set-key (kbd "C-x C-i") 'ido-imenu)

;; File finding
;; (global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
;; (global-set-key (kbd "C-x f") 'recentf-ido-find-file)
;; (global-set-key (kbd "C-x C-p") 'find-or-create-file-at-point)
;; (global-set-key (kbd "C-x M-p") 'find-or-create-file-at-point-other-window)
;; (global-set-key (kbd "C-c y") 'bury-buffer)
;; (global-set-key (kbd "C-c r") 'revert-buffer)
;; (global-set-key (kbd "M-`") 'file-cache-minibuffer-complete)
;; (global-set-key (kbd "C-x C-b") 'ibuffer)

;; ;; toggle two most recent buffers
;; (fset 'quick-switch-buffer [?\C-x ?b return])
;; (global-set-key (kbd "s-b") 'quick-switch-buffer)

;; (global-set-key (kbd "s-y") 'bury-buffer)

;; ;; Revert without any fuss
;; (global-set-key (kbd "M-<escape>") (λ (revert-buffer t t)))

;; Edit file with sudo
;; (global-set-key (kbd "M-s e") 'sudo-edit)

;; Copy file path to kill ring
;; (global-set-key (kbd "C-x M-w") 'copy-current-file-path)

;; Window switching

;; Find file in project
(global-unset-key (kbd "C-o"))
(global-set-key (kbd "C-o") 'find-file-in-project)

;; Find file in project, with specific patterns
(global-unset-key (kbd "C-x C-o")) ;; which used to be delete-blank-lines (also bound to C-c C-<return>)
(global-set-key (kbd "C-x C-o ja") (ffip-create-pattern-file-finder "*.java"))
(global-set-key (kbd "C-x C-o js") (ffip-create-pattern-file-finder "*.js"))
(global-set-key (kbd "C-x C-o ht") (ffip-create-pattern-file-finder "*.html"))
(global-set-key (kbd "C-x C-o jp") (ffip-create-pattern-file-finder "*.jsp"))
(global-set-key (kbd "C-x C-o cs") (ffip-create-pattern-file-finder "*.css"))
(global-set-key (kbd "C-x C-o ft") (ffip-create-pattern-file-finder "*.feature"))
(global-set-key (kbd "C-x C-o cl") (ffip-create-pattern-file-finder "*.clj"))
(global-set-key (kbd "C-x C-o el") (ffip-create-pattern-file-finder "*.el"))
(global-set-key (kbd "C-x C-o md") (ffip-create-pattern-file-finder "*.md"))
(global-set-key (kbd "C-x C-o rb") (ffip-create-pattern-file-finder "*.rb"))
(global-set-key (kbd "C-x C-o or") (ffip-create-pattern-file-finder "*.org"))
(global-set-key (kbd "C-x C-o ph") (ffip-create-pattern-file-finder "*.php"))
(global-set-key (kbd "C-x C-o tx") (ffip-create-pattern-file-finder "*.txt"))
(global-set-key (kbd "C-x C-o vm") (ffip-create-pattern-file-finder "*.vm"))
(global-set-key (kbd "C-x C-o xm") (ffip-create-pattern-file-finder "*.xml"))
(global-set-key (kbd "C-x C-o in") (ffip-create-pattern-file-finder "*.ini"))
(global-set-key (kbd "C-x C-o pr") (ffip-create-pattern-file-finder "*.properties"))
(global-set-key (kbd "C-x C-o in") (ffip-create-pattern-file-finder "*.ini"))
(global-set-key (kbd "C-x C-o gr") (ffip-create-pattern-file-finder "*.groovy"))
(global-set-key (kbd "C-x C-o ga") (ffip-create-pattern-file-finder "*.gradle"))
(global-set-key (kbd "C-x C-o !") (ffip-create-pattern-file-finder "*"))

;; ;; View occurrence in occur mode
;; (define-key occur-mode-map (kbd "v") 'occur-mode-display-occurrence)
;; (define-key occur-mode-map (kbd "n") 'next-line)
;; (define-key occur-mode-map (kbd "p") 'previous-line)

(provide 'key-bindings)
