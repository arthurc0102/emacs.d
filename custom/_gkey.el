;;設定到文件最上方和最下方的ＫＥＹ
;(global-set-key (kbd "<C-S-iso-lefttab>") 'beginning-of-buffer)
;(global-set-key (kbd "<C-tab>") 'end-of-buffer)


;(global-set-key (kbd "<M-up>") 'beginning-of-buffer)
;(global-set-key (kbd "<M-down>") 'end-of-buffer)

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
