(require 'f)

(defvar change-case-backwards-support-path
  (f-dirname load-file-name))

(defvar change-case-backwards-features-path
  (f-parent change-case-backwards-support-path))

(defvar change-case-backwards-root-path
  (f-parent change-case-backwards-features-path))

(add-to-list 'load-path change-case-backwards-root-path)

(require 'change-case-backwards)
(require 'espuds)
(require 'ert)

(Setup
 ;; Before anything has run
 )

(Before
 ;; Before each scenario is run
 )

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )
