;;; change-case-backwards.el --- Change case of words before point.

;; Copyright (C) 2014  Kao Felix

;; Author: Kao Felix <kcfelix@gmail.com>
;; Version: 0.1
;; Keywords: convenience

;;; Commentary:

;; This package is a set of commands for changing the casing of words after you
;; typed them.

;;; Code:

(defun upcase-word-backward ()
  "Make words before point upcase."
  (interactive)
  (save-excursion
    (skip-chars-backward "[:upper:] ")
    (upcase-word -1)))

(provide 'change-case-backwards)
;;; change-case-backwards.el ends here
