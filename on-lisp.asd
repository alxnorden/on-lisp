(require "asdf")

(defpackage #:on-lisp-system
  (:use #:cl :asdf))
(in-package :on-lisp-system)

(defsystem :on-lisp
  :name "on-lisp"
  :components
  ((:static-file "on-lisp.asd")
   (:module :src
            :components
            ((:file "package")
             (:file "on-lisp" :depends-on ("package"))
             (:file "chapter-02" :depends-on ("package"))
             (:file "chapter-03" :depends-on ("package"))
             (:file "chapter-04" :depends-on ("package"))
             (:file "chapter-05" :depends-on ("package"))
             (:file "chapter-06" :depends-on ("package"))
             (:file "chapter-07" :depends-on ("package"))
             (:file "chapter-08" :depends-on ("package"))
             (:file "chapter-09" :depends-on ("package"))
             (:file "chapter-10" :depends-on ("package"))
             (:file "chapter-11" :depends-on ("package"))
             (:file "chapter-12" :depends-on ("package"))
             (:file "chapter-13" :depends-on ("package"))
             (:file "chapter-14" :depends-on ("package"))
             (:file "chapter-15" :depends-on ("package"))
             (:file "chapter-16" :depends-on ("package"))
             (:file "chapter-17" :depends-on ("package"))
             (:file "chapter-18" :depends-on ("package"))
             (:file "chapter-19" :depends-on ("package"))
             (:file "chapter-20" :depends-on ("package"))
             (:file "chapter-21" :depends-on ("package"))
             (:file "chapter-22" :depends-on ("package"))
             (:file "chapter-23" :depends-on ("package"))
             (:file "chapter-24" :depends-on ("package"))
             (:file "chapter-25" :depends-on ("package")))))
  :depends-on ())

(defsystem :on-lisp-test
  :depends-on (:on-lisp :stefil :lisp-unit :macroexpand-dammit)
  :components
  ((:module :test
            :components ((:file "package")
                         (:file "on-lisp-test" :depends-on ("package"))))))
