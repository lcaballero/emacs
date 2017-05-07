;; dot-emacs file
;; kgaipal@gmail.com

(require 'package)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; MELPA and Marmalade packages
;; http://stable.melpa.org/#/getting-started
;; https://marmalade-repo.org/#download
(add-to-list 'package-archives
             ;; '("marmalade" . "http://marmalade-repo.org/packages/")
             ;; '("melpa-stable" . "https://stable.melpa.org/packages/") t)
             '("melpa" . "https://melpa.org/packages/"))


;; ================= Load Customizations ===============

;; customization functions and settings which are not defined in this file because they
;; are too big and too many and need explaination
(load-file "~/.emacs.d/dot-emacs-extensions.el")

;; emacs packages specific customization
(load-file "~/.emacs.d/packages-customization.el")

;; GNU Coding style
(load-file "~/.emacs.d/gnu-coding-style.el")

;; Customization in mode-line format
(load-file "~/.emacs.d/mode-line-customization.el")

;; Note: Load these files last as they have my custom code/shortcuts which may be
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
 '(custom-enabled-themes (quote (yet-another-dark)))
 '(custom-safe-themes
   (quote
    ("15290cc4f813a717dfe953657368d6ba55226e9b98f10cee06b5fcd582b8340e" default)))
 '(dired-listing-switches "-pgGhB")
 '(electric-pair-mode t)
 '(fill-column 90)
 '(fringe-mode (quote (1 . 1)) nil (fringe))
 '(global-subword-mode t)
 '(grep-use-null-device nil)
 '(highlight-symbol-colors (quote ("yellow")))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote buffer) nil (ido))
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
 '(which-func-format (quote ("{" which-func-current "}"))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; platforms specic tweaks for themes;
;; doing this after theme is loaded
(when (or (eq system-type 'windows-nt) (eq system-type 'msdos))
  (set-face-attribute 'default nil :height 130 :family "Courier New"))
