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

    <item>Number 22
  </enumerate>

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>