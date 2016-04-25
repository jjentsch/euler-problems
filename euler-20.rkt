;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname euler-20) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #t)))




(define (euler-20)
  (sum-digits (factorial 100)))



(define (factorial num)
  (local [(define (factorial num prod)
            (cond [(= num 0) prod]
                  [else
                   (factorial (sub1 num) (* num prod))]))]
    (factorial num 1)))




(define (sum-digits n)
  (local [(define num (number->string n))
          (define (sum-digits i sum)
            (cond [(= (string-length num) i) sum]
                  [else
                   (sum-digits (add1 i) (+ sum (string->number (substring num i (add1 i)))))]))]
    (sum-digits 0 0)))
