;;;; go get golang.org/x/tools/cmd/goimports
;;;; go get github.com/rogpeppe/godef
;;;; go get -u github.com/nsf/gocode
;;;; gocode set propose-builtins true

;;;; For auto import
(setq gofmt-command "goimports")
;;;; For auto format code
(add-hook 'before-save-hook #'gofmt-before-save)
;;;; Auto remove unused package
(add-hook 'go-mode-hook (lambda()
                         (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

(add-hook 'go-mode-hook #'lsp-deferred)
