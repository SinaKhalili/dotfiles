
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
;; Globals which emacs has provided and are probably good style
(setq inhibit-startup-screen t)
;; Globals which I have defined and are possibly bad style
(setq def-font "Hack-15")

(tool-bar-mode 0)
(menu-bar-mode 0)
(set-default-font def-font)
(load-theme 'wheatgrass)
(ido-mode 1)
;; Other cool themes 'light-blue, 'wheatgrass
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (ghc haskell-mode smex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))


(setq org-capture-templates '(("t" "Todo [inbox]" entry
			       (file+headline "~/inbox.org" "Tasks")
			       "* TODO %i%?")
			      ("T" "Tickler" entry
			       (file+headline "~/tickler.org" "Tickler")
			       "* %i%? \n %U")))
(define-minor-mode retro-mode
  "C o m p u t e l i k e i t ' s 1 9 8 5"
  :lighter "   good programming is fun "
  (if retro-mode
       ;;((set-frame-font "Px437 IBM VGA8-16" nil t)
       ;;((set-frame-font "Px437 TandyNew Mono-16" nil t)
       ((set-frame-font "Px437 CompaqThin 8x14-18" nil t)
       ;;((set-frame-font "Px437 IBM VGA8-16" nil t)
         (set-default-font def-font)))



