;;; graphite-theme.el --- A sparkling, shimmering theme for Emacs
;;; Commentary:
;;
;; This theme does it's best to make Emacs look beautiful,
;; as with every other theme you will ever see.
;; One way it does this by making colours stick out,  by maintaining
;; a stark contrast between foreground and background.
;;
;; Try it out!
;;
;;; Code:

(require 'autothemer)

(unless (>= emacs-major-version 26)
  (error "Requires Emacs 26 or later"))

(autothemer-deftheme
 graphite "A sparkling, shimmering theme for Emacs"

 ((((class color) (min-colors #xFFFFFF)))
  ;; Specify the color palette, color columns correspond to each of the classes above.
  (fg "#fefefa")
  (fg-dark "#bfbfff")
  (fg-dark-alt "#6f6fbf")
  (bg "#111111")
  (bg-dark "#090909")
  (bg-light "#2F2F3F")
  (selection "#1f1f1f")
  (highlight "#6b6b87")
  (comment "#4f4f6f")
  (graphite-red "#fc5078")
  (graphite-green "#69f961")
  (graphite-blue "#64c7fc")
  (graphite-magenta "#e572c8")
  (graphite-orange "#f98e63")
  (graphite-yellow "#f9ef61")
  (graphite-cyan "#50fcce"))

 ;; General
 ((default (:foreground fg :background bg))
  (link (:foreground graphite-cyan :underline t))
  (region (:background selection))
  (highlight (:background bg-light))
  (help-key-binding (:background bg :foreground graphite-magenta :slant 'italic))
  (font-lock-keyword-face (:foreground graphite-magenta))
  (show-paren-match (:foreground graphite-green :weight 'bold))
  (show-paren-mismatch (:foreground graphite-red :weight 'bold))
  (line-number (:foreground highlight :background bg))
  (line-number-current-line (:foreground fg :background bg))
  (font-lock-variable-name-face (:foreground graphite-yellow))
  (font-lock-warning-face (:foreground graphite-yellow))
  (completions-common-part (:foreground graphite-blue))
  (completions-first-difference (:foreground fg))
  (font-lock-constant-face (:foreground graphite-yellow))
  (font-lock-string-face (:foreground graphite-green))
  (font-lock-builtin-face (:foreground graphite-red))
  (error (:foreground graphite-red))
  (font-lock-type-face (:foreground graphite-red))
  (font-lock-comment-face (:foreground comment))
  (secondary-selection (:foreground highlight))

  ;; Isearch
  (isearch (:foreground graphite-green :background bg-light :weight 'bold :underline t))
  (isearch-fail (:foreground graphite-red :weight 'bold))

  ;; Modeline
  (mode-line (:background bg-light))

  ;; Window
  (window-divider (:foreground selection))

  ;; Org mode
  (org-code (:foreground fg-dark))
  (org-block (:foreground fg-dark))
  (org-ellipsis (:foreground fg-dark-alt :weight 'bold))
  (org-headline-done (:foreground fg))
  (org-checkbox (:foreground graphite-magenta))
  (org-todo (:foreground graphite-magenta :slant 'normal))
  (org-done (:foreground graphite-green :slant 'normal))
  (org-meta-line (:foreground fg-dark-alt))
  (org-link (:foreground graphite-green :underline t :weight 'bold))
  (org-drawer (:foreground graphite-red))
  (org-date (:foreground graphite-magenta))
  (org-table (:foreground graphite-cyan))
  (org-special-keyword (:foreground graphite-yellow))
  (org-document-info-keyword (:foreground fg-dark))
  (org-list-dt (:foreground graphite-red))
  (org-level-1 (:slant 'italic))
  (org-level-2 (:slant 'italic))
  (org-level-3 (:slant 'italic))
  (org-level-4 (:slant 'italic))
  (org-level-5 (:slant 'italic))
  (org-level-6 (:slant 'italic))
  (org-level-7 (:slant 'italic))
  (org-level-8 (:slant 'italic))
  (org-document-info (:foreground graphite-cyan))

  ;; Org Superstar
  (org-superstar-item (:foreground graphite-red))
  (org-superstar-header-bullet (:foreground fg-dark :slant 'normal))

  ;; Markdown
  (markdown-code-face (:inherit 'default :foreground graphite-yellow))
  (markdown-header-face (:foreground graphite-magenta :weight 'bold))

  ;; Vertico
  (vertico-current (:background bg-light))

  ;; Minibuffer prompt
  (minibuffer-prompt (:foreground graphite-magenta))

  ;; Orderless
  (orderless-match-face-0 (:foreground graphite-yellow))
  (orderless-match-face-1 (:foreground graphite-green))
  (orderless-match-face-2 (:foreground graphite-blue))
  (orderless-match-face-3 (:foreground graphite-cyan))

  ;; which-key
  (which-key-command-description-face (:foreground fg))

  ;; Dired
  (diredfl-read-priv (:foreground graphite-yellow))
  (diredfl-dir-heading (:foreground graphite-magenta :weight 'bold))
  (diredfl-dir-priv (:foreground graphite-blue))
  (diredfl-no-priv (:foreground fg-dark))
  (diredfl-write-priv (:foreground graphite-red))
  (diredfl-exec-priv (:foreground graphite-green))
  (diredfl-dir-name (:foreground graphite-magenta))
  (diredfl-file-name (:foreground fg))
  (diredfl-file-suffix (:foreground graphite-yellow))
  (diredfl-date-time (:foreground graphite-blue))

  ;; Evil
  (evil-ex-info (:foreground graphite-red))
  (evil-ex-lazy-highlight (:background highlight))
  (evil-ex-substitute-matches (:strike-through t :weight 'bold :foreground graphite-yellow))
  (evil-ex-substitute-replacement (:foreground graphite-red :weight 'bold))

  ;; Eglot
  (eglot-highlight-symbol-face (:foreground graphite-blue))

  ;; Rustic
  (rustic-compilation-error (:foreground graphite-red))
  (rustic-compilation-warning (:foreground graphite-yellow))
  (rustic-compilation-column (:foreground fg-dark))
  (rustic-compilation-line (:foreground fg-dark))

  ;; Git
  (git-commit-summary (:foreground graphite-green))
  (git-commit-overlong-summary (:foreground graphite-red))
  
  ;; Magit
  (magit-header-line (:foreground graphite-cyan :weight 'bold :background bg))
  (magit-diff-file-heading-highlight (:foreground graphite-yellow :weight 'bold))

  (magit-section-highlight (:foreground graphite-blue :weight 'bold))
  (magit-section-heading (:foreground graphite-magenta))
  (magit-head (:foreground graphite-blue))
  (magit-hash (:foreground fg-dark-alt))
  (magit-header-line (:foreground graphite-yellow))
  (magit-branch-current (:foreground graphite-blue))
  (magit-branch-local (:foreground graphite-blue))
  (magit-branch-remote (:foreground graphite-cyan))

  (magit-diff-added (:foreground graphite-green :background bg :slant 'italic))
  (magit-diff-context (:foreground fg-dark :background bg :slant 'italic))
  (magit-diff-removed (:foreground graphite-red :background bg :slant 'italic))
  
  (magit-diff-hunk-heading-highlight (:background bg-dark :foreground graphite-magenta :weight 'bold))
  (magit-diff-hunk-heading (:background bg-dark :foreground fg-dark))
  (magit-diff-added-highlight (:background bg-dark :foreground graphite-green :slant 'italic))
  (magit-diff-context-highlight (:background bg-dark :foreground fg :slant 'italic))
  (magit-diff-removed-highlight (:background bg-dark :foreground graphite-red :slant 'italic))
  
  ;; Flycheck
  (flycheck-inline-info (:foreground graphite-yellow))
  (flycheck-inline-warning (:foreground graphite-magenta))
  (flycheck-inline-error (:foreground graphite-red))

  (flycheck-fringe-warning (:foreground graphite-magenta))
  (flycheck-fringe-error (:foreground graphite-red))
  (flycheck-fringe-info (:foreground graphite-yellow))

  (flycheck-warning (:underline (:style 'wave :color graphite-magenta)))
  (flycheck-info (:underline (:style 'wave :color graphite-yellow)))
  (flycheck-error (:underline (:style 'wave :color graphite-red)))))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'graphite)

;;; graphite-theme.el ends here
