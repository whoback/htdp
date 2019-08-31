;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 01b-HtDF) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
(require 2htdp/image)
;PROBLEM: Design a func that consumes a number and produces twice that number. Call the func double.

;Step 1 Signature, purpose, and stub
;The signature tells us what type of data this function consumes and produces
;Type -> Type (these can be Number, Integer, String, etc...)
;the purpose is a quick 1 line description of what the func does

;Number -> Number
;produce 2 times the given number

; Step 2 add tests and examples
; examples help to understand what the func does and bonus act as unit tests
(check-expect (double 3) 6) 
(check-expect (double 4.2) 8.4)
; we write a stub just to let our tests run 
;(define (double n) 0) ; stub

;(define (double n) Step 3 write a template for the function
;  (... n))

;Step 4 code body of the function
(define (double n)
  (* 2 n))

;PROBLEM: design a func called yell that consumes strings and adds "!" to the end

;String -> String
;add an exclamation mark at the end of the given string
;(define (yell str) str);stub

(check-expect (yell "hey") "hey!")
(check-expect (yell "hello") "hello!")

(define (yell str)
  (string-append str "!"))

;PROBLEM: design a func that consumes len of one side of a square and produces area of the square

;Number -> Number
;takes one side of a square and produces the area by squaring the given side
(check-expect (area 5) 25)
(check-expect (area 11.2) 125.44)

(define (area n)
  (* n n))

;PROBLEM design a func called image-area that cosumes an imaeg and produces area of that image (w * h)

;Image -> Natural 
;takes an image and produces the area of the image
(define (image-area img)
  (* (image-width img) (image-height img)))
(check-expect (image-area (square 10 "solid" "blue")) 100)


              
