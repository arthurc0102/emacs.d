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
    multiple-cursors
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)
