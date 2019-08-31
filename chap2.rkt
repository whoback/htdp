;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname chap2) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp")) #f)))
(require 2htdp/image)

;function definitions using define keyword
;define nameoffunction param(s)

;example
(define (bulb c)
  (circle 40 "solid" c))

(bulb "green")
;can also pass functions into params
(bulb (string-append "re" "d"))

;booleans true and false
(define W 100)
(define H 100)

(> W H)
(>= W H)

;built in test
(string=? "foo" "bar")

;if statements
(if (< (string-length "faf")
       (string-length "jimbob"));here we ask is faf < jimbob
    "yes";our true answer
    "no");our false answer

;can also use boolean and/or/not in functions

;can use builtin stepper to debug/understand functions
(+ (* 3 2) 1)
(define (max-dim img)
  (if (> (image-width img) (image-height img))
      (image-width img)
      (image-height img)))

(max-dim (rectangle 10 20 "solid" "blue"))