;;; Define KEYS
(define-prefix-command 'SPC)
(global-set-key (kbd "M-m") 'SPC)
(define-prefix-command 'LANG)
(global-set-key (kbd "M-n") 'LANG)
(define-prefix-command 'LANGCOMMON)
(global-set-key (kbd "M-b") 'LANGCOMMON)

;; Navigate between windows using the arrows
(global-set-key (kbd "M-<left>") 'windmove-left)
(global-set-key (kbd "M-<down>") 'windmove-down)
(global-set-key (kbd "M-<up>") 'windmove-up)
(global-set-key (kbd "M-<right>") 'windmove-right)


(provide 'keys_conf)
