(fset 'reload-buffer
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([24 98 return 24 98 return] 0 "%d")) arg)))
