;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)
(check-within (circumference 1) 6.283185307179586 0.1)

;; circumference : Number->Number
;; GIVEN the input radius r o a circle it RETURNS its circumference using teh formula 2 * pi * r
;; EXAMPLES :
;; (circumference 1) = 6.283185307179586
;; (circumference 0) = 0
;; DESIGN STRATEGY :Domain Knowledge

(define (circumference r) (* 2 (* pi r)))

;; TESTS
(define-test-suite calculate-circum 
(check-equal? (circumference 0) 0 "When input radius is 0 , the circumference output should be 0"))

(run-tests calculate-circum)

