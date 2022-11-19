(require 'autothemer)

(autothemer-deftheme
 graphite "A sparkling, shimmering theme for Emacs"

 ((((class color) (min-colors #xFFFFFF)))
  ;; Specify the color palette, color columns correspond to each of the classes above.
  (fg "#fefefa")
  (fg-dark "#bfbfff")
  (fg-dark-alt "#6f6fbf")
  (bg "#111111")
  (bg-light "#2F2F3F")
  (selection "#1a1a1a")
  (comment "#4f4f7f")
  (line-number "#6b6b97")
  (graphite-red "#fc5078")
  (graphite-green "#69f961")
  (graphite-blue "#64c7fc")
  (graphite-magenta "#e572c8")
  (graphite-orange "#f98e63")
  (graphite-yellow "#f9ef61")
  (graphite-cyan "#50fcce"))

 ;; Specifications for Emacs faces.

 ;; General
 ((default (:foreground fg :background bg))
  (region (:background selection))
  (help-key-binding (:background bg :foreground graphite-magenta :slant 'italic))
  (font-lock-keyword-face (:foreground graphite-magenta))
  (line-number (:foreground line-number))
  (line-number-current-line (:foreground fg))
  (font-lock-constant-face (:foreground graphite-yellow))
  (font-lock-string-face (:foreground graphite-green))
  (font-lock-builtin-face (:foreground graphite-red))
  (font-lock-type-face (:foreground graphite-red))
  (font-lock-comment-face (:foreground comment))

  ;; Org mode
  (org-headline-done (:foreground graphite-yellow))
  (org-todo (:foreground graphite-magenta))
  (org-done (:foreground graphite-green))
  (org-meta-line (:foreground fg-dark-alt))
  (org-link (:foreground graphite-cyan :underline t :weight 'bold))
  (org-drawer (:foreground graphite-red))
  (org-date (:foreground graphite-magenta))
  (org-table (:foreground graphite-magenta))
  (org-special-keyword (:foreground graphite-yellow))
  (org-document-info-keyword (:foreground fg-dark))
  (org-document-info (:foreground graphite-cyan))

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

  ;; Diredfl
  (diredfl-read-priv (:foreground graphite-yellow))
  (diredfl-dir-priv (:foreground graphite-blue))
  (diredfl-no-priv (:foreground fg-dark))
  (diredfl-write-priv (:foreground graphite-red))
  (diredfl-exec-priv (:foreground graphite-green))
  (diredfl-dir-name (:foreground graphite-magenta))
  (diredfl-file-name (:foreground fg-dark))
  (diredfl-file-suffix (:foreground graphite-yellow))
  (diredfl-date-time (:foreground graphite-blue))
  
  ;; Flycheck
  (flycheck-inline-info (:foreground graphite-yellow))
  (flycheck-inline-warning (:foreground graphite-magenta))

  (flycheck-fringe-warning (:foreground graphite-magenta))
  (flycheck-fringe-error (:foreground graphite-red))
  (flycheck-fringe-info (:foreground graphite-yellow))
  
  (flycheck-warning (:underline (:style 'wave :color graphite-magenta)))
  (flycheck-info (:underline (:style 'wave :color graphite-yellow)))
  (flycheck-errors (:underline (:style 'wave :color graphite-red)))))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'graphite)
