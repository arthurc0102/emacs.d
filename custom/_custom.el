;; Toolbar config
(tool-bar-mode -1)

;; Hide menu bar at no window mode
(unless (display-graphic-p)
   (menu-bar-mode -1))

;; Full screen at start
(toggle-frame-maximized)

;; Font setting
(set-frame-font "Cascadia Code PL 12")

;; Hide the startup message
(setq inhibit-startup-message t)

;; Theme settings
(load-theme 'dracula t)

;; Editor
(global-linum-mode 1)
(setq linum-format "%d ")  ;; Add space after line number
(setq auto-save-default nil)
(setq-default indent-tabs-mode nil)

;; Flycheck
(require 'flycheck)
(global-flycheck-mode)

;; Remove trailing newlines and spaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Move backup file to one path
(setq backup-directory-alist '(("" . "~/.emacs.d/.backup")))

;; Neotree
(setq neo-window-fixed-size nil)
(setq neo-window-width 40)
