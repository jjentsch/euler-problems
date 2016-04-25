;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname euler-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #t)))
(define (problem1)
  (local [(define (problem1 sum count)
            (cond [(= count 1000) sum]
                  [(div3? count)(problem1 (+ sum count)
                                          (add1 count))]
                  [(div5? count)(problem1 (+ sum count)
                                          (add1 count))]
                  [else
                   (problem1 sum (add1 count))]))
          (define (div3? x)
            (= (modulo x 3) 0))
          (define (div5? x)
            (= (modulo x 5) 0))]    
    (problem1 0 1)))