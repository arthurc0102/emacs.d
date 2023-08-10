(use-package lsp-mode
  :commands (lsp lsp-deferred))

;; optional - provides fancier overlays
(use-package lsp-ui
  :commands lsp-ui-mode)

(setq lsp-enable-snippet nil)
(setq lsp-ui-flycheck-enable t)
(setq lsp-headerline-breadcrumb-enable nil)
(setq lsp-keymap-prefix "C-c l")

(add-hook 'lsp-mode-hook 'lsp-ui-mode)
