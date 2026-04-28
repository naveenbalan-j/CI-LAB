(defun str_op (str)
  (let* ((len (loop for char across str count char)) ;; Manual length count
         (rev (make-string len))
         (is-palindrome t))
   
    ;; Manual Reversal: Populate 'rev' by reading 'str' from end to start
    (loop for i from 0 to (1- len)
          do (setf (char rev i) (char str (- len 1 i))))
   
    ;; Manual Palindrome Check: Compare characters one by one
    ;; char-equal is used for case-insensitive comparison
    (loop for i from 0 to (1- len)
          when (not (char-equal (char str i) (char rev i)))
          do (setf is-palindrome nil))

    ;; Print results
    (format t "Original: ~a~%" str)
    (format t "Length: ~d~%" len)
    (format t "Reversed: ~a~%" rev)
    (if is-palindrome
        (format t "Result: It is a palindrome~%")
        (format t "Result: It is NOT a palindrome~%"))))

;; Main Execution
(format t "Enter a string: ")
(finish-output) ;; Ensure prompt is displayed before reading input
(let ((input (read-line)))
  (str_op input))