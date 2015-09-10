;;(custom-set-variables
;; '(ansi-color-names-vector
;;   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
;; '(custom-enabled-themes (quote (Darkula))))
;; (custom-set-faces)
;; (put 'scroll-left 'disabled nil)
(load-theme 'wombat)
;;adwaita deeper-blue dichromacy light-blue manoj-dark misterioso tango tango-dark tsdh-dark tsdh-light wheatgrass whiteboard wombat

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/pacakges/"))
(package-initialize)

(line-number-mode 1)
(column-number-mode 1)

(defvar my-packages '(cider better-defaults find-file-in-project magit smex scpaste paredit idle-highlight-mode ido-ubiquitous rainbow-delimiters))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(require 'icomplete)
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(add-to-list 'load-path "~/.emacs.d/direx/")
(require 'direx)

(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)

;;(require 'smartparens-config)
;;(add-hook 'cider-mode-hook 'eldoc-mode)

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-mode-hook 'subword-mode)
(add-hook 'cider-mode-hook 'paredit-mode)
;;(add-hook 'cider-repl-mode-hook 'cider-turn-on-eldoc-mode)
;;(setq cider-repl-tab-command 'indent-for-tab-command)

(setq use-autocomplete t) 
(setq ido-everywhere t)
(setq use-icicles t)
(global-company-mode)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'cider-repl-mode-hook 'company-mode)
;;(add-hook 'cider-mode-hook 'rainbow-delimiters-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)
(add-hook 'cider-mode-hook 'rainbow-delimiters-mode)
