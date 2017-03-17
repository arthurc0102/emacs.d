;; magit key set
(global-set-key (kbd "C-x G") 'magit-status)

;; iedit key set
(define-key global-map (kbd "C-c o") 'iedit-mode)

;; buffer move - mode1
(global-set-key (kbd "C-<left>")  'windmove-left)
(global-set-key (kbd "C-<right>") 'windmove-right)
(global-set-key (kbd "C-<up>")    'windmove-up)
(global-set-key (kbd "C-<down>")  'windmove-down)

;; buffer move - mode2
(global-set-key (kbd "M-S") 'windmove-up)
(global-set-key (kbd "M-X") 'windmove-down)
(global-set-key (kbd "M-Z") 'windmove-left)
(global-set-key (kbd "M-C") 'windmove-right)

;; neotree key set
(global-set-key [f8] 'neotree-toggle)

;; multiple-cursors key set
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; move line key set
(global-set-key (kbd "M-p") 'move-line-up)
(global-set-key (kbd "M-n") 'move-line-down)
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)

;; shell command key set
(global-set-key [f5] 'shell-command)
