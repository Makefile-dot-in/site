(defun --makesite-slug (s)
  (string-trim
   (downcase
    (replace-regexp-in-string (rx (one-or-more (not letter))) "-" s))
   "-"
   "-"))


(defun --makesite-get-section-as-sexp ()
  (let ((html (org-export-as 'html t nil t)))
    (with-temp-buffer
      (insert html)
      (caddr (caddr (libxml-parse-html-region))))))


