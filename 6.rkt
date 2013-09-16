;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

;; quadratic-root : Number Number Number->Number
;; GIVEN three numbers and computes the root of the corresponding quadratic equation.
;; EXAMPLES :
;; (quadratic-root 1 6 9) = -3
;; (quadratic-root 1 -6 8) = 4
;; DESIGN STRATEGY :Domain Knowledge

(define (quadratic-root a b c)
  (/ (+ (- b (* 2 b)) (sqrt(- (* b b) (* 4 (* a c))))) (* 2 a) )
  )

;; TESTS
(define-test-suite compute-root 
(check-equal? (quadratic-root 1 6 9) -3 "When input is 1 6 9 it should compute the root as -3")
(check-equal? (quadratic-root 1 -6 8) 4 "When input is 1 -6 8 it should compute the root as 4")
 )
(run-tests compute-root)

