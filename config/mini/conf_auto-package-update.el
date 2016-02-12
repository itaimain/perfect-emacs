(global-set-key (kbd "C-c p u") 'auto-package-update-now)

(add-hook 'auto-package-update-before-hook
	  (lambda () (message "Starting to update packages")))

(add-hook 'auto-package-update-after-hook
	  (lambda () (message "Packages update finished")))
