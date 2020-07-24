(use-package lsp-mode
  :commands (lsp lsp-deferred))

;; optional - provides fancier overlays
(use-package lsp-ui
  :commands lsp-ui-mode)

;; if you use company-mode for completion (otherwise, complete-at-point works out of the box):
(use-package company-lsp
  :commands company-lsp)

(setq lsp-enable-snippet nil)
(setq lsp-ui-flycheck-enable t)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
