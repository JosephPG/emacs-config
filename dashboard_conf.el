(use-package dashboard
  :straight t
  :ensure t
  :custom
  (dashboard-banner-logo-title "")
  (dashboard-startup-banner "~/.emacs.d/own/images/logo.png")
  (dashboard-center-content t) ;; center text
  (dashboard-footer-messages
   '("For love they acted, and without love they stayed" "Hate is a place to hide when you can't face sadness" "Nah, I'd win"))
  (dashboard-set-file-icons t)
  (dashboard-items '((bookmarks . 5)
		     (agenda . 10)))
  :config
  (dashboard-setup-startup-hook))


(provide 'dashboard_conf)
