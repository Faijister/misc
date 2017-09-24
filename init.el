;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; disable tool bar
(tool-bar-mode -1)

;; disable scroll bar
(scroll-bar-mode -1)

;; display line number
(global-linum-mode 1)

;; set cursor stype
(setq-default cursor-type 'bar)

;; disable welcome page
(setq inhibit-splash-screen 1)

;; set font
(set-face-attribute 'default nil :height 130)

;; disable backup file~
(setq make-backup-files nil)

;; fast open config file
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;; bind to F2
(global-set-key (kbd "<f2>") 'open-init-file)

;; enable complete anything
(global-company-mode 1)

;; recent open files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
;; bind to C-x C-r [find file read only]
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; select input -> will delete select after input
(delete-selection-mode 1)

;; binding some useful function
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
