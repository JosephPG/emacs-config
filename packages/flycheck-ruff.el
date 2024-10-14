;;; flycheck-ruff.el --- Support ruff in flycheck
(require 'flycheck)


(flycheck-def-config-file-var flycheck-python-ruff-config python-ruff
                              '("pyproject.toml" "ruff.toml" ".ruff.toml"))

(flycheck-define-checker python-ruff
  "A Python syntax and style checker using the ruff utility.
To override the path to the ruff executable, set
`flycheck-python-ruff-executable'.
See URL `http://pypi.python.org/oadpypi/ruff'."
  :command ("ruff"
            "check"
            (config-file "--config" flycheck-python-ruff-config)
            "--output-format=text"
            (eval (when buffer-file-name
                    (concat "--stdin-filename=" buffer-file-name))))
  :standard-input t
  :error-filter (lambda (errors)
                  (let ((errors (flycheck-sanitize-errors errors)))
                    (seq-map #'flycheck-flake8-fix-error-level errors)))
  :error-patterns
  ((warning line-start
            (file-name) ":" line ":" (optional column ":") " "
            (id (one-or-more (any alpha)) (one-or-more digit)) " "
            (message (one-or-more not-newline))
            line-end))
  :modes python-mode)

(add-to-list 'flycheck-checkers 'python-ruff)

(provide 'flycheck-ruff)
