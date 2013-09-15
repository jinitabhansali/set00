;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

;; compute-seconds : Number->Number
;; GIVEN any input it RETURNS the no of seconds in a leap year
;; EXAMPLES :
;; (compute-seconds 5) = 31622400
;; (compute-seconds 10) = 31622400
;; DESIGN STRATEGY :Domain Knowledge

(define (compute-seconds a)
  (* 366 (* 24 (* 60 60))))

;; TESTS
(define-test-suite leap-seconds 
(check-equal? (compute-seconds 5) 31622400 "When input is 5 , the number of seconds should still be 31622400"))

(run-tests leap-seconds)

