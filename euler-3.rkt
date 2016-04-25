;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname euler-3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #t)))
(define (problem3)
  (local [(define num 600851475143)
          (define (problem3 largest count)
            (cond[(>= count (sqrt num)) largest]
                 [(= (modulo num count) 0) (if (prime? count)
                                               (problem3 count (add1 count))
                                               (problem3 largest (add1 count)))]
                 [else
                  (problem3 largest (add1 count))]))]
    (problem3 100 1)))

(define (prime? x)
  (local [(define (prime? x count)
            (cond [(>= count (sqrt x)) true]
                  [else
                   (if (= (modulo x count) 0)
                       false
                       (prime? x (add1 count)))]))]
    (prime? x 2)))