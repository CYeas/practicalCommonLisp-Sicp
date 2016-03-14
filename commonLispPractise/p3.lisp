;;;第三章的简易数据库用于存储cd信息

(defvar *db* nil)

(defun makeCd (title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))

(defun add (cd)
  (push cd *db*))

(defun dump-db()
  (dolist (cd *db*)
          (format t "~{~a: ~10t~a~%~}~%" cd)))

(defun promptRead (prompt)
  (format *query-io* "~a: " prompt)
  (force-output *query-io*)
  (read-line *query-io*))

(defun prompt-for-cd()
  (makeCd
   (promptRead "Title")
   (promptRead "Artist")
   (promptRead "Rating")
   (promptRead "Ripped [y/n]")))
