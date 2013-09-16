;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

;; sum-larger : Number Number Number->Number
;; GIVEN 3 numbers as input it RETURNS the sum of the two larger numbers.
;; EXAMPLES :
;; (sum-larger 2 6 9) = 15
;; (sum-larger 7 1 4) = 11
;; (sum-larger 9 8 2) = 17
;; (sum-larger 4 6 2) = 10
;; DESIGN STRATEGY :Domain Knowledge

(define (sum-larger n1 n2 n3)
    (if (> n1 n2) (if(> n2 n3) (+ n1 n2) (+ n1 n3)) (if(> n1 n3)(+ n2 n1) (+ n2 n3))))

;; TESTS
(define-test-suite sum 
(check-equal? (sum-larger 2 6 9) 15 "When input is 2 6 and 9 it should result in 15")
(check-equal? (sum-larger 7 1 4) 11 "When input is 7 1 4 it should result in 11")
(check-equal? (sum-larger 9 8 2) 17 "When input is 9 8 2 it should result in 17")
(check-equal? (sum-larger 4 6 2) 10 "When input is 4 6 2 it should result in 10")
  )
(run-tests sum)

