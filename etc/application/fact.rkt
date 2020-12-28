#! /usr/bin/env racket
#lang racket/base
(define (fact x)
 (cond [(> x 0) (* x (fact (sub1 x)))]
[else 1]))
(fact 10)
