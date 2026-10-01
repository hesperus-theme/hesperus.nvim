;;; hesperus-theme.el --- A theme inspired by Ranni from Elden Ring -*- lexical-binding: t; -*-

;; Authors: tachyonora, tichelmorres
;; Version: 2.0
;; Filename: hesperus-theme.el
;; URL: https://github.com/tachyonora/hesperus.nvim

;;; Code:

(deftheme hesperus
  "A theme inspired by Ranni from Elden Ring.")

;;; @TODO  Review these later
(let ((hesperus-bg       "#171c26")
      (hesperus-bg1      "#37394a")
      (hesperus-fg       "#dfe4f2")
      (hesperus-fg1      "#a6adc8")
      (hesperus-white    "#e9ecfd")
      (hesperus-black0   "#797c8c")
      (hesperus-black1   "#4c5059")
      (hesperus-red0     "#a51c1a")
      (hesperus-red1     "#af331c")
      (hesperus-lav0     "#b4b6d9")
      (hesperus-lav1     "#707287")
      (hesperus-tan0     "#b39c8c")
      (hesperus-tan1     "#755443")
      (hesperus-blue0    "#80b2d2")
      (hesperus-blue1    "#1755a6")
      (hesperus-magenta0 "#b7add9")
      (hesperus-magenta1 "#997ebf")
      (hesperus-cyan0    "#c7d7e8")
      (hesperus-cyan1    "#9ab6ce"))
  (custom-theme-set-faces
   `hesperus

   ;;; Vanilla:

   ;; UI:
   `(cursor                   ((t ( :background                             ,hesperus-white                                           ))))
   `(default                  ((t ( :background                             ,hesperus-bg       :foreground ,hesperus-fg                 ))))
   `(error                    ((t ( :foreground                             ,hesperus-red1     :weight      bold                      ))))
   `(fringe                   ((t ( :background                             ,hesperus-bg                                              ))))
   `(highlight                ((t ( :background                             ,hesperus-bg1                                             ))))
   `(hl-line                  ((t ( :background                             ,hesperus-bg1      :extend      t                         ))))
   `(isearch                  ((t ( :background                             ,hesperus-red0     :foreground ,hesperus-bg                 ))))
   `(lazy-highlight           ((t ( :background                             ,hesperus-lav1     :foreground ,hesperus-bg                 ))))
   `(line-number              ((t ( :inherit     default        :foreground ,hesperus-black1                                          ))))
   `(line-number-current-line ((t ( :inherit     line-number    :background ,hesperus-bg1      :foreground ,hesperus-fg :weight    bold ))))
   `(link                     ((t ( :foreground                             ,hesperus-blue0    :bold        t         :underline t    ))))
   `(link-visited             ((t ( :foreground                             ,hesperus-magenta1 :bold        t         :underline t    ))))
   `(match                    ((t ( :inherit     lazy-highlight                                                                     ))))
   `(minibuffer-prompt        ((t ( :foreground                             ,hesperus-cyan1                                           ))))
   `(region                   ((t ( :extend nil                 :background ,hesperus-bg1                                             ))))
   `(show-paren-match         ((t ( :background                             ,hesperus-tan0     :foreground ,hesperus-bg                 ))))
   `(show-paren-mismatch      ((t ( :background                             ,hesperus-red1     :foreground ,hesperus-bg                 ))))
   `(success                  ((t ( :foreground                             ,hesperus-lav0     :weight      bold                      ))))
   `(warning                  ((t ( :foreground                             ,hesperus-tan1     :weight      bold                      ))))

   ;; Mode Line:
   `(mode-line          ((t ( :background ,hesperus-fg1    :foreground ,hesperus-bg  ))))
   `(mode-line-inactive ((t ( :background ,hesperus-black1 :foreground ,hesperus-fg1 ))))

   ;; Font Lock -- classic faces:
   `(font-lock-builtin-face           ((t ( :foreground ,hesperus-magenta0                          ))))
   `(font-lock-comment-face           ((t ( :foreground ,hesperus-black0                            ))))
   `(font-lock-comment-delimiter-face ((t ( :inherit     font-lock-comment-face                   ))))
   `(font-lock-constant-face          ((t ( :foreground ,hesperus-magenta0                          ))))
   `(font-lock-doc-face               ((t ( :foreground ,hesperus-lav1            :italic t         ))))
   `(font-lock-function-name-face     ((t ( :foreground ,hesperus-cyan0                             ))))
   `(font-lock-keyword-face           ((t ( :foreground ,hesperus-red0                              ))))
   `(font-lock-negation-char-face     ((t ( :foreground ,hesperus-red0                              ))))
   `(font-lock-preprocessor-face      ((t ( :foreground ,hesperus-red0                              ))))
   `(font-lock-string-face            ((t ( :foreground ,hesperus-lav0                              ))))
   `(font-lock-type-face              ((t ( :foreground ,hesperus-magenta0                          ))))
   `(font-lock-variable-name-face     ((t ( :foreground ,hesperus-fg                                ))))
   `(font-lock-warning-face           ((t ( :foreground ,hesperus-red1            :italic t :bold t ))))

   ;; Font Lock -- Emacs 28/29 tree-sitter-era faces:
   `(font-lock-bracket-face       ((t ( :foreground ,hesperus-tan0                               ))))
   `(font-lock-delimiter-face     ((t ( :foreground ,hesperus-red0                               ))))
   `(font-lock-number-face        ((t ( :foreground ,hesperus-fg                    :weight bold ))))
   `(font-lock-operator-face      ((t ( :foreground ,hesperus-red0                               ))))
   `(font-lock-property-name-face ((t ( :foreground ,hesperus-fg                                 ))))
   `(font-lock-property-use-face  ((t ( :inherit     font-lock-property-name-face              ))))
   `(font-lock-punctuation-face   ((t ( :foreground ,hesperus-fg                                 ))))
   `(font-lock-escape-face        ((t ( :foreground ,hesperus-tan1                               ))))

   ;; Search:
   `(isearch        ((t ( :background ,hesperus-white :foreground ,hesperus-bg  ))))
   `(isearch-fail   ((t ( :background ,hesperus-red1  :foreground ,hesperus-bg  ))))
   `(lazy-highlight ((t ( :background ,hesperus-bg1   :foreground ,hesperus-fg1 ))))

   ;; Whitespace:
   `(trailing-whitespace         ((t ( :foreground ,hesperus-bg           :background ,hesperus-blue1    ))))
   `(whitespace-space            ((t ( :background ,hesperus-bg           :foreground ,hesperus-black1   ))))
   `(whitespace-tab              ((t ( :background ,hesperus-bg           :foreground ,hesperus-black1   ))))
   `(whitespace-hspace           ((t ( :background ,hesperus-bg           :foreground ,hesperus-tan1     ))))
   `(whitespace-line             ((t ( :background ,hesperus-tan1         :foreground ,hesperus-magenta0 ))))
   `(whitespace-newline          ((t ( :background ,hesperus-bg           :foreground ,hesperus-tan1     ))))
   `(whitespace-empty            ((t ( :background ,hesperus-tan0         :foreground ,hesperus-tan1     ))))
   `(whitespace-indentation      ((t ( :background ,hesperus-white        :foreground ,hesperus-red1     ))))
   `(whitespace-space-after-tab  ((t ( :background ,hesperus-white        :foreground ,hesperus-blue0    ))))
   `(whitespace-space-before-tab ((t ( :background ,hesperus-lav0         :foreground ,hesperus-lav0     ))))
   `(whitespace-trailing         ((t ( :inherit     trailing-whitespace                              ))))

   ;; Compilation:
   `(compilation-info           ((t ( :foreground ,hesperus-tan0                  :inherit unspecified ))))
   `(compilation-warning        ((t ( :foreground ,hesperus-lav0     :bold   t    :inherit unspecified ))))
   `(compilation-error          ((t ( :foreground ,hesperus-magenta0                                   ))))
   `(compilation-mode-line-fail ((t ( :foreground ,hesperus-magenta0 :weight bold :inherit unspecified ))))
   `(compilation-mode-line-exit ((t ( :foreground ,hesperus-tan0     :weight bold :inherit unspecified ))))

   ;; Dired:
   `(dired-directory      ((t ( :foreground ,hesperus-magenta0 :weight      bold                     ))))
   `(dired-ignored        ((t ( :foreground ,hesperus-lav0     :inherit     unspecified              ))))
   `(dired-broken-symlink ((t ( :background ,hesperus-red0     :foreground ,hesperus-tan0 :weight bold ))))

   ;; EWW:
   `(header-line           ((t ( :background ,hesperus-fg1 :foreground ,hesperus-bg         ))))
   `(eww-valid-certificate ((t ( :background ,hesperus-fg1 :foreground ,hesperus-bg :bold t ))))

   ;;; Third Party:

   ;; Rainbow-delimiters:
   `(rainbow-delimiters-depth-1-face   ((t (:foreground ,hesperus-tan0              ))))
   `(rainbow-delimiters-depth-2-face   ((t (:foreground ,hesperus-tan0              ))))
   `(rainbow-delimiters-depth-3-face   ((t (:foreground ,hesperus-tan0              ))))
   `(rainbow-delimiters-depth-4-face   ((t (:foreground ,hesperus-tan0              ))))
   `(rainbow-delimiters-depth-5-face   ((t (:foreground ,hesperus-tan0              ))))
   `(rainbow-delimiters-depth-6-face   ((t (:foreground ,hesperus-tan0              ))))
   `(rainbow-delimiters-depth-7-face   ((t (:foreground ,hesperus-tan0              ))))
   `(rainbow-delimiters-depth-8-face   ((t (:foreground ,hesperus-tan0              ))))
   `(rainbow-delimiters-depth-9-face   ((t (:foreground ,hesperus-tan0              ))))
   `(rainbow-delimiters-unmatched-face ((t (:foreground ,hesperus-red1 :weight bold ))))

   ;; Corfu:
   `(corfu-current ((t (:background ,hesperus-bg1))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; EWW header line -- bold the title + ": " prefix:
(unless (advice-member-p 'hesperus--eww-bold-title 'eww-update-header-line-format)
  (advice-add 'eww-update-header-line-format :after
              (defun hesperus--eww-bold-title ()
                (when (stringp header-line-format)
                  (let* ((url (or (plist-get eww-data :url) ""))
                         (len (length header-line-format))
                         (cut (- len (length url))))
                    (when (and (> cut 0)
                               (string= (substring header-line-format cut) url))
                      (add-face-text-property 0 cut 'bold t header-line-format)))))))

(provide-theme 'hesperus)
(provide 'hesperus-theme)
;;; hesperus-theme.el ends here.
