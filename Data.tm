<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Data>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <section|Introduction>

  We can form compound data from simple ones. It can be used to separate how
  data is represented and how we deal with it. This is called data
  abstraction. We can increase expresiveness of our data and define general
  procedure that can be applied to many types of data.\ 

  <subsection|Rational numbers>

  Let say we have a way to construct rational numbers from numerator and
  denominator, also a way to extract the two from rational numbers, i.e. we
  have constructor and selector.

  <\scm-code>
    <\render-code>
      (make-rat \<less\>n\<gtr\> \<less\>d\<gtr\>)

      (numer x)

      (denom x)
    </render-code>
  </scm-code>

  We haven't actually have them, it's called wishful thinking. But if we
  have, we can define arithmetic operations and equality test for rational
  numbers.

  <\scm-code>
    (define (add-rat x y)

    \ \ (make-rat (+ (* (numer x) (denom y))\ 

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (* (numer y) (denom x)))

    \ \ \ \ \ \ \ \ \ \ \ \ (* (denom x) (denom y))))

    (define (sub-rat x y)

    \ \ (make-rat (- (* (numer x) (denom y))\ 

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (* (numer y) (denom x)))

    \ \ \ \ \ \ \ \ \ \ \ \ (* (denom x) (denom y))))

    (define (mul-rat x y)

    \ \ (make-rat (* (numer x) (numer y))

    \ \ \ \ \ \ \ \ \ \ \ \ (* (denom x) (denom y))))

    (define (div-rat x y)

    \ \ (make-rat (* (numer x) (denom y))

    \ \ \ \ \ \ \ \ \ \ \ \ (* (denom x) (numer y))))

    (define (equal-rat? x y)

    \ \ (= (* (numer x) (denom y))

    \ \ \ \ \ (* (numer y) (denom x))))
  </scm-code>

  Now let's define the constructor and selector using Scheme's pair that is
  <scm|cons> for constructor and <scm|car> and <scm|cdr> for the first and
  second element selector.

  <\scm-code>
    (define x (cons 1 2))

    (car x)

    (cdr x)
  </scm-code>

  A pair can contains a pair. That enable us to create more complex data
  structure later on. Data objects contructed from pairs are called
  list-structured data.

  <\scm-code>
    (define x (cons 1 2))

    (define y (cons 3 4))

    (define z (cons x y))

    (car (car z)) \ \ \ \ \ \ \ 
  </scm-code>

  Let's define rational numbers as pair.

  <\scm-code>
    (define (make-rat n d) (cons n d))

    (define (numer x) (car x))

    (define (denom x) (cdr x))

    (define (print-rat x)

    \ \ (newline)

    \ \ (display (numer x))

    \ \ (display "/")

    \ \ (display (denom x)))
  </scm-code>

  Then we can try our procedures.

  <\scm-code>
    (define one-half (make-rat 1 2))

    (define one-third (make-rat 1 3))

    (print-rat one-half)

    (print-rat (mul-rat one-half one-third))
  </scm-code>

  If we have procedure to find greatest common divisor (<scm|gcd>), we can
  improve our <scm|make-rat> procedure. See that the change below automaticly
  implemented in the procedure of operation of rational numbers.

  <\scm-code>
    (define (make-rat n d)

    \ \ (let ((g (gcd n d)))

    \ \ \ \ (cons (/n g) (/d g))))
  </scm-code>

  <subsection|Abstraction Barriers>

  Our structure of rational numbers can be seen as follows.

  <tabular|<tformat|<table|<row|<cell|<wide-tabular|<tformat|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<table|<row|<\cell>
    implementation of pair
  </cell>|<\cell>
    cons, car, cdr
  </cell>>|<row|<\cell>
    rational numbers as pairs
  </cell>|<\cell>
    make-rat, numer, denom
  </cell>>|<row|<\cell>
    rational numbers as numer and denom
  </cell>|<\cell>
    add-rat, sub-rat etc
  </cell>>|<row|<\cell>
    rational numbers in problems
  </cell>|<\cell>
    programs using rational numbers
  </cell>>>>>>|<cell|>>>>>

  Each row is separaby abstraction barrier isolating different level of
  systems. The level below can only use the level just above it but not
  higher. This make the code easier to maintain and modify.

  There is alternative way to define make-rat, denom, and numer. We can
  reduce the fraction not at construction, but at selection.

  <\scm-code>
    (define (make-rat n d) (cons n d))

    (define (numer x)\ 

    \ \ (let ((g (gcd (car x) (cdr x))))

    \ \ \ \ (/ (car x) g)))

    (define (denom x)\ 

    \ \ (let ((g (gcd (car x) (cdr x))))

    \ \ \ \ (/ (cdr x) g)))
  </scm-code>

  It is preferable if we don't access the rational numbers as many times as
  we make it. See that it doesn't affect the program at higher level.

  If we want, we also can use both alternatives to define construction and
  selection of rational numbers.

  <subsection|Definition of Data>

  Data is not just defined by constructor and selector, but also some special
  condition. For our case the condition that <scm|x> constructed by
  <scm|make-rat n d> satisfies the following condition.

  <\equation*>
    <dfrac|<around*|(|numer x|)>|<around*|(|denom y|)>>=<dfrac|n|d>
  </equation*>

  The definition of pair can be written as <scm|z> is <scm|(cons x y)> then
  <scm|x> is <scm|(car z)> and <scm|y> is <scm|(cdr z)>.

  Interestingly, we can define pair using only procedure as follows.

  <\scm-code>
    (define (cons x y)

    \ \ (define (dispatch m)

    \ \ \ \ (cond ((= m 0) x)

    \ \ \ \ \ \ \ \ \ \ ((= m 1) y)

    \ \ \ \ \ \ \ \ \ \ (else (error "argument not 0 or 1" m))))

    \ \ dispatch)

    (define (car z) (z 0))

    (define (cdr z) (z 1))
  </scm-code>

  See that cons return function dispatch that returns either x or y depending
  on the argument. Therefore procedural representation is sufficient to
  represent data, but that's not how it's implemented. Procedural programming
  used to represent compound data is called message passing.

  <subsection|Interval Arithmetic>

  Interval defines by lower bound and upper bound. But we define addition,
  multiplication, and division first.

  <\scm-code>
    (define (add-interval x y)

    \ \ (make-interval (+ (lower-bound x) (lower-bound y))

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (+ (upper-bound x) (upper-bound y))))

    (define (mul-interval x y)

    \ \ (let ((p1 (* (lower-bound x) (lower-bound y)))

    \ \ \ \ \ \ \ \ (p2 (* (lower-bound x) (upper-bound y)))

    \ \ \ \ \ \ \ \ (p3 (* (upper-bound x) (lower-bound y)))

    \ \ \ \ \ \ \ \ (p4(* (upper-bound x) (upper-bound y))))

    \ \ \ \ (make-interval (min p1 p2 p3 p4)

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (max p1 p2 p3 p4))))
  </scm-code>

  <\scm-code>
    (define (div-interval x y)

    \ \ (mul-interval x

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-interval (/ 1.0 (lower-bound y))

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (/ 1.0
    (upper-bound y)))))
  </scm-code>

  \;

  \;

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

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-4|<tuple|1.3|3>>
    <associate|auto-5|<tuple|1.4|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Rational numbers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Abstraction Barriers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Definition of Data
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>
    </associate>
  </collection>
</auxiliary>