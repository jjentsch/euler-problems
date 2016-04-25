;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname euler-2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #t)))
(define (problem2)
  (local [(define (problem2 x1 x2 sum)
            (cond [(> x2 4000000) sum]
                  [(even? x2) (problem2 x2
                                        (+ x1 x2)
                                        (+ sum x2))]
                  [else
                   (problem2 x2 (+ x1 x2) sum)]))]
    (problem2 1 2 0)))