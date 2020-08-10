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

(package-initialize)
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))


;; This sets up the load path so that we can override it
(package-initialize)


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


(use-package python
  :ensure t
  :defer t
  :mode ("\\.py\\'" . python-mode)
  )

(setq python-shell-interpreter "python")

(use-package python
  :mode ("\\.py\\'" . python-mode)
        ("\\.wsgi$" . python-mode)
  :interpreter ("python" . python-mode)
 
  :init
  (setq-default indent-tabs-mode nil)
 
  :config
  (setq python-indent-offset 4)
  ;; TODO pyvenv
  (setq flycheck-python-pycompile-executable
        (or (executable-find "python3")
            (executable-find "/usr/bin/python3")
            (executable-find "/usr/local/bin/python3")
            "python"))
  (setq flycheck-python-pylint-executable
        (or (executable-find "pylint3")
            (executable-find "/usr/bin/pylint3")
            (executable-find "/usr/local/bin/pylint3")
            "pyline"))
  (setq flycheck-python-flake8-executable
        (or (executable-find "flake8")
            (executable-find "/usr/bin/flake8")
            (executable-find "/usr/local/bin/flake8")
            "flake8")))



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
 '(package-selected-packages (quote (use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )