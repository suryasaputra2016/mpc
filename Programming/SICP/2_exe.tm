<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs|maxima|python>>

<\body>
  <doc-data|<doc-title|SICP Chapter 2>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <\enumerate>
    <item>Number 1

    <\session|scheme|default>
      <\input|Scheme] >
        (define (gcd a b)

        \ \ (if (= b 0)

        \ \ \ \ \ \ a

        \ \ \ \ \ \ (gcd b (remainder a b))))
      </input>

      <\input|Scheme] >
        (define (make-rat n d)

        \ \ ( let ((abs-n (abs n))

        \ \ \ \ \ \ \ \ \ (abs-d (abs d)))

        \ \ \ \ \ (define g (gcd abs-n abs-d))

        \ \ \ \ \ (if (\<gtr\>= (* n d) 0)

        \ \ \ \ \ \ \ \ \ (cons abs-n abs-d)

        \ \ \ \ \ \ \ \ \ (cons (- abs-n) abs-d))))
      </input>
    </session>

    <item>Number 2

    <\session|scheme|default>
      <\input|Scheme] >
        (define (make-point x y) (cons x y))

        (define (x-point p) (car p))

        (define (y-point p) (cdr p))

        (define (print-point p)

        \ \ (newline)

        \ \ (display "(")

        \ \ (display (x-point p))

        \ \ (display ",")

        \ \ (display (y-point p))

        \ \ (display ")"))

        \;

        (define (make-segment p1 p2) (cons p1 p2))

        (define (start-segment s) (car s))

        (define (end-segment s) (cdr s))

        \;

        (define (midpoint-segment s)

        \ \ (make-point (/ (+ (x-point (start-segment s))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (x-point (end-segment s)))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (/ (+ (y-point (start-segment s))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (y-point (end-segment s)))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2)))
      </input>

      <\input|Scheme] >
        (define (make-point x y) (cons x y))

        (define (x-point p) (car p))

        (define (y-point p) (cdr p))

        (define (print-point p)

        \ \ (newline)

        \ \ (display "(")

        \ \ (display (x-point p))

        \ \ (display ",")

        \ \ (display (y-point p))

        \ \ (display ")"))

        \;

        (define (make-rectangle c1 c2) (cons c1 c2))

        (define (corner-one r) (car r))

        (define (corner-two r) (cdr r))

        \;

        (define (len r)

        \ \ (abs (- (x-point (corner-one r)) (x-point (corner-two r)))))

        \;

        \;

        (define (width r)

        \ \ (abs (- (y-point (corner-one r)) (y-point (corner-two r)))))

        \;

        (define (perimeter r)

        \ \ (+ (* (len r) 2)

        \ \ \ \ \ (* (width r) 2)))

        \;

        (define (area r)

        \ \ (* (len r) (width r)))
      </input>
    </session>

    <item>Number 3

    <\session|scheme|default>
      <\input|Scheme] >
        (define (make-point x y) (cons x y))

        (define (x-point p) (car p))

        (define (y-point p) (cdr p))

        (define (print-point p)

        \ \ (newline)

        \ \ (display "(")

        \ \ (display (x-point p))

        \ \ (display ",")

        \ \ (display (y-point p))

        \ \ (display ")"))

        \;

        (define (make-rectangle c1 c2) (cons c1 c2))

        (define (corner-one r) (car r))

        (define (corner-two r) (cdr r))

        \;

        (define (len r)

        \ \ (abs (- (x-point (corner-one r)) (x-point (corner-two r)))))

        \;

        \;

        (define (width r)

        \ \ (abs (- (y-point (corner-one r)) (y-point (corner-two r)))))

        \;

        (define (perimeter r)

        \ \ (+ (* (len r) 2)

        \ \ \ \ \ (* (width r) 2)))

        \;

        (define (area r)

        \ \ (* (len r) (width r)))
      </input>
    </session>

    Alternative implementation

    <\session|scheme|default>
      <\input|Scheme] >
        (define (make-point x y) (cons x y))

        (define (x-point p) (car p))

        (define (y-point p) (cdr p))

        (define (print-point p)

        \ \ (newline)

        \ \ (display "(")

        \ \ (display (x-point p))

        \ \ (display ",")

        \ \ (display (y-point p))

        \ \ (display ")"))

        \;

        (define (make-rectangle c1 len width) (cons c1 (cons len width)))

        (define (corner-one r) (car r))

        \;

        (define (len r)

        \ \ (car (cdr r)))

        \;

        \;

        (define (width r)

        \ \ (cdr (cdr r)))

        \;

        (define (corner-two r)

        \ \ (make-point (+ (x-point (corner-one r)) (len r))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (+ (y-point (corner-one r)) (width r))))

        \;

        (define (perimeter r)

        \ \ (+ (* (len r) 2)

        \ \ \ \ \ (* (width r) 2)))

        \;

        (define (area r)

        \ \ (* (len r) (width r)))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 4

    <\session|scheme|default>
      <\input|Scheme] >
        (define (cons2 x y)

        \ \ (lambda (m) (m x y)))

        \;

        (define (car2 z)

        \ \ (z (lambda (p q) p)))

        \;

        (define (cdr2 z)

        \ \ (z (lambda (p q) q)))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 5

    <\session|scheme|default>
      <\input|Scheme] >
        (define (cons3 x y)

        \ \ (* (expt 2 x) (expt 3 y)))

        \;

        (define (power z n)

        \ \ (define (iter x z)

        \ \ \ \ (if (not (= (remainder z n) 0))

        \ \ \ \ \ \ \ \ x

        \ \ \ \ \ \ \ \ (iter (+ x 1) (/ z n))))

        \ \ (iter 0 z))

        \;

        (define (car3 z) (power z 2))

        (define (cdr3 z) (power z 3))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 6

    <\scm-code>
      (define zero (lambda (f) (lambda (x) x)))

      \;

      (define (add-1 n)

      \ \ (lambda (f) (lambda (x) (f ((n f) x)))))

      \;

      one

      (add-1 zero)

      (lambda (f) (lambda (x) (f ((zero f) x))))

      (lambda (f) (lambda (x) (f x)))

      (lambda (f) (lambda (x) (f x)))

      \;

      two

      (add-1 one)

      (lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) (f x))) f) x)))))

      (lambda (f) (lambda (x) (f (f x))))
    </scm-code>

    <item>Number 7

    <\session|scheme|default>
      <\input|Scheme] >
        (define (make-interval a b) (cons a b))

        (define (lower-bound j) (car j))

        (define (upper-bound j) (cdr j))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 8

    <\session|scheme|default>
      <\input|Scheme] >
        (define (sub-interval x y)

        \ \ (make-interval (- (lower-bound x) (upper-bound y))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (- (upper-bound x) (lower-bound
        y))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 9

    <\eqnarray*>
      <tformat|<table|<row|<cell|2*width <around*|(|a+b|)>>|<cell|=>|<cell|ub<around*|(|a+b|)>-lb<around*|(|a+b|)>>>|<row|<cell|>|<cell|=>|<cell|ub<around*|(|a|)>+ub<around*|(|b|)>-lb<around*|(|a|)>-lb<around*|(|b|)>>>|<row|<cell|>|<cell|=>|<cell|2width<around*|(|a|)>+2width<around*|(|b|)>>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|2*width <around*|(|a-b|)>>|<cell|=>|<cell|ub<around*|(|a-b|)>-lb<around*|(|a-b|)>>>|<row|<cell|>|<cell|=>|<cell|ub<around*|(|a|)>-lb<around*|(|b|)>-lb<around*|(|a|)>+ub<around*|(|b|)>>>|<row|<cell|>|<cell|=>|<cell|2width<around*|(|a|)>+2width<around*|(|b|)>>>>>
    </eqnarray*>

    For multiplication we can use (1,2)x(3,4)=(3,8) and
    (1,2)x(30,34)=(30,68). The first one has width of 5/2 the second one
    38/2. But the width of both the numbers to be multiplied are the same.

    Division is similar with multiplication

    \;

    <item>Number 10

    <\session|scheme|default>
      <\input|Scheme] >
        (define (div-interval x y)

        \ \ (if (\<less\> (* (upper-bound y) (lower-bound y)) 0)

        \ \ \ \ \ \ (error "Division by interval containing zero" y)

        \ \ \ \ \ \ (mul-interval x

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-interval (/ 1.0 (upper-bound
        y))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (/ 1.0
        (lower-bound y))))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 11

    <\session|scheme|default>
      <\input>
        Scheme]\ 
      <|input>
        (define (make-interval a b) (cons a b))

        (define (lower-bound j) (car j))

        (define (upper-bound j) (cdr j))

        \;

        (define (mul-interval x y)

        \ \ (let ((p1 (* (lower-bound x) (lower-bound y)))

        \ \ \ \ \ \ \ \ (p2 (* (lower-bound x) (upper-bound y)))

        \ \ \ \ \ \ \ \ (p3 (* (upper-bound x) (lower-bound y)))

        \ \ \ \ \ \ \ \ (p4 (* (upper-bound x) (upper-bound y))))

        \ \ \ \ (make-interval (min p1 p2 p3 p4)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (max p1 p2 p3 p4))))

        \;

        (define (mul-interval-better x y)

        \ \ (cond ((\<gtr\>= (lower-bound x) 0) (cond ((\<gtr\>= (lower-bound
        y) 0) (make-interval (* (lower-bound x) (lower-bound y))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (*
        (upper-bound x) (upper-bound y))))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ((\<less\>=
        (upper-bound y) 0) (make-interval (* (upper-bound x) (lower-bound y))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (*
        (lower-bound x) (upper-bound y))))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (else
        (make-interval (* (upper-bound x) (lower-bound y))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (*
        (upper-bound x) (upper-bound y))))))

        \ \ \ \ \ \ \ \ ((\<less\>= (upper-bound x) 0) (cond ((\<gtr\>=
        (lower-bound y) 0) (make-interval (* (lower-bound x) (upper-bound y))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (*
        (upper-bound x) (lower-bound y))))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ((\<less\>=
        (upper-bound y) 0) (make-interval (* (upper-bound x) (upper-bound y))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (*
        (lower-bound x) (lower-bound y))))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (else
        (make-interval (* (lower-bound x) (upper-bound y))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (*
        (lower-bound x) (lower-bound y))))))

        \ \ \ \ \ \ \ \ (else (cond ((\<gtr\>= (lower-bound y) 0)
        (make-interval (* (lower-bound x) (upper-bound y))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (*
        (upper-bound x) (upper-bound y))))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ((\<less\>= (upper-bound y)
        0) (make-interval (* (upper-bound x) (lower-bound y))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (*
        (lower-bound x) (lower-bound y))))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (else (mul-intervalx y))))))
      </input>
    </session>

    <item>Number 12

    <\scm-code>
      (define (make-center-percent center tolerance)

      \ \ (make-interval (- center (* center (/ tolerance 100)))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (+ center (* center (/ tolerance
      100)))))

      \;

      (define (center j)

      \ \ (/ (+ (lower-bound j) (upper-bound j))

      \ \ \ \ \ 2))

      \;

      (define (tollerance j)

      \ \ (* (/ (- (upper-bound j) (lower-bound j))

      \ \ \ \ \ \ \ \ (* 2 (center j)))

      \ \ \ \ \ 100))
    </scm-code>

    <item>Number 13

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|a\<pm\>t*a|)>*<around*|(|b\<pm\>t*b|)>>|<cell|=>|<cell|a*b\<pm\>2*a*b*t\<pm\>a*b*t<rsup|2>>>|<row|<cell|>|<cell|\<approx\>
      >|<cell|a*b\<pm\>2*a*b**t>>|<row|<cell|>|<cell|\<approx\>>|<cell|a*b\<pm\>2*t*a*b>>>>
    </eqnarray*>

    Therefore the new tollerance <math|t<rprime|'>=2*t>

    <item>Number 14 ##

    <item>Number 15 ##

    <item>Number 16 ##

    <item>Number 17

    <\session|scheme|default>
      <\input|Scheme] >
        (define (last-pair items)

        \ \ (if (null? (cdr items))

        \ \ \ \ \ \ (car items)

        \ \ \ \ \ \ (last-pair (cdr items))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 18

    <\session|scheme|default>
      <\input|Scheme] >
        (define nil '())\ 

        \;

        (define (reverses items)

        \ \ (define (iter items result)

        \ \ \ \ (if (null? items)

        \ \ \ \ \ \ \ \ result

        \ \ \ \ \ \ \ \ (iter (cdr items) (cons (car items) result))))

        \ \ (iter items nil))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 19

    <\session|scheme|default>
      <\input|Scheme] >
        (define (cc amount coin-values)

        \ \ (cond ((= amount 0) 1)

        \ \ \ \ \ \ \ \ ((or (\<less\> amount 0) (null? coin-values)) 0)

        \ \ \ \ \ \ \ \ (else

        \ \ \ \ \ \ \ \ \ (+ (cc amount

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (cdr coin-values))

        \ \ \ \ \ \ \ \ \ \ \ \ (cc (- amount

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (car coin-values))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ coin-values)))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 20

    <\session|scheme|default>
      <\input|Scheme] >
        (define nil '())

        \;

        (define (reverses items)

        \ \ (define (iter items result)

        \ \ \ \ (if (null? items)

        \ \ \ \ \ \ \ \ result

        \ \ \ \ \ \ \ \ (iter (cdr items) (cons (car items) result))))

        \ \ (iter items nil))

        \;

        (define (same-parity a . z)

        \ \ (define (iter result rest)

        \ \ \ \ (if (null? rest)

        \ \ \ \ \ \ \ \ result

        \ \ \ \ \ \ \ \ (iter (if (= (remainder (- (car rest) a) 2) 0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (cons (car rest) result)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ result)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (cdr rest))))

        \ \ (reverses (iter (cons a nil) z)))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 21

    <\session|scheme|default>
      <\input|Scheme] >
        (define (maps proc items)

        \ \ (if (null? items)

        \ \ \ \ \ \ '()

        \ \ \ \ \ \ (cons (proc (car items))

        \ \ \ \ \ \ \ \ \ \ \ \ (maps proc (cdr items)))))

        \;

        (define (square x)

        \ \ (* x x))

        \;

        (define (square-list-1 items)

        \ \ (if (null? items)

        \ \ \ \ \ \ '()

        \ \ \ \ \ \ (cons ( square (car items))

        \ \ \ \ \ \ \ \ \ \ \ \ (square-list-1 (cdr items)))))

        \;

        (define (square-list-2 items)

        \ \ (maps square items))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 22

    It's reversed because the argument of the cons. But interchanging it
    doesn't help because now the pair is iterated from left to right, not
    right to left as it is defined for list.

    <item>Number 23

    <\session|scheme|default>
      <\input|Scheme] >
        (define (draw-star n)

        \ \ (if (= n 1)

        \ \ \ \ \ \ (display "*")

        \ \ \ \ \ \ (display "**"))

        \ \ (newline))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 24

    <\session|scheme|default>
      <\unfolded-io|Scheme] >
        (list 1 (list 2 (list 3 4)))
      <|unfolded-io>
        (1 (2 (3 4)))
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 25

    <\scm-code>
      (define x '(1 3 (5 7) 9) )

      (car (cdr (car (cdr (cdr x)))))

      \;

      (define y '((7)) )

      (car (car y))

      \;

      (define z '(1 (2 (3 (4 (5 (6 7)))))) )

      (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr
      z))))))))))))
    </scm-code>

    <item>Number 26

    <\scm-code>
      (1 2 3 4 5 6)

      ((1 2 3) 4 5 6)

      ((1 2 3) (4 5 6))
    </scm-code>

    <item>Number 27

    <\session|scheme|default>
      <\input|Scheme] >
        (define nil '())

        \;

        (define (maps proc items)

        \ \ (if (null? items)

        \ \ \ \ \ \ '()

        \ \ \ \ \ \ (cons (proc (car items))

        \ \ \ \ \ \ \ \ \ \ \ \ (maps proc (cdr items)))))

        \;

        (define (reverses items)

        \ \ (define (iter items result)

        \ \ \ \ (cond ((null? items) result)

        \ \ \ \ \ \ \ \ \ \ ((not (pair? items)) items)

        \ \ \ \ \ \ \ \ \ \ ((iter (cdr items) (cons (car items) result)))))

        \ \ (iter items nil))

        \;

        (define (deep-reverses items)

        \ \ (maps reverses (reverses items)))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 28

    <\session|scheme|default>
      <\input|Scheme] >
        (define (appends list1 list2)

        \ \ (if (null? list1)

        \ \ \ \ \ \ list2

        \ \ \ \ \ \ (cons (car list1) (appends (cdr list1) list2))))

        \;

        (define (fringe tree)

        \ \ (cond ((null? tree) '())

        \ \ \ \ \ \ \ \ ((not (pair? tree)) (list tree))

        \ \ \ \ \ \ \ \ (else (appends (fringe (car tree)) (fringe (cdr
        tree))))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 29

    <\session|scheme|default>
      <\input|Scheme] >
        (define (make-mobile left right)

        \ \ (list left right))

        \;

        (define (left-branch m) (car m))

        (define (right-branch m) (car (cdr m)))

        \;

        (define (make-branch length structure)

        \ \ (list length structure))

        \;

        (define (branch-length b) (car b))

        (define (branch-structure b) (car (cdr b)))

        \;

        (define (total-weight m)

        \ \ (if (not (pair? m))

        \ \ \ \ \ \ m

        \ \ \ \ \ \ (+ (total-weight (structure (left-branch m)))

        \ \ \ \ \ \ \ \ \ (total-weight (structure (right-branch m))))))

        \;

        (define (balance? m)

        \ \ (if (not (pair? m))

        \ \ \ \ \ \ #t

        \ \ \ \ \ \ (and (balance? (structure (left-branch m)))

        \ \ \ \ \ \ \ \ \ \ \ (balance? (structure (right-branch m)))

        \ \ \ \ \ \ \ \ \ \ \ (= (* (length (left-branch m)) (total-weight
        (structure (left-branch m))))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (* (length (right-branch m))
        (total-weight (structure (right-branch m))))))))

        \;

        ; just need to change

        (define (right-branch m) (cdr m))

        (define (branch-structure b) (cdr b))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 30

    <\session|scheme|default>
      <\input|Scheme] >
        (define (maps proc items)

        \ \ (if (null? items)

        \ \ \ \ \ \ '()

        \ \ \ \ \ \ (cons (proc (car items))

        \ \ \ \ \ \ \ \ \ \ \ \ (maps proc (cdr items)))))

        \;

        (define (square-tree tree)

        \ \ (maps (lambda (sub-tree)

        \ \ \ \ \ \ \ \ \ \ (if (pair? sub-tree)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (square-tree sub-tree)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (* sub-tree sub-tree)))

        \ \ \ \ \ \ \ \ tree))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 31

    <\session|scheme|default>
      <\input|Scheme] >
        (define (tree-map proc tree)

        \ \ (cond ((null? tree) nil)

        \ \ \ \ \ \ \ \ ((not (pair? tree)) (proc tree))

        \ \ \ \ \ \ \ \ (else (cons (tree-map proc (car tree))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (tree-map proc (cdr
        tree))))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 32

    <\session|scheme|default>
      <\input|Scheme] >
        (define (add-element x)

        \ \ (lambda (s) (cons x s)))

        \;

        (define (maps proc items)

        \ \ (if (null? items)

        \ \ \ \ \ \ '()

        \ \ \ \ \ \ (cons (proc (car items))

        \ \ \ \ \ \ \ \ \ \ \ \ (maps proc (cdr items)))))

        \;

        (define (subsets s)

        \ \ (if (null? s)

        \ \ \ \ \ \ (list nil)

        \ \ \ \ \ \ (let ((rest (subsets (cdr s))))

        \ \ \ \ \ \ \ \ (append rest (maps (add-element (car s)) rest)))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 33

    <\session|scheme|default>
      <\input|Scheme] >
        (define (map p sequence)

        \ \ (accumulate (lambda (x y) (cons (p x) y))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ nil

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ sequence))
      </input>

      <\input|Scheme] >
        (define (append seq1 seq2)

        \ \ (accumulate cons

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ seq2

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ seq1))
      </input>

      <\input|Scheme] >
        (define (length sequence)

        \ \ (accumulate (lambda (x y) (+ 1 y))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ sequence))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 34

    <\session|scheme|default>
      <\input|Scheme] >
        (define (accumulate op initial sequence)

        \ \ (if (null? sequence)

        \ \ \ \ \ \ initial

        \ \ \ \ \ \ (op (car sequence)

        \ \ \ \ \ \ \ \ \ \ (accumulate op initial (cdr sequence)))))

        \;

        (define (horner-eval x coefficient-sequence)

        \ \ (accumulate (lambda (this-coeff higher-terms) (+ (* higher-terms
        x) this-coeff))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ coefficient-sequence))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 35

    <\session|scheme|default>
      <\input|Scheme] >
        (define (count-leaves t)

        \ \ (accumulate +

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map (lambda (subt) (cond ((null? subt)
        0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ((pair?
        subt)\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (count-leaves
        subt))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (else
        1)))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t)))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 36

    <\session|scheme|default>
      <\input|Scheme] >
        (define (accumulate-n op init items)

        \ \ (if (null? (car items))

        \ \ \ \ \ \ '()

        \ \ \ \ \ \ (cons (accumulate op init (maps car items))

        \ \ \ \ \ \ \ \ \ \ \ \ (accumulate-n op init (maps cdr items)))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 37

    <\session|scheme|default>
      <\input|Scheme] >
        (define (accumulate-n op init items)

        \ \ (if (null? (car items))

        \ \ \ \ \ \ '()

        \ \ \ \ \ \ (cons (accumulate op init (maps car items))

        \ \ \ \ \ \ \ \ \ \ \ \ (accumulate-n op init (maps cdr items)))))

        \;

        (define (dot-product v w)

        \ \ (accumulate + 0 (map * v w)))

        \;

        (define (matrix-*-vector m v)

        \ \ (map (lambda (m) (dot-product v m)) m))

        \;

        (define (transpose mat)

        \ \ (accumulate-n cons '() mat))

        \;

        (define (matrix-*-matrix m n)

        \ \ (let ((cols (transpose n)))

        \ \ \ \ \ \ \ \ (map (lambda (m) (matrix-*-vector cols m)) m)))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 38

    <\session|scheme|default>
      <\input|Scheme] >
        (define (fold-left op initial sequence)

        \ \ (define (iter result rest)

        \ \ \ \ (if (null? rest)

        \ \ \ \ \ \ \ \ result

        \ \ \ \ \ \ \ \ (iter (op result (car rest))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (cdr rest))))

        \ \ (iter initial sequence))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <\scm>
      (fold-right / 1 (list 1 2 3))

      (/ 1(/ 2 (/ 3 1)))

      (fold-left / 1 (list 1 2 3))

      (/ (/ (/ 1 1) 2) 3)

      (fold-right list nil (list 1 2 3))

      (cons 1 (cons 2 (cons 3 nil)))

      (list 1 2 3)

      (fold-left list nil (list 1 2 3))

      (cons (cons (cons nil 1) 2) 3)

      (((nil.1).2).3)
    </scm>

    Fold right and left would be the same for commutative operation

    <item>Number 39

    <\session|scheme|default>
      <\input|Scheme] >
        (define (reverse-fold-right items)\ 

        \ \ \ (accumulate (lambda (first rest)\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (append rest (list first)))\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ '()\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ items))
      </input>

      <\input|Scheme] >
        (define (reverse sequence)

        \ \ (fold-left (lambda (x y) (cons y x)) '() sequence))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 40

    <\session|scheme|default>
      <\input|Scheme] >
        (define (accumulate op initial sequence)\ 

        \ \ \ (if (null? sequence)\ 

        \ \ \ \ \ \ \ initial\ 

        \ \ \ \ \ \ \ (op (car sequence)\ 

        \ \ \ \ \ \ \ \ \ \ \ (accumulate op initial (cdr sequence)))))

        \;

        (define (enumerate-interval n)

        \ \ (define (iter i list)

        \ \ \ \ (if (\<gtr\> i n)

        \ \ \ \ \ \ \ \ '()

        \ \ \ \ \ \ \ \ (cons i

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (iter (+ i 1) list))))

        \ \ (iter 1 '()))

        \;

        (define (unique-pairs n)

        \ \ (accumulate append

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ '()

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map (lambda (x) (map (lambda (y) (list y
        x))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-interval
        (- x 1))))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-interval n))))
      </input>

      <\input|Scheme] >
        (define (sum-prime-pairs n)

        \ \ (filter sum-prime?

        \ \ \ \ \ \ \ \ \ \ (unique-pairs n)))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 41

    <\session|scheme|default>
      <\input|Scheme] >
        (define (unique-triple n)

        \ \ (accumulate append

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ '()

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map (lambda (x) (accumulate append

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ '()

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map
        (lambda (y)(map (lambda (z) (list z y x))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-interval
        (- y 1))))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-interval
        (- x 1)))))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-interval n))))
      </input>

      <\input|Scheme] >
        (define (triple-sum-equal-to m n)

        \ \ (filter (lambda (x) (= (+ (car x) (cdar x) (cddar x))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m))\ 

        \ \ \ \ \ \ \ \ (unique-tirple n)))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 42

    <\session|scheme|default>
      <\input|Scheme] >
        (define (queens board-size)

        \ \ (define (queen-cols k)

        \ \ \ \ (if (= k 0)

        \ \ \ \ \ \ \ \ (list '())

        \ \ \ \ \ \ \ \ (filter

        \ \ \ \ \ \ \ \ \ (lambda (positions) (safe? k positions))

        \ \ \ \ \ \ \ \ \ (flatmap

        \ \ \ \ \ \ \ \ \ \ (lambda (rest-of-queens)

        \ \ \ \ \ \ \ \ \ \ \ \ (map (lambda (new-row)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (adjoin-position new-row k
        rest-of-queens))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-interval board-size)))

        \ \ \ \ \ \ \ \ \ \ (queen-cols (- k 1))))))

        \ \ (queen-cols board-size))

        \;

        (define (adjoin-position row col rest)

        \ \ (cons (list row col) rest))

        \;

        (define (safe? k positions)

        \ \ (= 0

        \ \ \ \ \ (accumulate + 0

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map (lambda (x) (if (check (car
        positions) x)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 0
        1))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (cdr positions)))))

        (define (check a b)

        \ \ (let ((ax (car a))

        \ \ \ \ \ \ \ \ (ay (cadr a))

        \ \ \ \ \ \ \ \ (bx (car b))

        \ \ \ \ \ \ \ \ (by (cadr b)))

        \ \ \ \ (and (not (= ax bx))

        \ \ \ \ \ \ \ \ \ (not (= ay by))

        \ \ \ \ \ \ \ \ \ (not (= (abs (- ax bx)) (abs (- ay by)))))))

        \;

        (define (enumerate-interval n)

        \ \ (define (iter i list)

        \ \ \ \ (if (\<gtr\> i n)

        \ \ \ \ \ \ \ \ '()

        \ \ \ \ \ \ \ \ (cons i

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (iter (+ i 1) list))))

        \ \ (iter 1 '()))

        (define (filter pred? items)

        \ \ (cond ((null? items) '())

        \ \ \ \ \ \ \ \ ((pred? (car items)) (cons (car items) (filter pred?
        (cdr items))))

        \ \ \ \ \ \ \ \ (else (filter pred? (cdr items)))))

        (define (flatmap proc items)

        \ \ (accumulate append '() (map proc items)))

        (define (accumulate op initial sequence)

        \ \ (if (null? sequence)

        \ \ \ \ \ \ initial

        \ \ \ \ \ \ (op (car sequence)

        \ \ \ \ \ \ \ \ \ \ (accumulate op initial (cdr sequence)))))

        (queens 8)
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 43

    queen-cols evaluated for every iteration on map with time $$$$ (later)

    <item>Number 44

    <\session|scheme|default>
      <\input|Scheme] >
        <\scm-code>
          (define (up-split painter n)

          \ \ (if (= n 0)

          \ \ \ \ \ \ painter

          \ \ \ \ \ \ (let ((smaller (up-split painter (- n 1))))

          \ \ \ \ \ \ \ \ (below painter (beside smaller smaller)))))
        </scm-code>
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 45

    <\session|scheme|default>
      <\input|Scheme] >
        (define (split outer inner)

        \ \ (lambda (painter) (outer (inner painter)\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (inner
        painter))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 46

    <\session|scheme|default>
      <\input|Scheme] >
        (define (make-vect x y)

        \ \ (cons x y))
      </input>

      <\input|Scheme] >
        (define (xcor-vect v)

        \ \ (car v))
      </input>

      <\input|Scheme] >
        (define (ycor-vect v)

        \ \ (cdr v))
      </input>

      <\input|Scheme] >
        (define (add-vect v1 v2)

        \ \ (make-vect (+ (xcor-vect v1) (xcor-vect v2))

        \ \ \ \ \ \ \ \ \ \ \ \ \ (+ (ycor-vect v1) (ycor-vect v2))))
      </input>

      <\input|Scheme] >
        (define (sub-vect v1 v2)

        \ \ (make-vect (- (xcor-vect v1) (xcor-vect v2))

        \ \ \ \ \ \ \ \ \ \ \ \ \ (- (ycor-vect v1) (ycor-vect v2))))
      </input>

      <\input|Scheme] >
        (define (scale-vect s v)

        \ \ (make-vect (* s (xcor-vect v))

        \ \ \ \ \ \ \ \ \ \ \ \ \ (* s (ycor-vect v))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 47

    <\session|scheme|default>
      <\input|Scheme] >
        (define (origin frame)

        \ \ (car frame))
      </input>

      <\input|Scheme] >
        (define (edge1 frame)

        \ \ (car (cdr frame)))
      </input>

      <\input|Scheme] >
        (define (edge2 frame); for list

        \ \ (car (cdr (cdr frame))))
      </input>

      <\input|Scheme] >
        (define (edge2 frame); for cons

        \ \ (cdr (cdr frame)))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 48

    <\session|scheme|default>
      <\input|Scheme] >
        (define (make-segment v1 v2)

        \ \ (cons v1 v2))

        \;

        (define (start-segment s)

        \ \ (car s))

        \;

        (define (end-segment s)

        \ \ (cdr s))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 49

    <\session|scheme|default>
      <\unfolded-io|Scheme] >
        (segments-\<gtr\>painter (list (make-segment (make-vect 0 0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        1 0)))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-segment
        (make-vect 1 0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        0 0))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-segment )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-segment )))
      <|unfolded-io>
        <errput|Unbound variable: segments-\>painter>
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <\session|scheme|default>
      <\unfolded-io|Scheme] >
        (segments-\<gtr\>painter (list (make-segment (make-vect 0 0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        1 0))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-segment
        (make-vect 1 0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        1 1))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-segment
        (make-vect 1 1)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        0 1))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-segment
        (make-vect 0 1)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        0 0))))
      <|unfolded-io>
        <errput|Unbound variable: segments-\>painter>
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (segments-\<gtr\>painter (list (make-segment (make-vect 0 0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        1 1))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-segment
        (make-vect 1 0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        0 1))))
      <|unfolded-io>
        <errput|Unbound variable: segments-\>painter>
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (segments-\<gtr\>painter (list (make-segment (make-vect 0.5 0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        1 0.5))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-segment
        (make-vect 1 0.5)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        0.5 1))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-segment
        (make-vect 0.5 1)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        0 0.5))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-segment
        (make-vect 0 0.5)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        0.5 0))))
      <|unfolded-io>
        <errput|Unbound variable: segments-\>painter>
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 50

    <\session|scheme|default>
      <\input|Scheme] >
        (define (flip-horiz painter)

        \ \ (transform-painter painter

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 1.0 0.0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 0.0 0.0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 1.0 1.0)))
      </input>

      <\input|Scheme] >
        (define (rotate180 painter)

        \ \ (transform-painter painter

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 1.0 1.0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 0.0 1.0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 1.0 0.0)))
      </input>

      <\input|Scheme] >
        (define (rotate270 painter)

        \ \ (transform-painter painter

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 0.0 1.0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 0.0 0.0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 1.0 1.0)))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 51

    <\session|scheme|default>
      <\input|Scheme] >
        (define (below painter1 painter2)

        \ \ (let ((split-point (make-vect 0.0 5.0)))

        \ \ \ \ (let ((paint-bottom(transform-painter painter1

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        0.0 0.0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        1.0 0.0)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ split-point))

        \ \ \ \ \ \ \ \ \ \ (paint-top (transform-painter painter2

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ split-point

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        1.0 0.5)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
        1.0 1.0))))

        \ \ \ \ \ \ (lambda (frame) (paint-bottom frame)(paint-top frame)))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 52

    <\session|scheme|default>
      <\input|Scheme] >
        (define (corner-split painter n)

        \ \ (if (= n 0)

        \ \ \ \ \ \ painter

        \ \ \ \ \ \ (beside (below painter (up-split painter (- n 1)))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (below (right-split painter (- n 1))
        (corner-split painter (- n 1))))))\ 

        \;

        (define (square-limit painter n)

        \ \ (let ((combine4 (square-of-four flip-vert rotate180

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ identity
        flip-horiz)))

        \ \ \ \ (combine4 (corner-split painter n))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 53

    <\session|scheme|default>
      <\unfolded-io|Scheme] >
        (list 'a 'b 'c) ; (a b c)

        (list (list 'george)) ; ((george))

        (cdr '((x1 x2) (y1 y2))) ; ((y1 y2))\ 

        (cadr '((x1 x2) (y1 y2))) ; (y1 y2)

        (pair? (car '(a short list))) ; #f

        (memq 'red '((red shoes) (blue socks))) ; #f

        (memq 'red '(red shoes blue socks)) ; (red shoes blue socks)
      <|unfolded-io>
        (a b c)
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (pair? (car '(a short list)))
      <|unfolded-io>
        #f
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 54

    <\session|scheme|default>
      <\input|Scheme] >
        (define (equal? a b)

        \ \ (= 0

        \ \ \ \ \ (accumulate +

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map (lambda (x y) (if (eq? x y)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 1))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ a

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 55

    <\session|scheme|default>
      <\unfolded-io|Scheme] >
        (car ''abracadabra)
      <|unfolded-io>
        quote
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (car (quote 'abracadabra))
      <|unfolded-io>
        quote
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 56

    <\session|scheme|default>
      <\input|Scheme] >
        (define (exponentiation? x)

        \ \ (and (pair? x) (eq? (car x) '**)))
      </input>

      <\input|Scheme] >
        (define (base x) (cadr x))
      </input>

      <\input|Scheme] >
        (define (exponent x) (caddr x))
      </input>

      <\input|Scheme] >
        (define (make-exponentiation b e)

        \ \ (cond ((=number? e 0) 1)

        \ \ \ \ \ \ \ \ ((=number? e 1) b)

        \ \ \ \ \ \ \ \ ((and () ()) (pow b e))

        \ \ \ \ \ \ \ \ (else (list '** b e))))
      </input>
    </session>

    <item>Number 57

    <\session|scheme|default>
      <\input|Scheme] >
        (define (addend x) (cadr x))
      </input>

      <\input|Scheme] >
        (define (augend x) (make-sum (caddr x) (cadddr)))
      </input>

      <\input|Scheme] >
        (define (make-sum a1 . a2)\ 

        \ \ (cond ((=number? a1 0) a2)

        \ \ \ \ \ \ \ \ ((=number? a2 0) a1)

        \ \ \ \ \ \ \ \ ((and (number? a1) (number? a2)) (+ a1 a2))

        \ \ \ \ \ \ \ \ (else (append (list '+ a1) a2))))
      </input>

      <\input|Scheme] >
        (define (multiplier x) (cadr x))
      </input>

      <\input|Scheme] >
        (define (multiplicand x) (make-sum (caddr x) (cadddr x)))
      </input>

      <\input|Scheme] >
        (define (make-product a1 . a2)\ 

        \ \ (cond (((or (=number? m1 0) (=number? m2 0)) 0)

        \ \ \ \ \ \ \ \ ((=number? m1 1) m2)

        \ \ \ \ \ \ \ \ ((=number? m2 1) m1)

        \ \ \ \ \ \ \ \ ((and (number? m1) (number? m2)) (* m1 m2))

        \ \ \ \ \ \ \ \ (else (append (list '* a1) a2)))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 58

    <\enumerate>
      <item>part a

      <\session|scheme|default>
        <\input|Scheme] >
          (define (make-sum a1 a2) (list a1 '+ a2 ))
        </input>

        <\input|Scheme] >
          (define (addend x) (car x))
        </input>

        <\input|Scheme] >
          (define (augend x) (caddr x))
        </input>

        <\input|Scheme] >
          (define (sum? x) (= (cadr) '+))
        </input>

        <\input|Scheme] >
          (define (make-product a1 a2) (list a1 '* a2))
        </input>

        <\input|Scheme] >
          (define (addend x) (car x))
        </input>

        <\input|Scheme] >
          (define (augend x) (caddr x))
        </input>

        <\input|Scheme] >
          (define (product? x) (= (cadr) '*))
        </input>

        <\input|Scheme] >
          \;
        </input>
      </session>

      <item>part b

      <\session|scheme|default>
        <\input>
          Scheme]\ 
        <|input>
          \;
        </input>
      </session>
    </enumerate>

    <item>Number 59

    <\session|scheme|default>
      <\input|Scheme] >
        (define (union-set set1 set2)

        \ \ (cond ((null? set1) set2)

        \ \ \ \ \ \ \ \ ((null? set2) set1)

        \ \ \ \ \ \ \ \ ((element-of-set? (car set1) set2)\ 

        \ \ \ \ \ \ \ \ \ (union-set (cdr set1) set2))

        \ \ \ \ \ \ \ \ (else (cons (car set1) (union-set (cdr set1)
        set2)))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 60

    element-of-set doesn't change

    <\session|scheme|default>
      <\input|Scheme] >
        (define (adjoin-set x set) (cons x set))
      </input>

      <\input|Scheme] >
        (define (union set1 set2)

        \ \ (append set1 set2))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    intersection doesn't change. The efficiency of adjoin is
    <math|\<Theta\><around*|(|1|)>>, and that of element of set,
    intersection, and union is <math|\<Theta\><around*|(|n|)>,\<Theta\><around*|(|n<rsup|2>|)>,\<Theta\><around*|(|n|)>>

    <item>Number 61

    <\session|scheme|default>
      <\input|Scheme] >
        (define (adjoin x set)

        \ \ (cond ((null? set) (cons x '()))

        \ \ \ \ \ \ \ \ ((= x (car set)) set)

        \ \ \ \ \ \ \ \ ((\<gtr\> x (car set)) cons (car set (cons x cdr
        set)))

        \ \ \ \ \ \ \ \ (else cons (car set) (adjoin-set x (cdr set)))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 62

    <\session|scheme|default>
      <\input|Scheme] >
        (define (union-set set1 set2)

        \ \ (cond ((null? set1) set2)

        \ \ \ \ \ \ \ \ ((null? set2) set1)

        \ \ \ \ \ \ \ \ (let ((x1 \ (car set1)) (x2 (car set2)))

        \ \ \ \ \ \ \ \ \ \ (cond ((= x1 x2) (cons x1 (union-set (cdr set1)\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (cdr
        set2))))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ((\<less\> x1 x2) (cons x1 (union-set
        (cdr set1)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ set2)))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ((\<gtr\> x1 x2) (cons x2 (union-set
        set1

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (cdr
        set2))))))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 63

    \;
  </enumerate>

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>