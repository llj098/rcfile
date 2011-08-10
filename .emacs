(let ((default-directory "~/.emacs.d/site-lisp"))
    (normal-top-level-add-subdirs-to-load-path)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "~/.emacs.d/color-theme")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))

(el-get 'sync)

(require 'color-theme)
(color-theme-initialize)
(color-theme-molokai)
(set-default-font "Monospace-11")


;;ibuffer
;(global-set-key (kbd "C-x C-b") 'ibuffer)
;(autoload 'ibuffer "ibuffer" "List buffers." t)

;;common set
;(column-number-mode t)
;(scroll-bar-mode nil)
;(set-scroll-bar-mode nil)  
;(require 'wb-line-number)
;(wb-line-number-enable)
;(require 'vimpulse)
;(require 'undo-tree)

;(require 'ido)
;(ido-mode t)

;;some bars
;(require 'sr-speedbar)
;(sr-speedbar-open)
;;(require 'tabbar)
;(tabbar-mode)
;(global-set-key (kbd "M--") 'tabbar-backward-group)
;(global-set-key (kbd "M-=") 'tabbar-forward-group)
;(global-set-key (kbd "M-1") 'tabbar-backward)
;(global-set-key (kbd "M-2") 'tabbar-forward) 


;(setq evernote-enml-formatter-command '("w3m" "-dump" "-I" "UTF8" "-O" "UTF8")) ; option
;require 'evernote-mode)
;(global-set-key "\C-cec" 'evernote-create-note)
;(global-set-key "\C-ceo" 'evernote-open-note)
;(global-set-key "\C-ces" 'evernote-search-notes)
;(global-set-key "\C-ceS" 'evernote-do-saved-search)
;(global-set-key "\C-cew" 'evernote-write-note)
;(global-set-key "\C-cep" 'evernote-post-region)
;(global-set-key "\C-ceb" 'evernote-browser)

;CHINESE INPUT
(global-set-key (kbd "C-SPC") 'nil)


;(require 'jabber-autoloads)
;(setq jabber-account-list
      ;'(("llj098@gmail.com"
         ;(:network-server . "talk.google.com")
         ;(:connection-type . ssl))))
;
;(require 'scala-mode-auto)
;(require 'go-mode)
;
;;; Load the ensime lisp code...
;(require 'ensime)
;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
;(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
;; MINI HOWTO: 
;; Open .scala file. M-x ensime (once per project)

;(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 ;)
;(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 ;)
;e
)
