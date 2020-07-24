;; PYTHON CONFIGURATION
;; --------------------------------------
(elpy-enable)
(setq python-shell-interpreter "python"
      python-shell-interpreter-args "-i")

;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))

  ;; yas-expand key set
  (define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
;; init.el ends here

(defun python-shell-parse-command ()
  "Return the string used to execute the inferior Python process."
  "python -i")

(setq python-shell-completion-native-enable nil)

;; lsp
;; pip install python-language-server[all]
(add-hook 'python-mode-hook #'lsp-deferred)
(setq lsp-pyls-plugins-pylint-enabled nil)
