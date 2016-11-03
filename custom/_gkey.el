;;設定到文件最上方和最下方的ＫＥＹ
;(global-set-key (kbd "<C-S-iso-lefttab>") 'beginning-of-buffer)
;(global-set-key (kbd "<C-tab>") 'end-of-buffer)


;(global-set-key (kbd "<M-up>") 'beginning-of-buffer)
;(global-set-key (kbd "<M-down>") 'end-of-buffer)

;; magit key set
(global-set-key (kbd "C-x G") 'magit-status)
;; iedit key set
(define-key global-map (kbd "C-c o") 'iedit-mode)

;; buffer move
(global-set-key (kbd "C-<left>")  'windmove-left)
(global-set-key (kbd "C-<right>") 'windmove-right)
(global-set-key (kbd "C-<up>")    'windmove-up)
(global-set-key (kbd "C-<down>")  'windmove-down)
