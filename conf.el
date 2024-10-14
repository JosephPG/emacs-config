;;; Load PATH from .bashrc
;;; https://www.emacswiki.org/emacs/ExecPath
(use-package exec-path-from-shell
  :straight t
  :ensure t
  :init
  (when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize)))


;;; Move window with Alt + Number
(use-package winum
    :straight t
    :init
    (winum-mode)
    :bind*
    ("M-1" . winum-select-window-1)
    ("M-2" . winum-select-window-2)
    ("M-3" . winum-select-window-3)
    ("M-4" . winum-select-window-4)
    ("M-5" . winum-select-window-5)
    ("M-6" . winum-select-window-6)
    ("M-7" . winum-select-window-7)
    ("M-8" . winum-select-window-8)
    ("M-9" . winum-select-window-9))


(provide 'conf)
