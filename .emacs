;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; Added by Package.el.  This must come before configurations of
; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(menu-bar-mode -1)
(tool-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
;;(linum-mode t)
(global-linum-mode t)
;;;;;;;;;;;;;;;;;;; window
(global-set-key (kbd "C-x C-h")  'windmove-left)
(global-set-key (kbd "C-x C-l") 'windmove-right)
(global-set-key (kbd "C-x C-k")    'windmove-up)
(global-set-key (kbd "C-x C-n")  'windmove-down)

(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files


(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/")
             t)

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/")
             t)


(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))


;; This sets up the load path so that we can override it
(package-initialize)

(require 'use-package)

(use-package ido 
  :init
  (progn
  (ido-mode 1)
  (setq ido-default-buffer-method 'selected-window)
  (add-hook 'ido-make-file-list-hook 'ido-sort-mtime)
  (add-hook 'ido-make-dir-list-hook 'ido-sort-mtime)
  (defun ido-sort-mtime ()
    (setq ido-temp-list
          (sort ido-temp-list
                (lambda (a b)
                  (let ((ta (nth 5 (file-attributes (concat ido-current-directory a))))
                        (tb (nth 5 (file-attributes (concat ido-current-directory b)))))
                    (if (= (nth 0 ta) (nth 0 tb))
                        (> (nth 1 ta) (nth 1 tb))
                      (> (nth 0 ta) (nth 0 tb)))))))
    (ido-to-end  ;; move . files to end (again)
     (delq nil (mapcar
                (lambda (x) (if (string-equal (substring x 0 1) ".") x))
                ido-temp-list))))))



(use-package elpy
  :ensure t
  :config
  (elpy-enable)
  (setq elpy-rpc-python-command "python3")
  (setq elpy-rpc-backend "jedi")
  (elpy-use-cpython (or (executable-find "python3")
                        (executable-find "/usr/bin/python3")
                        (executable-find "/usr/local/bin/python3")
                        "python3"))
  ;; (elpy-use-ipython)
  (setq python-shell-interpreter-args "--simple-prompt -i")
  (add-hook 'python-mode-hook (lambda ()
                              (setq indent-tabs-mode nil))))
 
(use-package ein
  :ensure t)



;(package-refresh-contents)
;(mapc
; (lambda (p)
;   (unless (package-installed-p p)
;     (package-install p)))
; '(stan-mode stan-snippets))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(stan-snippets flycheck-stan eldoc-stan company-stan stan-mode use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )




;;; install stan
;;M-x package-refresh-contents [RET]

;;M-x package-install [RET] stan-mode [RET]
;;M-x package-install [RET] company-stan [RET]
;;M-x package-install [RET] eldoc-stan [RET]
;;M-x package-install [RET] flycheck-stan [RET]
;;M-x package-install [RET] stan-snippets [RET]
;;If the installation does not work, try refreshing the package list:
;;M-x package-refresh-contents [RET]


;;; stan-mode.el
(use-package stan-mode
  :mode ("\\.stan\\'" . stan-mode)
  :hook (stan-mode . stan-mode-setup)
  ;;
  :config
  ;; The officially recommended offset is 2.
  (setq stan-indentation-offset 2))

;;; company-stan.el
(use-package company-stan
  :hook (stan-mode . company-stan-setup)
  ;;
  :config
  ;; Whether to use fuzzy matching in `company-stan'
  (setq company-stan-fuzzy nil))

;;; eldoc-stan.el
(use-package eldoc-stan
  :hook (stan-mode . eldoc-stan-setup)
  ;;
  :config
  ;; No configuration options as of now.
  )

;;; flycheck-stan.el
(use-package flycheck-stan
  ;; Add a hook to setup `flycheck-stan' upon `stan-mode' entry
  :hook ((stan-mode . flycheck-stan-stanc2-setup)
         (stan-mode . flycheck-stan-stanc3-setup))
  :config
  ;; A string containing the name or the path of the stanc2 executable
  ;; If nil, defaults to `stanc2'
  (setq flycheck-stanc-executable nil)
  ;; A string containing the name or the path of the stanc2 executable
  ;; If nil, defaults to `stanc3'
  (setq flycheck-stanc3-executable nil))

;;; stan-snippets.el
(use-package stan-snippets
  :hook (stan-mode . stan-snippets-initialize)
  ;;
  :config
  ;; No configuration options as of now.
  )

;;; ac-stan.el (Not on MELPA; Need manual installation)
(use-package ac-stan
  :load-path "path-to-your-directory/ac-stan/"
  ;; Delete the line below if using.
  :disabled t
  :hook (stan-mode . stan-ac-mode-setup)
  ;;
  :config
  ;; No configuration options as of now.
  )




