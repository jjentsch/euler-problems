;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname euler-25) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #t)))
(define (problem25)
  (local [(define (problem25 x1 x2 n)
            (cond [(= (string-length (number->string x1)) 1000) n]
                  [else
                   (problem25 x2 (+ x1 x2) (add1 n))]))]
    (problem25 1 1 1)))