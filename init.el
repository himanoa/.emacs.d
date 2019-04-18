(global-linum-mode t)

(add-to-list 'default-frame-alist
             '(font . "M+ 1mn-12"))
(setq inhibit-splash-screen t)
(global-set-key "\C-h" 'delete-backward-char)
(prefer-coding-system 'utf-8)
(set-default 'buffer-file-coding-system 'utf-8)
(menu-bar-mode -1)
(set-default 'line-spacing 5)
(show-paren-mode nil)
(setq x-select-enable-clipboard t)
