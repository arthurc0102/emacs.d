;; 設定LISP直譯器
(setq inferior-lisp-program "/usr/bin/sbcl")

;; 載入slime下的檔案，並載入slime
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup '(slime-fancy))

;;; 讓在slime-mode下可以直接使用TAB鍵，讓slime提示或自動完成指令
(defun slime-tab ()
  "slime-mode tab dwim, either indent, complete symbol or yas/expand"
  (interactive)
  (let ((r (slime-indent-and-complete-symbol)))
    (unless r
      (yas/expand))))

(defun my-slime-mode-hook ()
  (interactive)
  (define-key slime-mode-map (kbd "<tab>")
    'slime-tab))
;; (add-hook 'slime-mode-hook 'my-slime-mode-hook)
(add-hook 'slime-mode-hook (lambda () (local-set-key (kbd (if (window-system) "<tab>" "TAB")) #'slime-tab)))
(add-hook 'slime-mode-hook (lambda ()                                                                         
                             (show-paren-mode t)                                                              
                             (setq show-paren-style 'expression)                                              
                             ))

