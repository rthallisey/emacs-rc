(setq backup-directory-alist `(("." . "~.saves")))
(setq inhibit-startup-message t)
(global-set-key (kbd "M-n") 'forward-paragraph) ; Alt+n
(global-set-key (kbd "M-p") 'backward-paragraph) ; Alt+p

(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

(require 'saveplace)
(setq-default save-place t)

(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

(custom-set-faces
 '(my-tab-face            ((((class color)) (:background "grey10"))) t)
 '(my-trailing-space-face ((((class color)) (:background "gray10"))) t)
 '(my-long-line-face ((((class color)) (:background "gray10"))) t))

(load-theme 'misterioso)
(put 'set-goal-column 'disabled nil)

;; (add-to-list 'exec-path "/Users/tleyden/Development/gocode/bin")
;; (add-hook 'before-save-hook 'gofmt-before-save)

;; M-x package-install
;; go-mode
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(put 'upcase-region 'disabled nil)
