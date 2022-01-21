;; define starting lower and upper limit
;; to 1 and 100, respectively
(defparameter *small* 1)
(defparameter *big* 100)


;; define `guess-my-number` function
;; that takes no parameter and halves
;; the sum of `small` and `big` using
;; the builtin `ash` operator which is
;; the same with the right and left
;; binary shift operators you see in
;; most programming languages
(defun guess-my-number ()
  (ash (+ *small* *big*) -1))


;; define `smaller` function that
;; decreases the upper limit by one 
;; and then calls `guess-my-number`
(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))


;; define `bigger` function that
;; increases the lower limit by one 
;; and then calls `guess-my-number`
(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))


;; define `start-over` function
;; that resets the upper and lower limit
;; to their original values and calls
;; `guess-my-number`
(defun start-over()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (guess-my-number))
