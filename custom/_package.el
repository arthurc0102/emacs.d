(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(
    ;; --- For emacs ---
    better-defaults  ;; Some defaults
    nord-theme       ;; Theme
    popup            ;; Let Emacs show popup. The API for company packages
    use-package      ;; For apply any package with config
    editorconfig     ;; Let emacs support editor config file (.editorconfig)

    ;; --- For edit ---
    iedit             ;; Edit same word in same time with select word and type C-o
    multiple-cursors  ;; Edit multiple same word with selected
    autopair          ;; Auto quote pair. ex: type ", auto input ""
    flycheck          ;; Error check
    auto-complete     ;; Auto complete mode for any language

    ;; Language server
    lsp-mode     ;; Language server mode
    lsp-ui       ;; UI integrations for lsp-mode
    company      ;; Company completion

    ;; Tools
    magit    ;; Git
    neotree  ;; Tree view

    ;; --- Python ---
    ein      ;; iPython
    elpy     ;; Emacs Python Development Environment.
    py-yapf  ;; Yapf support
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      my-packages)
