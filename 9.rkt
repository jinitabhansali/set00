;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

;; even : Number -> Boolean
;; GIVEN a number it RETURNS true if the number is even and false otherwise
;; EXAMPLES :
;; (even? 2) = true
;; (even? 13) = false
;; (even 0 ) = false
;; DESIGN STRATEGY :Domain Knowledge

(define (even num)
  (if (= num 0) false (if (= (remainder num 2) 0) true false))
)

;; TESTS
(define-test-suite even-number 
(check-equal? (even? 2) true "When imput is 2 it should return true")
(check-equal? (even? 13) false "When input is 13 it should return false")
(check-equal? (even? 0) false "When input is 0 it should return false")
)
(run-tests even-number)
