(add-to-list 'load-path (expand-file-name "own/packages" user-emacs-directory))

(setq python-shell-interpreter "python3")

;;;;;;;;;;;;;;;;;;;;;;;;; In start ;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package pyvenv
  :straight t
  :ensure t
  :config
  (pyvenv-mode 1))

(use-package python-pytest
  :straight t
  :ensure t
  :bind*
  ("M-n p n" . python-pytest-dispatch)
  ("M-n p f" . python-pytest-function)
  ("M-n p r" . python-pytest-repeat))

;;;;;;;;;;;;;;;;;;;;;;;;; Hooks ;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package importmagic
  :straight t
  :ensure t
  :bind*
  ("M-n p d" . importmagic-fix-symbol-at-point)
  :hook (python-mode . importmagic-mode))

(use-package blacken
  :straight t
  :ensure t
  :hook (python-mode . blacken-mode)
  :config
  (setq blacken-only-if-project-is-blackened t))

(use-package python-isort
  :straight t
  :ensure t)
  ;;:hook (python-mode . python-isort-on-save-mode)) ;; Set default isort for all project

;; For python-isort for use in local project in .dir-locals.el add:
;; ((python-mode
;;    (mode . python-isort-on-save)))

(use-package ruff-format
  :straight t
  :ensure t)

(require 'flycheck-ruff)


(provide 'my-python)
