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


(provide 'python_conf)
