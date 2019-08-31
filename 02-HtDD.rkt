;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 02-HtDD) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
;can simplify if statements using cond
;can use data defs to give context to our functions
;trafic simulation

;orig w/out context
;
;; Natural -> Natural
;; produces the next color of the traffic light
;(check-expect (next-color 0) 2)
;(check-expect (next-color 1) 0)
;(check-expect (next-color 2) 1)
;(define (next-color c)
;  (cond [(= c 0) 2]
;        [(= c 1) 0]
;        [(= c 2) 1]))

;using data defs
;TLColor is one of:
; - 0
; - 1
; - 2
;interperate as color of traffic light 0 -> red, 1 -> yellow, 2 -> green

;TLColor -> TLColor
; produces next color of traffic light

(check-expect (next-color 0) 2)
(check-expect (next-color 1) 0)
(check-expect (next-color 2) 1)

(define (next-color c)
  (cond [(= c 0) 2]
        [(= c 1) 0]
        [(= c 2) 1]))

;PROBLEM: design a data def to represent the name of a city
;this data is an example of atomic data