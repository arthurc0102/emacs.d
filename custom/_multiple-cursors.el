(require 'multiple-cursors)

(global-set-key (kbd "C-c e") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C-c a") 'mc/mark-all-like-this)

(global-set-key (kbd "M-n") 'mc/mark-next-like-this)
(global-set-key (kbd "M-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "M-N") 'mc/skip-to-next-like-this)
(global-set-key (kbd "M-P") 'mc/skip-to-previous-like-this)
(global-set-key (kbd "C-c n") 'mc/unmark-next-like-this)
(global-set-key (kbd "C-c p") 'mc/unmark-previous-like-this)
