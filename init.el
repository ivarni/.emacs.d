;;remove splash screen
(setq inhibit-startup-message t)

;;start in fullscreen
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;;solarized dark theme
(setq custom-theme-directory (concat user-emacs-directory "themes"))
(dolist
    (path (directory-files custom-theme-directory t "\\w+"))
  (when (file-directory-p path)
    (add-to-list 'custom-theme-load-path path)))
(load-theme 'solarized t)
(set-frame-parameter nil 'background-mode 'dark)
(enable-theme 'solarized)

;;use spaces
(setq-default indent-tabs-mode nil)

;;accented characters
(require 'iso-transl)

;;add newline at end of files
(setq require-final-newline t)

(require 'saveplace)                          ;; get the package
(setq save-place-file "~/.emacs.d/saveplace") ;; keep my ~/ clean
(setq-default save-place t)                   ;; activate it for all buffers
