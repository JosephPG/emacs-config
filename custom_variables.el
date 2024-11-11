(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 ;; For format-all dir-locals.el
 '(safe-local-variable-values
   '((eval setq format-all-formatters
	   '(("Python"
	      (ruff))))
     (eval setq format-all-formatters
	   '(("JavaScript"
	      (prettier))))
     (eval setq format-all-formatters
	   '(("TypeScript"
	      (prettier))))
     (eval setq format-all-formatters
	   '(("TSX"
	      (prettier)))))))


(provide 'custom_variables)
