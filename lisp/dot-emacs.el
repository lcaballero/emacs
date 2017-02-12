;; dot-emacs file
;; kgaipal@gmail.com

(require 'package)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; load all external plugins before anything else
;; MELPA packages
;; http://stable.melpa.org/#/getting-started
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

;; ;; Marmalade packages
;; ;; https://marmalade-repo.org/#download
;; (add-to-list 'package-archives
;;              '("marmalade" . "http://marmalade-repo.org/packages/"))

;; emacs packages specific customization
(load-file "~/.emacs.d/packages-customization.el")

;; customization functions and settings which are not defined in this file because they
;; are too big and too many and need explaination
(load-file "~/.emacs.d/dot-emacs-extensions.el")

;; GNU Coding style
(load-file "~/.emacs.d/gnu-coding-style.el")

;; Customization in mode-line format
(load-file "~/.emacs.d/mode-line-customization.el")

;; Note: Load these files last, as they have my custom code/shortcuts which may be
;; overridden from above packages if this is loaded last
(load-file "~/.emacs.d/keyboard-shortcuts.el")

;; ================= Automatically generated by emacs 'Custom' ===============
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Buffer-menu-name-width 35)
 '(auto-save-default t)
 '(desktop-clear-preserve-buffers
   (quote
    ("\\*scratch\\*" "\\*Messages\\*" "\\*server\\*" "\\*tramp/.+\\*" "\\*Warnings\\*" "\\*Group\\*" "\\.newsrc-dribble" "\\*Summary INBOX\\*" "\\*term\\:[[:alnum:]]+\\*" "&bitlbee" "erc\\:[[:alnum:]]+")))
 '(desktop-restore-eager 10)
 '(desktop-save-mode t)
 '(dired-listing-switches "-pgGh")
 '(erc-notifications-mode t)
 '(erc-server "localhost")
 '(fill-column 90)
 '(fringe-mode (quote (1 . 1)) nil (fringe))
 '(global-subword-mode t)
 '(grep-use-null-device nil)
 '(hide-ifdef-initially t)
 '(hide-ifdef-shadow nil)
 '(highlight-symbol-colors (quote ("yellow")))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote buffer) nil (ido))
 '(indent-guide-global-mode t)
 '(indent-tabs-mode nil)
 '(initial-buffer-choice nil)
 '(kill-whole-line t)
 '(make-backup-files nil)
 '(mode-line-in-non-selected-windows t)
 '(read-file-name-completion-ignore-case t)
 '(recentf-mode 1)
 '(scroll-bar-mode nil)
 '(scroll-conservatively 100)
 '(sentence-end-double-space nil)
 '(show-paren-mode t)
 '(tab-width 8)
 '(tool-bar-mode nil)
 '(tramp-auto-save-directory "/tmp")
 '(vc-directory-exclusion-list (quote (".svn" ".git" ".hg" ".bzr" ".output")))
 '(which-func-format (quote ("{" which-func-current "}"))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "black" :foreground "white"))))
 '(comint-highlight-prompt ((t (:foreground "brightblue"))))
 '(compilation-info ((t (:foreground "plum4" :underline nil :weight ultra-light))))
 '(compilation-line-number ((t (:inherit font-lock-variable-name-face :foreground "green4" :underline nil))))
 '(custom-group-tag ((((min-colors 88) (class color) (background light)) (:inherit variable-pitch :background "white" :foreground "darkblue" :weight bold :height 1.2))))
 '(custom-variable-tag ((((min-colors 88) (class color) (background light)) (:foreground "brightblue" :weight bold))))
 '(diff-added ((t (:foreground "green"))))
 '(diff-file-header ((((class color) (min-colors 88) (background light)) (:weight bold))))
 '(diff-header ((t (:background "dim gray"))))
 '(diff-removed ((t (:foreground "pink"))))
 '(dired-symlink ((t (:inherit font-lock-keyword-face :foreground "cyan"))))
 '(ediff-current-diff-A ((((class color) (min-colors 16)) (:background "lightpink" :foreground "black"))))
 '(ediff-current-diff-B ((((class color) (min-colors 16)) (:background "lightgreen" :foreground "black"))))
 '(ediff-even-diff-A ((((class color) (min-colors 16)) (:background "grey25" :foreground "white"))))
 '(ediff-even-diff-B ((((class color) (min-colors 16)) (:background "grey25" :foreground "white"))))
 '(ediff-odd-diff-A ((((class color) (min-colors 16)) (:background "grey55" :foreground "black"))))
 '(ediff-odd-diff-B ((((class color) (min-colors 16)) (:background "grey55" :foreground "black"))))
 '(font-lock-builtin-face ((((class color) (min-colors 88)) (:foreground "deep sky blue"))))
 '(font-lock-comment-face ((t (:foreground "dim gray" :slant italic))))
 '(font-lock-function-name-face ((t (:inherit font-lock-keyword-face :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "royal blue"))))
 '(font-lock-string-face ((t (:foreground "lawn green"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background light)) nil)))
 '(hide-ifdef-shadow ((t (:inherit shadow :background "color-233"))))
 '(hl-line ((t (:foreground "color-28" :weight extra-bold))))
 '(isearch ((t (:background "yellow" :foreground "black" :weight normal))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "color-160"))))
 '(lazy-highlight ((t (:inherit isearch :foreground "yellow4"))))
 '(link ((t (:foreground "cyan" :underline "deep sky blue"))))
 '(linum ((t (:inherit font-lock-comment-face :background "black" :weight normal))))
 '(log-view-message ((((class color)) (:background "grey50"))))
 '(match ((t (:foreground "red"))))
 '(minibuffer-prompt ((t (:foreground "royal blue"))))
 '(region ((t (:background "gray23"))))
 '(which-func ((((class color) (min-colors 88) (background light)) nil))))
