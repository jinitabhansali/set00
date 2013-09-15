;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)
(check-within (f->c 100) 37.7778 0.1)

;; f->c : Number->Number 
;; GIVEN a temperature in degrees Fahrenheit as an argument the function RETURNS the equivalent temperature in degree Celsius
;; EXAMPLES :
;; (f->c 32) = 0
;; (f->c 100) = 37.77777777778
;; DESIGN STRATEGY : Domain Knowledge

(define exp1 (/ 5 9))
(define (f->c temp) (* (- temp 32) exp1))

;; TESTS
(define-test-suite convert-f2c 
(check-equal? (f->c 32) 0 "When input is 32 degrees fahrenheit , the function should return the value of degree celsius as 0")
)
(run-tests convert-f2c)