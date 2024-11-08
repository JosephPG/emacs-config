(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))


(defun add-npm-bin-to-exec-path ()
  "Verify if npm is allow and add .bin to exec-path."
  (if (executable-find "npm")
      (let ((npm-root (shell-command-to-string "npm root")))
        (setq npm-root (string-trim npm-root))
        (if (and npm-root
                 (file-directory-p (concat npm-root "/.bin")))
            (progn
              (add-to-list 'exec-path (concat npm-root "/.bin"))
              (message "Added path to exec-path: %s" (concat npm-root "/.bin")))
          (message "node_modules/.bin not found: %s" npm-root)))
    (message "npm not installed")))


(add-hook 'js-mode-hook #'add-npm-bin-to-exec-path)
(add-hook 'typescript-ts-mode-hook #'add-npm-bin-to-exec-path)


(provide 'js_conf)
