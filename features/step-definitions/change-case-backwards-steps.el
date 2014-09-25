;; This file contains your project specific step definitions. All
;; files in this directory whose names end with "-steps.el" will be
;; loaded automatically by Ecukes.

(Given "^I bind key \"\\([^\"]+\\)\" to \"\\([^\"]+\\)\"$"
  (lambda (key fn-name)
    (global-set-key (kbd key) (intern fn-name))))

(When "^I go to the beginning of the buffer$"
  (lambda ()
    (call-interactively 'beginning-of-buffer)))

(Given "^I have a buffer \"\\([^\"]+\\)\" with text:$"
  (lambda (buffer text)
    (Given "I switch to buffer \"%s\"" buffer)
    (Given "I clear the buffer")
    (Given "I insert:" text)))

(And "^I press \"\\([^\"]+\\)\" \\([0-9]+\\) times$"
  (lambda (key-combo times)
    (dotimes (_ (string-to-number times))
      (And "I press \"%s\"" key-combo))))
