;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq backup-directory-alist `(("." . "~.saves")))
(setq inhibit-startup-message t)
(global-set-key (kbd "M-n") 'forward-paragraph) ; Alt+n
(global-set-key (kbd "M-p") 'backward-paragraph) ; Alt+p

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(package-selected-packages (quote (go-mode))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

(save-place-mode 1)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(my-long-line-face ((((class color)) (:background "gray10"))) t)
 '(my-tab-face ((((class color)) (:background "grey10"))) t)
 '(my-trailing-space-face ((((class color)) (:background "gray10"))) t))

(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing));; tabs
(global-whitespace-mode t)

(load-theme 'misterioso)
(put 'set-goal-column 'disabled nil)

;; (add-to-list 'exec-path "/Users/tleyden/Development/gocode/bin")
;; (add-hook 'before-save-hook 'gofmt-before-save)

;; M-x package-install
;; go-mode
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
