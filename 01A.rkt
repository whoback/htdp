;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname chap1) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp")) #f)))
(require 2htdp/image)

;(define (tri-hyp a b)
;  (sqrt (+ (sqr a) (sqr b))))

(+ 2 (* 3 4) (- (+ 1 2) 3))
;this is called a primitive call / call to a prim
;anything after an operator +/-* is called an operand
;evaluation happens inside -> outside, left -> right

(string-append "Ada" "Lovelace")
(string-append "Ada" " " "Lovelace")
;string-append can take any number of arguments
;cannot append different types of arguments

(string-length "apple")
;builtin for counting len of str

(substring "Caribou" 2 4)
;start at 2th char and go up to but do not include 4th char

;Caribou -> car
(substring "Caribou" 0 3)

;circle size solid color
;rectanlge h w linetype color
;text str size color <-- this converts str to an image of the str
;above / beside / overlay is used for placement

;can define constants using define keyword
(define WIDTH 400)
(define HEIGHT 600)
(* HEIGHT WIDTH)
