;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

;; square-no : Number->Number 
;; GIVEN a number as input it RETURNS the square of that number.
;; EXAMPLES :
;; (square-no 5.5) = 30.25
;; (square-no 12) = 144
;; DESIGN STRATEGY : Domain Knowledge

(define (square-no number) (* number number))

;; TESTS
(define-test-suite no-square 
(check-equal? (square-no 5.5) 30.25 "When input is 10 , the function should return its sqaure output as 100")
(check-equal? (square-no 12) 144 "When input is 12 , the function should return its sqaure output as 144"))

(run-tests no-square)