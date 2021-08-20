;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Toni Pesola"
      user-mail-address "toni@peso.la")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
(setq doom-font (font-spec :family "SF Mono" :size 15)
      doom-variable-pitch-font (font-spec :family "SF Pro Text" :size 15))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; When at the beginning of a line, make C-k remove the whole line instead of just
;; emtying it
(setq kill-whole-line t)

;; Projectile
(setq projectile-project-search-path '("~/Development/"))

;; Truncate string
(setq truncate-string-ellipsis "…")

;; Margin
(setq scroll-margin 20)

;; Increase undo limit
(setq undo-limit 80000000)

;; Word wrap
(add-hook 'c-mode-common-hook #'+word-wrap-mode)

;; Initial window size
;;(setq default-frame-alist '((left . 0) (width . 140) (fullscreen . fullheight)))
(add-to-list 'default-frame-alist '(height . 80))
(add-to-list 'default-frame-alist '(width . 200))

;; Delete files to trash
(setq-default delete-by-moving-to-trash t)

;; Custom splash image
(setq fancy-splash-image (expand-file-name "galaxy.svg" doom-private-dir))

;; Default tab width
(setq-default tab-width 2)

;; Enable time in modeline
(display-time-mode 1)

;; Auto save
(setq auto-save-default t)

;; LLDB debugger path
(setq dap-lldb-debug-program `("lldb-vscode"))

;; Set C comment to use // instead of /**/
(add-hook 'c-mode-common-hook
  (lambda ()
    ;; Preferred comment style
    (setq comment-start "// "
          comment-end "")))

;; Add underscore to word in c-mode
(add-hook 'c-mode-common-hook #'(lambda () (modify-syntax-entry ?_ "w")))

;; Enable local variables
(setq-default enable-local-variables t)

;; Tab switching
(global-set-key (kbd "C-<tab>") 'centaur-tabs-forward-tab)
(global-set-key (kbd "C-S-<tab>") 'centaur-tabs-backward-tab)
;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
