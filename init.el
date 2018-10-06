﻿;; utf-8 everywhere
(setq locale-coding-system 'utf-8)   ; pretty
(set-terminal-coding-system 'utf-8)  ; pretty
(set-keyboard-coding-system 'utf-8)  ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8)        ; with sugar on top

(require 'package)
(load-library "url-handlers")

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org"   . "http://orgmode.org/elpa/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(load-file "~/.emacs.d/config/general.el")
(load-file "~/.emacs.d/config/systemdependent.el")
(load-file "~/.emacs.d/config/keybindings.el")
(load-file "~/.emacs.d/config/packages.el")
(load-file "~/.emacs.d/config/org.el")
(load-file "~/.emacs.d/config/functions.el")
(load-file "~/.emacs.d/config/theming.el")

(load-file "~/.emacs.d/config/languages/js.el")
(load-file "~/.emacs.d/config/languages/dart.el")
(load-file "~/.emacs.d/config/languages/go.el")
(load-file "~/.emacs.d/config/languages/c.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode t)
 '(company-auto-complete nil)
 '(company-clang-arguments (quote ("--std=c99")))
 '(company-clang-executable "clang")
 '(company-dabbrev-downcase nil)
 '(company-idle-delay 0)
 '(company-lighter-base "(C)")
 '(company-minimum-prefix-length 1)
 '(company-posframe-mode t nil (company-posframe))
 '(company-show-numbers 1)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-maximum-width 2305843009213693951)
 '(company-tooltip-minimum-width 0)
 '(company-transformers
   (quote
    (#[128 "\302\300\303\301\"\"\207"
           [cl-remove-if
            ((lambda
               (c)
               (or
                (string-match-p "[^ -]+" c)
                (string-match-p "[0-9]+" c)
                (if
                    (equal major-mode "org")
                    (>=
                     (length c)
                     20)))))
            apply append]
           6 "

(fn &rest ARGS2)"])))
 '(compilation-auto-jump-to-first-error t)
 '(diff-hl-flydiff-delay 0.1)
 '(diff-hl-flydiff-mode t)
 '(diff-hl-margin-mode nil)
 '(eldoc-idle-delay 0.1)
 '(flycheck-check-syntax-automatically (quote (save idle-change mode-enabled)))
 '(flycheck-clang-args (quote ("-Wno-pragma-once-outside-header")))
 '(flycheck-clang-include-path
   (quote
    ("D:\\Daten\\LaTeX\\__Bachelor\\C++\\irrlicht\\include\\" "D:\\Programme\\vs2017\\VC\\Tools\\MSVC\\14.11.25503\\include\\")))
 '(flycheck-clang-includes (quote ("")))
 '(flycheck-clang-language-standard "c99")
 '(flycheck-clang-ms-extensions t)
 '(flycheck-clang-no-exceptions nil)
 '(flycheck-clang-warnings nil)
 '(flycheck-gcc-language-standard "c++11")
 '(flyspell-default-dictionary "deutsch8")
 '(global-company-mode t)
 '(global-diff-hl-mode t)
 '(isearch-allow-scroll t)
 '(ivy-count-format "(%d/%d) ")
 '(ivy-display-style (quote fancy))
 '(ivy-use-virtual-buffers t)
 '(ivy-virtual-abbreviate (quote full))
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (rainbow-delimiters yaml-mode magit-todos dart-mode telephone-line super-save magit magit-org-todos magit-popup clang-format cloc gradle-mode lsp-javascript-typescript company-lsp lsp-javascript-flow hy-mode ranger dired-ranger c-eldoc eglot lsp-clangd lsp-mode lsp-ui web-mode wrap-region pdf-tools octicons major-mode-icons mode-icons ivy-gitlab all-the-icons-ivy emmet-mode tide ng2-mode color-theme-sanityinc-solarized ox-twbs ox-reveal org-bullets wttrin which-key wolfram treemacs-projectile treemacs rainbow-mode projectile-ripgrep projectile powerline multiple-cursors ivy hl-todo company-go go-mode flycheck-popup-tip flycheck dumb-jump diminish diff-hl browse-kill-ring company-posframe academic-phrases use-package)))
 '(pos-tip-background-color "#1A3734")
 '(pos-tip-foreground-color "#FFFFC8")
 '(rainbow-ansi-colors-major-mode-list (quote (sh-mode)))
 '(rainbow-x-colors-major-mode-list (quote (emacs-lisp-mode lisp-interaction-mode java-mode)))
 '(safe-local-variable-values
   (quote
    ((eval company-clang-set-prefix "main.c")
     (eval company-clang-set-prefix "D:\\Daten\\Coding\\Gitea\\lisp\\src\\main.c"))))
 '(show-paren-mode t)
 '(special-display-buffer-names (quote ("*shell - flutter run*")))
 '(tide-format-options (quote (indentSize 4)))
 '(tool-bar-mode nil)
 '(web-mode-markup-indent-offset 2))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Noto Sans Mono" :foundry "outline" :slant normal :weight normal :height 113 :width normal))))
 '(company-preview ((t (:background "#657b83" :foreground "#eee8d5"))))
 '(company-scrollbar-fg ((t (:background "#002B36"))))
 '(company-tooltip-annotation-selection ((t (:inherit company-tooltip-selection :foreground "#859900"))))
 '(diff-hl-change ((t (:background "orange" :foreground "orange"))))
 '(diff-hl-delete ((t (:background "orange red" :foreground "orange red"))))
 '(diff-hl-insert ((t (:inherit diff-added :background "green" :foreground "green"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#49974A" :slant italic))))
 '(font-lock-comment-face ((t (:foreground "#49974A" :slant italic))))
 '(minimap-active-region-background ((t (:background "#001E26"))))
 '(mode-line ((t (:background "#073642" :box nil :weight normal :height 1.0))))
 '(mode-line-buffer-id-inactive ((t (:inherit mode-line-buffer-id :box nil))))
 '(mode-line-inactive ((t (:inherit mode-line :background "#073642" :foreground "#586e75" :box nil :weight normal :height 1.0))))
 '(org-level-1 ((t (:inherit outline-1 :height 1.8))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.5))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.3))))
 '(org-meta-line ((t (:inherit mode-line-buffer-id))))
 '(package-name ((t (:foreground "SpringGreen3" :underline t))))
 '(powerline-active1 ((t (:background "#14282D" :foreground "#839496" :box nil))))
 '(powerline-active2 ((t (:background "#073642" :foreground "#839496" :box nil))))
 '(powerline-inactive1 ((t (:inherit mode-line-inactive :background "grey11" :box nil))))
 '(powerline-inactive2 ((t (:inherit mode-line-inactive :background "grey20" :box nil))))
 '(region ((t (:background "#93a1a1" :foreground "SteelBlue4"))))
 '(treemacs-directory-collapsed-face ((t (:inherit default))))
 '(treemacs-directory-face ((t (:inherit default))))
 '(treemacs-git-added-face ((t (:inherit diff-hl-insert :background "#002B36"))))
 '(treemacs-git-ignored-face ((t (:inherit file-name-shadow))))
 '(treemacs-git-modified-face ((t (:inherit diff-hl-change :background "#002B36"))))
 '(treemacs-git-untracked-face ((t (:inherit diff-hl-insert :background "#002B36"))))
 '(treemacs-tags-face ((t (:inherit file-name-shadow))))
 '(window-divider ((t (:foreground "#14282D"))))
 '(window-divider-first-pixel ((t (:foreground "#14282D"))))
 '(window-divider-last-pixel ((t (:foreground "#14282D")))))


(require 'flycheck)
(require 'dart-mode)
(setq dart-formatter-command-override "dartfmt.bat")
(setq dart-format-path "C:/Languages/flutter/bin/cache/dart-sdk/bin")
(setq dart-executable-path "C:/Languages/flutter/bin/cache/dart-sdk/bin")
(setq dart-analysis-server-snapshot-path "C:/Languages/flutter/bin/cache/dart-sdk/bin/snapshots/dartanalyzer.dartsnapshot")
(add-to-list 'auto-mode-alist '("\\.dart\\'" . dart-mode))
;; (setq dart-enable-analysis-server nil)
;; (setq dart-debug t)
