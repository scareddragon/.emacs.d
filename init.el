;; utility functions ---------------------------------------------------

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

;; Configuration -------------------------------------------------------

;; global variables
(load-user-file "globals.el")

;; buffer local variables
(load-user-file "locals.el")

;; the package manager
(load-user-file "package-manager.el")

;; evil
(load-user-file "evil.el")

;; ide
(load-user-file "ide.el")

;; javascript
(load-user-file "javascript.el")

;; ui
(load-user-file "ui.el")

;; mode-line
(load-user-file "mode-line.el")


;; global keybindings
(load-user-file "global-keys.el")

;; hooks
(add-hook 'prog-mode-hook 
  (lambda () 
    (global-company-mode)
    (rainbow-delimiters-mode)
    (smartparens-global-mode)))

;; autogenerated stuff -------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("51e228ffd6c4fff9b5168b31d5927c27734e82ec61f414970fc6bcce23bc140d" "69831e572dc46ced47c5309bff8fc2f4a9e237e2bad2c76f313da814a4628694" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(package-selected-packages
   (quote
    (magit windresize editorconfig flx flx-ido twilight-theme solarized-theme window-numbering which-key use-package tern smartparens rainbow-delimiters powerline neotree move-text monokai-theme js2-refactor js2-highlight-vars helm-projectile helm-emmet git-gutter flycheck-haskell expand-region evil-escape ensime elscreen dashboard company-ghci company-ghc)))
 '(recentf-mode t)
 '(safe-local-variable-values (quote ((projectile-project-name . "orchis-ui")))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
