;; BASIC CUSTOMIZATION
;; --------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((external-format . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; 設定文字
;; (set-default-font "-WenQ-文泉驛等寬正黑-normal-normal-normal-*-30-*-*-*-*-0-iso10646-1")
(set-default-font "Inconsolata 12")
;; (set-default-font "Consolas 22")

;; 設定行距
(setq-default line-spacing 5)

;; 開始就最大化
(defun toggle-fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
        '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
        '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  )
;; if is GUI then max windows
(when window-system
    (toggle-fullscreen))
;; hide the startup message
(setq inhibit-startup-message t)
;; load material theme
(load-theme 'material t)
;;設定行號於左側
(global-linum-mode 1)
;; 顯示選取的行
(global-hl-line-mode 1)
;; Disable menu bar
(menu-bar-mode -1)
;; Disable tool bar
(tool-bar-mode -1)
