;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname euler_16) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #t)))


(define (euler_16)
  (count-digits (number->string(expt 2 1000))))

(check-expect (count-digits "10") 1)
(check-expect (count-digits "123") 6)
(check-expect (count-digits "111") 3)
(check-expect (count-digits "2121") 6)

(define (count-digits num)
  (local [(define (count-digits i sum)
            (cond [(= (string-length num) i) sum]
                  [else
                   (count-digits (add1 i) (+ sum (string->number (substring num i (add1 i)))))]))]
    (count-digits 0 0)))

                                 