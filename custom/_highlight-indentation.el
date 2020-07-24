(require 'highlight-indentation)

(add-hook 'python-mode-hook
          (lambda () (highlight-indentation-current-column-mode)))

(add-hook 'yaml-mode-hook
          (lambda () (highlight-indentation-mode)))
(add-hook 'yaml-mode-hook
          (lambda () (highlight-indentation-current-column-mode)))
(add-hook 'yaml-mode-hook
          (lambda () (highlight-indentation-set-offset 2)))
