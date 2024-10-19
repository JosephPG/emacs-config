(use-package lsp-mode
  :straight t
  :hook ((python-mode js-mode typescript-mode) . lsp-deferred)
  :commands lsp
  :custom
  (lsp-diagnostics-provider :none)
  :config
  (global-set-key (kbd "M-m g") 'lsp-find-definition)

  (use-package lsp-ui
    :straight t
    :commands lsp-ui-mode
    :config
    (setq lsp-ui-doc-enable nil)
    (setq lsp-ui-doc-header t)
    (setq lsp-ui-doc-include-signature t)
    (setq lsp-ui-doc-border (face-foreground 'default))
    (setq lsp-ui-sideline-enable nil)
    (setq lsp-headerline-breadcrumb-enable nil)))

;;;;;;;;;;;;;;;;;;;;;;;;; Servers ;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package lsp-pyright
  :straight t
  :ensure t
  :custom (lsp-pyright-langserver-command "pyright")
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp-deferred))))

;;;;;;;;;;;;;;;;;;;;;;;;; Utils ;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package company-mode
  :straight t
  :hook (after-init-hook . global-company-mode))

(use-package company-box
  :straight t
  :hook (company-mode . company-box-mode))

(use-package flycheck
  :straight t
  :ensure t
  :init (global-flycheck-mode)
  :config
  
  (use-package flycheck-pos-tip
    :straight t
    :after (flycheck)
    :init
    (flycheck-pos-tip-mode)
    :config
    (setq flycheck-pos-tip-timeout 30)))


(provide 'lsp_conf)
