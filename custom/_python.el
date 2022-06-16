(add-hook 'python-mode-hook #'lsp-deferred)

(setq lsp-pylsp-plugins-pydocstyle-enabled nil)

(with-eval-after-load 'lsp-mode
  (lsp-register-custom-settings
  '(("pylsp.plugins.pylsp_mypy.enabled" t)
    ("pylsp.plugins.pylsp_mypy.overrides" ["--follow-imports=silent" "--ignore-missing-imports" "--show-column-numbers" t]))))

(elpy-enable)

;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  ;; yas-expand key set
  (define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; (require 'py-yapf)
;; (add-hook 'python-mode-hook 'py-yapf-enable-on-save)

(defun python-shell-parse-command ()
  "Return the string used to execute the inferior Python process."
  "python -i")

(setq python-shell-interpreter "python"
      python-shell-interpreter-args "-i")

(setq python-shell-completion-native-enable nil)
