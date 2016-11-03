;; add path to list

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/custom")
;; require .el
(require 'highlight-indentation)
(setq js-indent-level 2)


;; LOAD file
(load "_package.el")
(load "_custom.el")
(load "_gkey.el")
(load "_autopair.el")
(load "_highlight-indentation.el")
;(load "_lisp.el")
(load "_python.el")
(load "_ruby.el")
(load "_web-mode.el")


(fset 'reload-buffer
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([24 98 return 24 98 return] 0 "%d")) arg)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (markdown-mode web-mode use-package py-autopep8 nose material-theme magit jedi inf-ruby iedit fuzzy flycheck enh-ruby-mode elpy ein dirtree better-defaults autopair)))
 '(safe-local-variable-values (quote ((external-format . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
