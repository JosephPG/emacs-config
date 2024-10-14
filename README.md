;;; Charge path own config to load-path
;;; Code:
(add-to-list 'load-path (expand-file-name "own" user-emacs-directory))

;;; Straight
(require 'my-straight)

;;; Emacs no [menu|scroll|tool] - bar
;;; See Numbers col
;;; Package: "good-scroll" "atom-one-dark-theme" "all-the-icons"
;;; Fonts
(require 'my-visual)

;;; Package: "exec-path-from-shell" "winum"
(require 'my-conf)

;;; Keys global config
(require 'my-keys)

;;; Package: "ivy" "counsel" "swiper" "projectile"
(require 'my-core)

;;; Package: "dashboard"
(require 'my-dashboard)

;;; Package: "which-key" "doom-modeline"
(require 'my-modeline)

;;; Package: "show-paren-mode" "hs-hide-block"
(require 'my-lang)

;;; LSP config
(require 'my-lsp)

;;; Python config
(require 'my-python)

;;; Package: "treemacs"
(require 'my-tree)

;;; Package: "typescript"
(require 'my-typescript)

;;; Package: "yaml-mode" "magit"
(require 'my-modes)
