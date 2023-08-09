(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp-deferred))))

(elpy-enable)

;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  ;; yas-expand key set
  (define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(defun python-shell-parse-command ()
  "Return the string used to execute the inferior Python process."
  "python -i")

(setq python-shell-interpreter "python"
      python-shell-interpreter-args "-i")

(setq python-shell-completion-native-enable nil)

;; Use black to format code
(setq elpy-formatter "black")

;; C-c C-r x to autoformat code
(define-key elpy-refactor-map (kbd "x")
  (cons (format "%sormat code"
                (propertize "f" 'face 'bold))
        'elpy-format-code))

;; Ruff
(setq lsp-ruff-lsp-server-command '("~/.emacs.d/.venvs/ruff-lsp/bin/ruff-lsp"))
