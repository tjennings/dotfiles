(prelude-require-packages '(evil-tabs flycheck))

(global-flycheck-mode)
(evil-mode 1)

(menu-bar-mode -1)
(tool-bar-mode -1)
(global-evil-tabs-mode t)

(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

(define-key evil-normal-state-map "tt" 'projectile-find-file) ;next tab

;; neotree
(add-to-list 'load-path "~/.emacs.d/personal/scripts/neotree")
  (require 'neotree)
  (global-set-key [f8] 'neotree-toggle)
(setq neo-smart-open t)
(setq projectile-switch-project-action 'neotree-projectile-action)
(add-hook 'neotree-mode-hook
           (lambda ()
             (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
             (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
             (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
             (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

;; surround
(add-to-list 'load-path "~/.emacs.d/personal/scripts")
(require 'evil-surround)
(global-evil-surround-mode 1)

(global-linum-mode t)
(global-hl-line-mode 1)
(set-face-background 'hl-line "#3e4446")
(set-face-foreground 'highlight nil)
(setq linum-format "%d ")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (markdown-mode evil-tabs evil zop-to-char zenburn-theme yari which-key web-mode volatile-highlights vkill undo-tree smartrep smartparens smart-mode-line ruby-tools rainbow-mode rainbow-delimiters projectile ov operate-on-number move-text magit json-mode js2-mode inf-ruby imenu-anywhere guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist geiser flycheck expand-region exec-path-from-shell ensime elisp-slime-nav easy-kill discover-my-major diminish diff-hl crux browse-kill-ring beacon anzu anaconda-mode ace-window))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
