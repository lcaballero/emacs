;; dot-emacs file
;; Last modified on Jun 10, 2015
;; kgaipal@gmail.com

;; ============================= Plugins/Files ==============================
;; Load all essential plugins/files

;; Moves the buffer from one side to other
;; [http://stackoverflow.com/questions/1774832/how-to-swap-the-buffers-in-2-windows-emacs]
(load-file "~/.emacs.d/buffer-move.el")
(require 'buffer-move)

;; GNU Coding style
(load-file "~/.emacs.d/gnu-coding-style.el")

;; Highlight current word under the cursor
;; [http://xahlee.blogspot.com/2010/05/emacs-isearch-of-current-work.html]
(load-file "~/.emacs.d/highlight-symbol.el")
(require 'highlight-symbol)

;; xcscope for searching in large code trees
;; [https://github.com/dkogan/xcscope.el]
(load-file "~/.emacs.d/xcscope.el")
(require 'xcscope)
(cscope-setup)

;; Some helpful functions which are not defined in this file because they are too big
(load-file "~/.emacs.d/util-functions.el")

;; Customization in mode-line format
(load-file "~/.emacs.d/mode-line-customization.el")

;; Load these files last, as they have my custom code/shortcuts which may be
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
 '(desktop-save-mode t)
 '(dired-listing-switches "-pgGh")
 '(erc-notifications-mode t)
 '(erc-server "localhost")
 '(eshell-prompt-function
   (lambda nil
     (concat "["
             (file-name-nondirectory
              (eshell/pwd))
             (if
                 (=
                  (user-uid)
                  0)
                 " # " "]$ "))))
 '(eshell-visual-subcommands (quote (("git" "diff" "show" "log"))))
 '(fill-column 90)
 '(fringe-mode (quote (1 . 1)) nil (fringe))
 '(global-subword-mode t)
 '(hide-ifdef-initially t)
 '(hide-ifdef-shadow nil)
 '(highlight-symbol-colors (quote ("yellow")))
 '(ido-enable-flex-matching t)
 '(ido-ignore-buffers (quote ("\\*Messages\\*")))
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
 '(eshell-prompt ((t (:foreground "brightblue" :weight normal))))
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

;; ========================== Manual changes =================================

;; Force single instance of emacs running on the system
(server-start)

;; Set the tab width
;; http://www.chemie.fu-berlin.de/chemnet/use/info/cc-mode/cc-mode_6.html#SEC17
(setq-default default-tab-width 8)
(setq-default c-basic-indent 0)
(setq-default c-basic-offset 4)
(c-set-offset 'substatement-open 0)
(setq c-default-style "linux" c-basic-offset 4)

;; Shorten the required response in mode-buffer from yes/no to y/n
;; http://www.youtube.com/watch?v=a-jRN_ba41w
(fset 'yes-or-no-p 'y-or-n-p)

;; Winners mode to preserve split windows
;; http://ergoemacs.org/emacs/emacs_winner_mode.html
(winner-mode 1)

;; IBuffer module provides better switching
;; http://www.emacswiki.org/emacs/IbufferMode
(require 'ibuf-ext)
;; hiding the unnecessary buffers
(add-to-list 'ibuffer-never-show-predicates "^\\*")

;; set the desktop-path to current directory only
(setq desktop-path '("."))

;; custom ibuffer format
(setq ibuffer-formats '((mark modified read-only " "
                              (name 50 100 :left :elide) " "
                              (file-or-process-directory))))

;; When we move forward word-by-word ... also stop at ';'
;; Helpfull stop running past to next line in c-mode/c++-mode
(modify-syntax-entry ?$ "w")

;; Highlight postgres keywords too when in SQL mode
(add-hook 'sql-mode-hook 'sql-highlight-postgres-keywords)

;; fixing wierd control characters in shell mode
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; hiding some unwanted extensions in dired mode
;; http://www.emacswiki.org/emacs/DiredOmitMode
(require 'dired-x)
(setq-default dired-omit-files-p t)	; this is buffer-local variable
(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))

;; setup for various files [extensions] and their editing modes
(setq auto-mode-alist
      (append '(("\\.psql$" . sql-mode)
                ("\\.cs$" . c++-mode)
                ("\\.ts$" . c++-mode)
                ("\\.ini$" . windows-conf-mode)
                ("\\.scons$" . python-mode)
                ("\\.cshtml$" . html-mode)
                ("SConstruct$" . python-mode)
                ("CMakeLists.txt$" . makefile-mode)) auto-mode-alist))

;; windows specic tweaks
(when (or (eq system-type 'windows-nt) (eq system-type 'msdos))
  (set-face-attribute 'default nil :height 130)
  (let ((git-path (concat (getenv "HOME") "/code/git-sdk-64/usr/bin/")))

    ;; TODO: below is unnecessary if path is set as 'System Variable'
    (setenv "PATH" (concat git-path ";" (getenv "PATH")))

    ;; remove the hook to check the vc-status on any file; this makes emacs
    ;; 1-2 slow on windows
    ;; http://stackoverflow.com/questions/8837712/emacs-creates-buffers-very-slowly
    (remove-hook 'find-file-hooks 'vc-find-file-hook)

    ;; Note: Not setting grep and find program since this is already available through
    ;; PATH, also M-x grep injects full path to the grep.exe as set here, which makes it
    ;; difficult to type
    ;;
    ;; ;; Update paths and fonts for windows platform only; this is necessary
    ;; ;; for find and grep modes to work properly
    ;; ;; https://www.emacswiki.org/emacs/GrepMode
    ;; (setq find-program (concat git-path "find.exe")
    ;;       grep-program (concat git-path "grep.exe"))
    ))

;; grep program customization
(setq grep-command
      (concat "grep -nHsI --exclude-from="
              (subst-char-in-string ?\\ ?/ (getenv "HOME"))
              "/code/grep-exclude-patterns.txt -r "))
