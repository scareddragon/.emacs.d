;; javascript
(use-package js2-mode :ensure t :defer t
  :mode (("\\.js\\'" . js2-mode)
         ("\\.json\\'" . javascript-mode))
  :commands js2-mode
  :init (progn
          (setq-default js2-basic-offset 2
                        js2-indent-switch-body t
                        js2-auto-indent-p t
                        js2-global-externs '("angular")
                        js2-indent-on-enter-key t
                        flycheck-disabled-checkers '(javascript-jshint)
                        flycheck-checkers '(javascript-eslint)
                        flycheck-eslintrc "~/.eslintrc"))
          (add-to-list 'interpreter-mode-alist (cons "node" 'js2-mode))
          (add-to-list 'js2-mode-hook #'flycheck-mode)
          (add-to-list 'js2-mode-hook #'js2-refactor-mode))
