﻿;; utf-8 everywhere
;; (setq locale-coding-system 'utf-8)   ; pretty
;; (set-terminal-coding-system 'utf-8)  ; pretty
;; (set-keyboard-coding-system 'utf-8)  ; pretty
;; (set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8)        ; with sugar on top

(require 'package)
(load-library "url-handlers")

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org"   . "http://orgmode.org/elpa/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(add-to-list 'load-path "~/.emacs.d/lisp/")

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

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-auto-complete nil)
 '(company-clang-arguments nil)
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
 '(compilation-ask-about-save nil)
 '(compilation-auto-jump-to-first-error nil)
 '(compilation-read-command nil)
 '(compilation-scroll-output t)
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes
   (quote
    ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default)))
 '(doom-modeline-enable-word-count t)
 '(doom-modeline-mode t)
 '(eldoc-idle-delay 0.1)
 '(flycheck-check-syntax-automatically (quote (save idle-change mode-enabled)))
 '(flycheck-clang-args (quote ("-Wno-pragma-once-outside-header")))
 '(flycheck-clang-include-path nil)
 '(flycheck-clang-includes (quote ("")))
 '(flycheck-clang-language-standard nil)
 '(flycheck-clang-ms-extensions t)
 '(flycheck-clang-no-exceptions nil)
 '(flycheck-clang-warnings nil)
 '(flycheck-gcc-language-standard "c++11")
 '(flyspell-default-dictionary "deutsch8")
 '(global-company-mode t)
 '(isearch-allow-scroll t)
 '(ivy-count-format "(%d/%d) ")
 '(ivy-display-style (quote fancy))
 '(ivy-use-virtual-buffers t)
 '(ivy-virtual-abbreviate (quote full))
 '(markdown-fontify-code-blocks-natively t)
 '(menu-bar-mode nil)
 '(org-latex-default-packages-alist
   (quote
    (("AUTO" "inputenc" t
      ("pdflatex"))
     ("T1" "fontenc" t
      ("pdflatex"))
     ("" "graphicx" t nil)
     ("" "grffile" t nil)
     ("" "longtable" nil nil)
     ("" "wrapfig" nil nil)
     ("" "rotating" nil nil)
     ("normalem" "ulem" t nil)
     ("" "amsmath" t nil)
     ("" "textcomp" t nil)
     ("" "amssymb" t nil)
     ("" "capt-of" nil nil))))
 '(org-latex-default-table-environment "tabular")
 '(org-latex-hyperref-template nil)
 '(org-latex-listings (quote minted))
 '(org-latex-pdf-process (quote ("latexmk --shell-escape -pdf %f")))
 '(org-latex-prefer-user-labels t)
 '(package-selected-packages
   (quote
    (latex-preview-pane auctex doom-modeline gnuplot gnuplot-mode irony auto-complete-clang-async elpy jedi realgud drag-stuff yasnippet-snippets yasnippet dart-mode ov w3 www-synonyms htmlize ox-gfm markdown-preview-mode comment-tags magit rainbow-delimiters yaml-mode telephone-line super-save clang-format cloc gradle-mode lsp-javascript-typescript company-lsp lsp-javascript-flow hy-mode ranger dired-ranger c-eldoc eglot lsp-clangd lsp-mode lsp-ui web-mode wrap-region pdf-tools octicons major-mode-icons mode-icons ivy-gitlab all-the-icons-ivy emmet-mode tide ng2-mode color-theme-sanityinc-solarized ox-twbs ox-reveal org-bullets wttrin which-key wolfram treemacs-projectile treemacs rainbow-mode projectile-ripgrep projectile powerline multiple-cursors ivy hl-todo company-go go-mode flycheck-popup-tip flycheck dumb-jump diminish diff-hl browse-kill-ring company-posframe academic-phrases use-package)))
 '(pos-tip-background-color "#1A3734")
 '(pos-tip-foreground-color "#FFFFC8")
 '(rainbow-ansi-colors-major-mode-list (quote (sh-mode)))
 '(rainbow-x-colors-major-mode-list (quote (emacs-lisp-mode lisp-interaction-mode java-mode)))
 '(ripgrep-arguments nil)
 '(safe-local-variable-values
   (quote
    ((eval progn
           (defvar context-mode-map
             (make-sparse-keymap)
             "Keymap while context-mode is active.")
           (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Context" context-mode-map)
           (context-mode 1)
           (setq hugo--running-p nil)
           (setq hugo--run-frame-name "hugo server")
           (setq hugo--run-buffer-name "*shell - hugo server*")
           (defun hugo-server-start nil
             (interactive)
             (when hugo--running-p
               (error "hugo is already running"))
             (let
                 ((root-path
                   (locate-dominating-file
                    (expand-file-name default-directory)
                    "build.bat")))
               (unless root-path
                 (error "path could not be found"))
               (make-frame
                (\`
                 ((name \, hugo--run-frame-name))))
               (select-frame-by-name hugo--run-frame-name)
               (shell)
               (rename-buffer hugo--run-buffer-name)
               (delete-other-windows)
               (compilation-shell-minor-mode 1)
               (insert
                (concat "cd " root-path "/hugo"))
               (comint-send-input)
               (insert "hugo server --disableFastRender")
               (comint-send-input)
               (end-of-buffer)
               (other-frame 1)
               (setq hugo--running-p t)))
           (defun hugo-server-kill nil
             (interactive)
             (unless hugo--running-p
               (error "hugo server is not running"))
             (select-frame-by-name hugo--run-frame-name)
             (let
                 ((kill-buffer-query-functions
                   (delq
                    (quote process-kill-buffer-query-function)
                    kill-buffer-query-functions)))
               (kill-buffer hugo--run-buffer-name))
             (delete-frame)
             (setq hugo--running-p nil))
           (defhydra hydra-context
             (context-mode-map "<f2>")
             "Context Actions:"
             ("s" hugo-server-start "start hugo server" :color blue)
             ("k" hugo-server-kill "kill hugo server" :color blue)
             ("q" nil "quit" :color blue))
           (define-key context-mode-map
             (kbd "<f2>")
             (quote hydra-context/body)))
     (org-hugo-external-file-extensions-allowed-for-copying "pdf" "png" "mp3")
     (org-hugo-external-file-extensions-allowed-for-copying quote
                                                            ("pdf"
                                                             (\, "png")
                                                             (\, "mp3")))
     (eval progn
           (defvar context-mode-map
             (make-sparse-keymap)
             "Keymap while context-mode is active.")
           (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Context" context-mode-map)
           (context-mode 1)
           (defun save-and-find-test-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "test.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-run-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "run.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-debug-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "debug.bat"))
               (save-and-find-build-script-and-compile)))
           (defhydra hydra-context
             (context-mode-map "<f2>")
             "Context Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("r" save-and-find-run-script-and-compile "run" :color blue)
             ("d" save-and-find-debug-script-and-compile "debug" :color blue)
             ("t" save-and-find-test-script-and-compile "test" :color blue)
             ("o" browse-file-directory "open" :color blue)
             ("q" nil "quit" :color blue))
           (define-key context-mode-map
             (kbd "<f2>")
             (quote hydra-context/body)))
     (progn
       ((defvar context-mode-map
          (make-sparse-keymap)
          "Keymap while context-mode is active.")
        (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Context" context-mode-map)
        (context-mode 1)
        (defun save-and-find-test-script-and-compile nil
          (interactive)
          (let
              ((build-script-name "test.bat"))
            (save-and-find-build-script-and-compile)))
        (defun save-and-find-run-script-and-compile nil
          (interactive)
          (let
              ((build-script-name "run.bat"))
            (save-and-find-build-script-and-compile)))
        (defun save-and-find-debug-script-and-compile nil
          (interactive)
          (let
              ((build-script-name "debug.bat"))
            (save-and-find-build-script-and-compile)))
        (defhydra hydra-context
          (context-mode-map "<f2>")
          "Context Actions:"
          ("b" save-and-find-build-script-and-compile "build" :color blue)
          ("r" save-and-find-run-script-and-compile "run" :color blue)
          ("d" save-and-find-debug-script-and-compile "debug" :color blue)
          ("t" save-and-find-test-script-and-compile "test" :color blue)
          ("q" nil "quit" :color blue))
        (define-key context-mode-map
          (kbd "<f2>")
          (quote hydra-context/body))))
     (progn
       (defvar context-mode-map
         (make-sparse-keymap)
         "Keymap while context-mode is active.")
       (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Context" context-mode-map)
       (context-mode 1)
       (defun save-and-find-test-script-and-compile nil
         (interactive)
         (let
             ((build-script-name "test.bat"))
           (save-and-find-build-script-and-compile)))
       (defun save-and-find-run-script-and-compile nil
         (interactive)
         (let
             ((build-script-name "run.bat"))
           (save-and-find-build-script-and-compile)))
       (defun save-and-find-debug-script-and-compile nil
         (interactive)
         (let
             ((build-script-name "debug.bat"))
           (save-and-find-build-script-and-compile)))
       (defhydra hydra-context
         (context-mode-map "<f2>")
         "Context Actions:"
         ("b" save-and-find-build-script-and-compile "build" :color blue)
         ("r" save-and-find-run-script-and-compile "run" :color blue)
         ("d" save-and-find-debug-script-and-compile "debug" :color blue)
         ("t" save-and-find-test-script-and-compile "test" :color blue)
         ("q" nil "quit" :color blue))
       (define-key context-mode-map
         (kbd "<f2>")
         (quote hydra-context/body)))
     (eval progn
           (defvar context-mode-map
             (make-sparse-keymap)
             "Keymap while context-mode is active.")
           (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Context" context-mode-map)
           (context-mode 1)
           (defun save-and-find-test-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "test.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-run-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "run.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-debug-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "debug.bat"))
               (save-and-find-build-script-and-compile)))
           (defhydra hydra-context
             (context-mode-map "<f2>")
             "Context Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("r" save-and-find-run-script-and-compile "run" :color blue)
             ("d" save-and-find-debug-script-and-compile "debug" :color blue)
             ("t" save-and-find-test-script-and-compile "test" :color blue)
             ("q" nil "quit" :color blue))
           (define-key context-mode-map
             (kbd "<f2>")
             (quote hydra-context/body)))
     (eval progn
           (defvar context-mode-map
             (make-sparse-keymap)
             "Keymap while context-mode is active.")
           (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Context" context-mode-map)
           (context-mode 1)
           (defun save-and-find-test-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "test.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-run-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "run.bat"))
               (save-and-find-build-script-and-compile)))
           (defhydra hydra-context
             (context-mode-map "<f2>")
             "Context Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("r" save-and-find-run-script-and-compile "run" :color blue)
             ("t" save-and-find-test-script-and-compile "test" :color blue)
             ("q" nil "quit" :color blue))
           (define-key
             (quote context-mode-map)
             (quote hydra-context/body)))
     (eval progn
           (defvar context-mode-map
             (make-sparse-keymap)
             "Keymap while context-mode is active.")
           (define-minor-mode context-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Context" context-mode-map)
           (context-mode 1)
           (defun save-and-find-test-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "test.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-run-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "run.bat"))
               (save-and-find-build-script-and-compile)))
           (defhydra hydra-context
             (context-mode-map "<f2>")
             "Context Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("r" save-and-find-run-script-and-compile "run" :color blue)
             ("t" save-and-find-test-script-and-compile "test" :color blue)
             ("q" nil "quit" :color blue)))
     (eval progn
           (defvar temp-mode-map
             (make-sparse-keymap)
             "Keymap while temp-mode is active.")
           (define-minor-mode temp-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Context" temp-mode-map)
           (temp-mode 1)
           (defun save-and-find-test-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "test.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-run-script-and-compile nil
             (interactive)
             (let
                 ((build-script-name "run.bat"))
               (save-and-find-build-script-and-compile)))
           (defhydra hydra-context
             (:color pink :hint nil)
             "Quick Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("r" save-and-find-run-script-and-compile "run" :color blue)
             ("t" save-and-find-test-script-and-compile "test" :color blue)
             ("q" nil "quit" :color blue))
           (define-key temp-mode-map
             (kbd "<f1>")
             (quote hydra-context/body)))
     (eval progn
           (defvar temp-mode-map
             (make-sparse-keymap)
             "Keymap while temp-mode is active.")
           (define-minor-mode temp-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Context" temp-mode-map)
           (temp-mode 1)
           (defun save-and-find-test-script-and-compile nil
             (let
                 ((build-script-name "test.bat"))
               (save-and-find-build-script-and-compile)))
           (defun save-and-find-run-script-and-compile nil
             (let
                 ((build-script-name "run.bat"))
               (save-and-find-build-script-and-compile)))
           (defhydra hydra-context
             (:color pink :hint nil)
             "Quick Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("r" save-and-find-run-script-and-compile "run" :color blue)
             ("t" save-and-find-test-script-and-compile "test" :color blue)
             ("q" nil "quit" :color blue))
           (define-key temp-mode-map
             (kbd "<f1>")
             (quote hydra-context/body)))
     (eval progn
           (defvar temp-mode-map
             (make-sparse-keymap)
             "Keymap while temp-mode is active.")
           (define-minor-mode temp-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Context" temp-mode-map)
           (temp-mode 1)
           (defhydra hydra-context
             (:color pink :hint nil)
             "Quick Actions:"
             ("b" save-and-find-build-script-and-compile "build" :color blue)
             ("r" yarn-run-kill "run" :color blue)
             ("t"
              (quote
               (let
                   ((build-script-name "test.bat"))
                 (save-and-find-build-script-and-compile)))
              "test" :color blue)
             ("q" nil "quit" :color blue))
           (define-key temp-mode-map
             (kbd "<f1>")
             (quote hydra-context/body)))
     (eval progn
           (defvar temp-mode-map
             (make-sparse-keymap)
             "Keymap while temp-mode is active.")
           (define-minor-mode temp-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Context" temp-mode-map)
           (temp-mode 1)
           (defhydra hydra-context
             (:color pink :hint nil)
             "Quick Actions:"
             ("b" yarn-run-start "build" :color blue)
             ("r" yarn-run-kill "run" :color blue)
             ("t"
              (quote
               (let
                   ((build-script-name "test.bat"))
                 (save-and-find-build-script-and-compile)))
              "test" :color blue)
             ("q" nil "quit" :color blue))
           (define-key temp-mode-map
             (kbd "<f1>")
             (quote hydra-context/body)))
     (eval progn
           (defvar temp-mode-map
             (make-sparse-keymap)
             "Keymap while temp-mode is active.")
           (define-minor-mode temp-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Context" temp-mode-map)
           (temp-mode 1)
           (defhydra hydra-context
             (:color pink :hint nil)
             "Quick Actions:"
             ("b" yarn-run-start "build" :color blue)
             ("r" yarn-run-kill "run" :color blue)
             ("t" yarn-run-kill "test" :color blue)
             ("q" nil "quit" :color blue))
           (define-key temp-mode-map
             (kbd "<f1>")
             (quote hydra-context/body)))
     (eval progn
           (defvar temp-mode-map
             (make-sparse-keymap)
             "Keymap while temp-mode is active.")
           (define-minor-mode temp-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Context" temp-mode-map)
           (defhydra hydra-context
             (:color pink :hint nil)
             "Quick Actions:"
             ("b" yarn-run-start "build" :color blue)
             ("r" yarn-run-kill "run" :color blue)
             ("t" yarn-run-kill "test" :color blue)
             ("q" nil "quit" :color blue))
           (global-set-key
            (kbd "<f1>")
            (quote hydra-context/body)))
     (eval progn
           (defvar temp-mode-map
             (make-sparse-keymap)
             "Keymap while temp-mode is active.")
           (define-minor-mode temp-mode "A temporary minor mode to be activated only specific to a buffer." nil :lighter " Temp" temp-mode-map)
           (defhydra hydra-context
             (:color pink :hint nil)
             "Quick Actions:"
             ("b" yarn-run-start "build" :color blue)
             ("r" yarn-run-kill "run" :color blue)
             ("t" yarn-run-kill "test" :color blue)
             ("q" nil "quit" :color blue))
           (global-set-key
            (kbd "<f1>")
            (quote hydra-context/body)))
     (eval progn
           (defvar temp-mode-map
             (make-sparse-keymap)
             "Keymap while temp-mode is active.")
           (defhydra hydra-context
             (:color pink :hint nil)
             "Quick Actions:"
             ("b" yarn-run-start "build" :color blue)
             ("r" yarn-run-kill "run" :color blue)
             ("t" yarn-run-kill "test" :color blue)
             ("q" nil "quit" :color blue))
           (global-set-key
            (kbd "<f1>")
            (quote hydra-context/body)))
     (eval progn
           (defhydra hydra-context
             (:color pink :hint nil)
             "Quick Actions:"
             ("b" yarn-run-start "build" :color blue)
             ("r" yarn-run-kill "run" :color blue)
             ("t" yarn-run-kill "test" :color blue)
             ("q" nil "quit" :color blue))
           (global-set-key
            (kbd "<f1>")
            (quote hydra-context/body)))
     (eval progn
           (defhydra hydra-context
             (:color pink :hint nil)
             "xd"
             ("s" yarn-run-start "start" :color blue)
             ("k" yarn-run-kill "kill" :color blue)
             ("q" nil "quit" :color blue))
           (global-set-key
            (kbd "<f1>")
            (quote hydra-context/body)))
     (eval progn
           (defhydra hydra-context
             (:color pink :hint nil)
             ("s" yarn-run-start "start" :exit t :cmd-name hydra-context/yarn-run-start-and-exit :column nil)
             ("k" yarn-run-kill "kill" :color blue)
             ("q" nil "quit" :color blue))
           (global-set-key
            (kbd "<f1>")
            (quote hydra-context/body)))
     (eval progn
           (defhydra hydra-context
             (:color pink :hint nil)
             ("s" yarn-run-start "start" :color blue)
             ("k" yarn-run-kill "kill" :color blue)
             ("q" nil "quit" :color blue))
           (global-set-key
            (kbd "<f1>")
            (quote hydra-context/body)))
     (eval progn
           (defhydra hydra-context
             (:color pink :hint nil)
             "
^context^
------
_s_tart
_k_ill
"
             ("s" yarn-run-start :color blue)
             ("k" yarn-run-kill :color blue)
             ("q" nil :color blue))
           (global-set-key
            (kbd "<f1>")
            (quote hydra-context/body)))
     (eval progn
           (defhydra hydra-context
             (:color pink :hint nil)
             "
^context^
------
_s_tart
_k_ill
"
             ("s" yarn-run-start :color blue)
             ("k" yarn-run-kill :color blue)
             ("q" nil "quit" :color blue))
           (global-set-key
            (kbd "<f1>")
            (quote hydra-context/body)))
     (eval progn
           (defhydra hydra-context
             (:color pink :hint nil)
             "
^context^
------
_s_tart
_k_ill
"
             ("s" yarn-run-start :color blue)
             ("k" yarn-run-kill :color blue)
             ("q" quit-window "quit" :color blue))
           (global-set-key
            (kbd "<f1>")
            (quote hydra-context/body)))
     (eval progn
           (defhydra hydra-context
             (:color pink :hint nil)
             "
^context^
------
_s_tart
_k_ill
"
             ("s" yarn-run-start :color blue)
             ("k" yarn-run-kill :color blue)
             ("q" quit-window "quit" :color blue))
           (global-set-key
            (kbd "C-c a")
            (quote hydra-context/body)))
     (eval progn
           (defhydra hydra-yarn
             (:color pink :hint nil)
             "
^context^
------
_s_tart
_k_ill
"
             ("s" yarn-run-start :color blue)
             ("k" yarn-run-kill :color blue)
             ("q" quit-window "quit" :color blue))
           (global-set-key))
     (eval progn
           (defhydra hydra-yarn
             (:color pink :hint nil)
             "
^context^
------
_s_tart
_k_ill
"
             ("s" yarn-run-start :color blue)
             ("k" yarn-run-kill :color blue)
             ("q" quit-window "quit" :color blue))
           nil)
     (eval progn
           (defhydra hydra-yarn
             (:color pink :hint nil)
             "
^context^
------
_s_tart
_k_ill
"
             ("s" yarn-run-start :color blue)
             ("k" yarn-run-kill :color blue)
             ("q" quit-window "quit" :color blue)))
     (eval progn
           (defhydra hydra-yarn
             (:color pink :hint nil)
             "
^yarn^
------
_s_tart
_k_ill
"
             ("s" yarn-run-start :color blue)
             ("k" yarn-run-kill :color blue)
             ("q" quit-window "quit" :color blue)))
     (eval company-clang-set-prefix "main.c")
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
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 113 :width normal))))
 '(company-preview ((t (:background "#657b83" :foreground "#eee8d5"))))
 '(company-scrollbar-fg ((t (:background "#002B36"))))
 '(company-tooltip-annotation-selection ((t (:inherit company-tooltip-selection :foreground "#859900"))))
 '(diff-hl-change ((t (:background "orange" :foreground "orange"))))
 '(diff-hl-delete ((t (:background "orange red" :foreground "orange red"))))
 '(diff-hl-insert ((t (:inherit diff-added :background "green" :foreground "green"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#49974A" :slant italic))))
 '(font-lock-comment-face ((t (:foreground "#49974A" :slant italic))))
 '(markdown-code-face ((t nil)))
 '(minimap-active-region-background ((t (:background "#001E26"))))
 '(mode-line ((t (:background "#073642" :box nil :weight normal :height 1.0))))
 '(mode-line-buffer-id-inactive ((t (:inherit mode-line-buffer-id :box nil))))
 '(mode-line-inactive ((t (:inherit mode-line :background "#073642" :foreground "#586e75" :box nil :weight normal :height 1.0))))
 '(org-level-1 ((t (:inherit outline-1 :height 1.8))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.5))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.3))))
 '(org-meta-line ((t (:inherit mode-line-buffer-id))))
 '(package-name ((t (:foreground "#49974A" :underline t))))
 '(powerline-active1 ((t (:background "#14282D" :foreground "#839496" :box nil))))
 '(powerline-active2 ((t (:background "#073642" :foreground "#839496" :box nil))))
 '(powerline-inactive1 ((t (:inherit mode-line-inactive :background "grey11" :box nil))))
 '(powerline-inactive2 ((t (:inherit mode-line-inactive :background "grey20" :box nil))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "dark orange"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "deep pink"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "chartreuse"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "sienna1"))))
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


;; (require 'flycheck)
;; (use-package dart-mode
;;   :ensure t)
;; (require 'dart-mode)
;; (setq dart-formatter-command-override "dartfmt.bat")
;; (setq dart-format-path "C:/Languages/flutter/bin/cache/dart-sdk/bin")
;; (setq dart-executable-path "C:/Languages/flutter/bin/cache/dart-sdk/bin")
;; (setq dart-analysis-server-snapshot-path "C:/Languages/flutter/bin/cache/dart-sdk/bin/snapshots/dartanalyzer.dartsnapshot")
;; (add-to-list 'auto-mode-alist '("\\.dart\\'" . dart-mode))
;; (setq dart-enable-analysis-server nil)
;; (setq dart-debug t)


(setq lang :de)
(defun change-lang ()
  (interactive)
  ;; (keyboard-translate ?z ?y)
  (if (eq lang :de)
      (progn
        (keyboard-translate ?y ?z)  ; For german keyboards
        (keyboard-translate ?z ?y)
        (set-input-method 'korean-hangul)
        (setq lang :kr))
    (toggle-input-method nil)
    (keyboard-translate ?y ?y)  ; For german keyboards
    (keyboard-translate ?z ?z)
    (setq lang :de)))

(global-set-key (kbd "<f1>") 'change-lang)
;; (let ((fontset "fontset-default")) (set-fontset-font fontset 'hangul"gulim:pixelsize=18"))
(let ((fontset "fontset-default")) (set-fontset-font fontset 'hangul "noto sans mono cjk kr regular:pixelsize=20"))
(let ((fontset "fontset-default")) (set-fontset-font fontset 'han    "noto sans mono cjk tc regular:pixelsize=18"))


;; Define your custom doom-modeline
(doom-modeline-def-modeline 'my-simple-line
  '(bar matches buffer-info remote-host buffer-position parrot selection-info)
  '(misc-info minor-modes input-method buffer-position buffer-encoding major-mode process vcs checker))

;; Add to `doom-modeline-mode-hook` or other hooks
(defun setup-custom-doom-modeline ()
  (doom-modeline-set-modeline 'my-simple-line 'default))
(add-hook 'doom-modeline-mode-hook 'setup-custom-doom-modeline)
