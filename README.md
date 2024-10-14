;;; Charge path own config to load-path
;;; Code:
(add-to-list 'load-path (expand-file-name "own" user-emacs-directory))

;;; Straight
(require 'straight_conf)

;;; Emacs no [menu|scroll|tool] - bar
;;; See Numbers col
;;; Package: "good-scroll" "atom-one-dark-theme" "all-the-icons"
;;; Fonts
(require 'visual_conf)

;;; Package: "exec-path-from-shell" "winum"
(require 'conf)

;;; Keys global config
(require 'keys_conf)

;;; Package: "ivy" "counsel" "swiper" "projectile"
(require 'core_conf)

;;; Package: "dashboard"
(require 'dashboard_conf)

;;; Package: "which-key" "doom-modeline"
(require 'modeline_conf)

;;; Package: "yaml-mode" "magit"
(require 'modes_conf)

;;; Package: "show-paren-mode" "hs-hide-block"
(require 'lang_conf)

;;; Package: "treemacs"
(require 'tree_conf)
