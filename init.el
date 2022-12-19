(ido-mode 1)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(setq ring-bell-function 'ignore)
(setq make-backup-files nil)
(setq ispell-program-name "/usr/local/bin/aspell")

(add-to-list 'load-path
	     "~/.emacs.d/kotlin-mode")

(load-library "kotlin-mode-lexer")
(load-library "kotlin-mode")

(tool-bar-mode -1)
(scroll-bar-mode -1)

(if (not (display-graphic-p))
    (menu-bar-mode -1))

(add-to-list 'initial-frame-alist '(width . 106))
(add-to-list 'initial-frame-alist '(height . 60))
(add-to-list 'initial-frame-alist '(left . 50))
(add-to-list 'initial-frame-alist '(righth . 50))
(if (display-graphic-p)
    (add-to-list 'initial-frame-alist '(background-color . "ivory")))

(setq default-frame-alist initial-frame-alist)

(add-to-list 'load-path
	     "~/.emacs.d/markdown-mode")
(load-library "markdown-mode")

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'flyspell-buffer)
(add-hook 'text-mode-hook 'auto-fill-mode)

(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(add-hook 'prog-mode-hook 'flyspell-buffer)

(column-number-mode 1)

(dired "~")
