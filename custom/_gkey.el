;; Magit key set
(global-set-key (kbd "C-x G") 'magit-status)

;; Iedit key set
(define-key global-map (kbd "C-c o") 'iedit-mode)

;; Buffer move
(global-set-key (kbd "s-<left>")  'windmove-left)
(global-set-key (kbd "s-<right>") 'windmove-right)
(global-set-key (kbd "s-<up>")    'windmove-up)
(global-set-key (kbd "s-<down>")  'windmove-down)

;; Split buttom window
(global-set-key (kbd "<f5>") (fset 'work-window
   "\C-x2\C-xo\C-x2\C-x0\C-xo")
)

;; Neotree
(global-set-key (kbd "C-x p") 'neotree-toggle)
