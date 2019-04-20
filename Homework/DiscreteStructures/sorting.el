;;; sorting.el --- Implements various sorting algorithms
;;; Commentary: Shows various sorting algorithms from cs345
(require 'cl)

(require 'seq)

(defun insert-in-place (item arr)
  "Inserts an element in place"
  (if (null arr)
      (cons item '())
    (if (<= item (car arr))
	(cons item arr)
        (cons (car arr) (insert-in-place item (cdr arr))))))

(defun insertion-sort (arr)
  "Implements an insertion short on a sequence of records"
  (when arr
      (insert-in-place (car arr) (insertion-sort (cdr arr)))))

(defun selection-sort (arr)
  "Implements a selection sort on a sequence of records"
  (when arr
    (let ((p (seq-min arr)))
      (append (seq-filter (lambda (x) (= p x)) arr) (selection-sort (remove p arr))))))

(defun mergesort (list)
  )

(defun quicksort (list)
  "Implements a quicksort on a sequence of records"
  (when list
    (let ( (p (nth (/ (length list) 2) list))  (xs (remove* (nth (/ (length list) 2) list) list :count 1) )  )
      (let ((lesser (remove-if-not (lambda (x) (< x p)) xs))
            (greater (remove-if-not (lambda (x) (>= x p)) xs)))
        (append (quicksort lesser) (list p) (quicksort greater))))))

(seq-subseq '(1 2 3 4 5 6 7) 3)

(quicksort '(7 8 2 3 4 6 5 4 4 7 2 3))

(selection-sort '(0 4 4 3 0 1 2))

(insertion-sort '(9 5 5 3 0 2 2 2 3 4 1))
