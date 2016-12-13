;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(use-package
    better-defaults
    ein
    elpy
    flycheck
    material-theme
    py-autopep8
    magit
    iedit
    fuzzy
    nose
    popup
    jedi
    autopair
    dirtree
    enh-ruby-mode
    inf-ruby
    web-mode
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

; markdown mode
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))
