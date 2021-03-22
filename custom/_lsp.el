(use-package lsp-mode
  :commands (lsp lsp-deferred))

;; optional - provides fancier overlays
(use-package lsp-ui
  :commands lsp-ui-mode)

(setq lsp-enable-snippet nil)
(setq lsp-ui-flycheck-enable t)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
