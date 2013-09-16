;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |8|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

;; circ-area : Number->Number
;; GIVEN a radius r as input it computes the area included in a circle of radius r 
;; EXAMPLES :
;; (circ-area 1) = 3.1415
;; (circ-area 5) = 78.5375
;; (circ-area 7) = 153.9335
;; DESIGN STRATEGY :Domain Knowledge

(define (circ-area r)
  (* 3.1415 (* r r)))

;; TESTS
(define-test-suite circle-area 
(check-equal? (circ-area 1) 3.1415 "When the input radius is 1 the output ofarea included in the circle should be 3.1415")
(check-equal? (circ-area 5) 78.5375 "When radius is 5 the area included in circle should be 78.5375")
(check-equal? (circ-area 7) 153.9335 "When radius is 7 the area included in circle should be 153.9335")
 )
(run-tests circle-area)

