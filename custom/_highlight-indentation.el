(require 'highlight-indentation)

(add-hook 'python-mode-hook
          (lambda () (highlight-indentation-current-column-mode)))

(add-hook 'yaml-mode-hook
          (lambda () (highlight-indentation-mode)))
(add-hook 'yaml-mode-hook
          (lambda () (highlight-indentation-current-column-mode)))
(add-hook 'yaml-mode-hook
          (lambda () (highlight-indentation-set-offset 2)))

(set-face-background 'highlight-indentation-face "#434445")
(set-face-background 'highlight-indentation-current-column-face "#5b5c5e")
