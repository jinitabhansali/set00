;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

;; tip : Number Number->Number 
;; GIVEN the amount of the bill in dollars and the percentage of the tip the function RETURNS the amount of tip in dollars
;; EXAMPLES :
;; (tip 10 0.15) = 1.5
;; (tip 20 0.17) = 3.4
;; DESIGN STRATEGY : Domain Knowledge

(define (tip amount percentage) (* amount percentage))

;; TESTS
(define-test-suite calculate-tip 
(check-equal? (tip 10 0.15) 1.5 "When the input of the amount of bill is 10 dollars and percentage of tip is 0.15 , the amount of tip in dollars should be 1.5")
(check-equal? (tip 20 0.17) 3.4 "When the input of the amount of bill is 20 dollars and percentage of tip is 0.17 , the amount of tip in dollars should be 3.4"))
(run-tests calculate-tip)