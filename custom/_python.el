;; PYTHON CONFIGURATION
;; --------------------------------------

(elpy-enable)
(elpy-use-ipython)

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

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(setq jedi:server-command '("/home/arthur/.emacs.d/elpa/jedi-core-20160709.722/jediepcserver.py"))

;; use python3.5
(setq python-python-command "/usr/bin/python3")

(defun python-shell-parse-command ()
  "Return the string used to execute the inferior Python process."
  "/usr/bin/python3 -i"
  )
(setq python-shell-completion-native-enable nil)
