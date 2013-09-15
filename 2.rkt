;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

;; greater-than : Number->Boolean 
;; GIVEN any input it RETURNS a boolean value true if the first expresiion is greater than the second or else false
;; EXAMPLES :
;; (greater-than 10) = true
;; (greater-than 20) = true
;; DESIGN STRATEGY : Domain Knowledge

(define exp1 (/ 100 3))
(define exp2 (/(+ 100 3)(+ 3 3)))
(define (greater-than a)(> exp1 exp2))

;; TESTS
(define-test-suite check-greater-no 
(check-equal? (greater-than 5) true "When input is 5 , the function should still return true"))

(run-tests check-greater-no)