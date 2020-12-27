(org-babel-load-file "~/.emacs.d/p_fonts.org")
(org-babel-load-file "~/.emacs.d/p_general.org")
(org-babel-load-file "~/.emacs.d/p_elegant.org")
(org-babel-load-file "~/.emacs.d/config.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" default))
 '(ledger-reports
   '(("bal" "ledger [[ledger-mode-flags]] -f /home/stb/Development/playground/ledger/example.journal bal -X €")
     ("reg" "%(binary) -f %(ledger-file) reg")
     ("payee" "%(binary) -f %(ledger-file) reg @%(payee)")
     ("account" "%(binary) -f %(ledger-file) reg %(account)")))
 '(package-selected-packages
   '(yaml-mode ess gnuplot gnuplot-mode pyenv-mode elpy which-key visual-fill-column visual-fill use-package rainbow-delimiters org-bullets ivy-rich hydra helpful haskell-mode general exec-path-from-shell evil-magit evil-collection doom-themes doom-modeline counsel-projectile command-log-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
