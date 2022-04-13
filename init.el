;; Add path to list
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/custom")

;; Load files from lisp folder
(require 'highlight-indentation)

;; Load files from custom folder
(load "_package.el")
(load "_custom.el")
(load "_gkey.el")
(load "_multiple-cursors.el")
(load "_smart-move-beginning-of-line.el")
(load "_move-lines.el")
(load "_autopair.el")
(load "_editorconfig.el")
(load "_highlight-indentation.el")
(load "_lsp.el")
(load "_python.el")
(load "_company.el")

;; Generate by emacs, don't change it!
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(py-yapf elpy ein magit company-lsp lsp-ui lsp-mode auto-complete flycheck autopair multiple-cursors iedit editorconfig use-package popup nord-theme better-defaults)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
