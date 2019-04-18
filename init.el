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
(setq org-directory "~/Documents/")
(setq org-default-notes-file "notes.org")


(define-key global-map "\C-cc" 'org-capture)
; Org-captureのテンプレート（メニュー）の設定
(setq org-capture-templates
      '(("n" "Note" entry (file+headline "~/Documents/notes.org" "Notes")
         "* %?\nEntered on %U\n %i\n %a")
        ))

(defun show-org-buffer (file)
  "Show an org-file FILE on the current buffer. "
  (interactive)
  (if (get-buffer file)
      (let ((buffer (get-buffer file)))
	(switch-to buffer buffer)
	(message "%s" file))
    (find-file (concat "~/Documents/notes.org" file))))
(global-set-key (kbd "C-M-^") '(lambda () (interactive)
				 (show-org-buffer
				  "notes.org")))

(load-theme 'whiteboard t)
