;; Toolbar config
(tool-bar-mode -1)

;; Hide menu bar at no window mode
(unless (display-graphic-p)
   (menu-bar-mode -1))

;; Full screen at start
(toggle-frame-maximized)

;; Font setting

;; Hide the startup message
(setq inhibit-startup-message t)

;; Theme settings
(load-theme 'nord t)

;; Editor
(global-linum-mode 1)
(setq linum-format "%d ")  ;; Add space after line number
(setq auto-save-default nil)
(setq-default indent-tabs-mode nil)

;; Flycheck
(global-flycheck-mode)
