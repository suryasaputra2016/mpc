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

  <section|Hierarchy and Closure>

  Pair can be used as universal building blocks of data structure. The
  following shows a pair and list of 4 numbers in two different
  representation.

  <\scm-code>
    (cons 1 2)

    (cons (cons 1 2)

    \ \ \ \ \ \ (cons 3 4))

    (cons (cons 1

    \ \ \ \ \ \ \ \ \ \ \ \ (cons 2 3))

    \ \ \ \ \ \ 4)
  </scm-code>

  The ability to create pair containing pair is called closure property of
  cons. Closure can be used to create hieararchy.\ 

  <subsection|Sequence>

  Sequence is ordered data. It can be represented by pairs whose car is the
  item, and cdr is the next pair, except the last one. It is also called a
  list

  <\scm-code>
    (cons 1 (cons 2 (cons 3 (cons 4 nil))))

    (list 1 2 3 4)
  </scm-code>

  Here car chose the first item, cdr chose sublist of all but the first item.
  Also cons adds the first item at the beginning of the second item.

  Belos is a procedure that retrieve the n't element of a list.

  <\scm-code>
    (define (list-ref list n)

    \ \ (if (= n 0)

    \ \ \ \ \ \ (car list)

    \ \ \ \ \ \ (list-ref (cdr list) (- n 1))))
  </scm-code>

  Here are two procedures to find the length of a list.

  <\scm-code>
    (define (length list)

    \ \ (if (null? list)

    \ \ \ \ \ \ 0

    \ \ \ \ \ \ (+ 1 length (cdr list))))
  </scm-code>

  <\scm-code>
    (define (length list)

    \ \ (define (iter list n)

    \ \ \ \ (if (null? list)

    \ \ \ \ \ \ \ \ n

    \ \ \ \ \ \ \ \ (iter (cdr list) (+ n 1))))

    \ \ (iter list 0))
  </scm-code>

  Here is to append two lists.

  <\scm-code>
    (define (append list1 list2)

    \ \ (if (null? list1)

    \ \ \ \ \ \ list2

    \ \ \ \ \ \ (cons (car list1) (append (cdr list1) list2))))
  </scm-code>

  One type of useful procedure for list is to transform the elements, for
  example, multiplying all elements by some factors.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (scale-list items factor)

      \ \ (if (null? items)

      \ \ \ \ \ \ '()

      \ \ \ \ \ \ (cons (* (car items) factor)

      \ \ \ \ \ \ \ \ \ \ \ \ (scale-list (cdr items) factor))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  We can generalize this notion to map that takes a procedure and a list and
  transform the elements in the list using the procedure.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (maps proc items)

      \ \ (if (null? items)

      \ \ \ \ \ \ '()

      \ \ \ \ \ \ (cons (proc (car items))

      \ \ \ \ \ \ \ \ \ \ \ \ (maps proc (cdr items)))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  Map captures common pattern and let us abstract the idea of elementwise
  transformation. Therefore in using it we can supress the details and only
  consider the procedure and the list in other words is creates abstraction
  barrier so we don't haev to care about elementwise transformation when
  using a map.

  <subsection|Hierarchical Structure>

  List can be used to represent sequence of sequence such as the following.

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (cons (list 1 2) (list 3 4))
    <|unfolded-io>
      ((1 2) 3 4)
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  The sequence of sequence above can be represented as a tree. The following
  is a procedure to count the leaves of a tree.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (count-leaves tree)

      \ \ (cond ((null? tree) 0)

      \ \ \ \ \ \ \ \ ((not (pair? tree)) 1)

      \ \ \ \ \ \ \ \ ( else(+ (count-leaves (car tree))

      \ \ \ \ \ \ \ \ \ \ \ (count-leaves (cdr tree))))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  Map and recursion can also be applied to tree. Here are procedure that
  multiplies every leaves in tree by a factor.

  <\session|scheme|default>
    <\input|Scheme] >
      (define nil '())

      \;

      (define (scale-tree tree factor)

      \ \ (cond ((null? tree) nil)

      \ \ \ \ \ \ \ \ ((not (pair? tree)) (* tree factor))

      \ \ \ \ \ \ \ \ (else (cons (scale-tree (car tree) factor)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (scale-tree (cdr tree)
      factor)))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  Or we can use map and transform every subtree, and do it recursively.

  <\session|scheme|default>
    <\input>
      Scheme]\ 
    <|input>
      (define (maps proc items)

      \ \ (if (null? items)

      \ \ \ \ \ \ '()

      \ \ \ \ \ \ (cons (proc (car items))

      \ \ \ \ \ \ \ \ \ \ \ \ (maps proc (cdr items)))))

      \;

      (define (scale-tree tree factor)

      \ \ (maps (lambda (sub-tree)

      \ \ \ \ \ \ \ \ \ \ (if (pair? sub-tree)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ (scale-tree sub-tree factor)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ (* sub-tree factor)))

      \ \ \ \ \ \ \ \ tree))
    </input>
  </session>

  \;

  <subsection|Sequence as Conventional Interface>

  <\session|scheme|default>
    <\input|Scheme] >
      (define (sum-odd-squares tree)

      \ \ (cond ((null? tree) 0)

      \ \ \ \ \ \ \ \ ((not (pair? tree))

      \ \ \ \ \ \ \ \ \ (if (odd? tree) (square tree) 0))

      \ \ \ \ \ \ \ \ (else (+ (sum-odd-squares (car tree))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (sum-odd-squares (cdr tree))))))
    </input>

    <\input|Scheme] >
      (define (even-fibs n)

      \ \ (define (next k)

      \ \ \ \ (if (\<gtr\> k n)

      \ \ \ \ \ \ \ \ nil

      \ \ \ \ \ \ \ \ (let ((f (fib k)))

      \ \ \ \ \ \ \ \ \ \ (if (even? f)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ (cons f (next (+ k 1)))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ (next (+ k 1))))))

      \ \ (next 0))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  The programs above have the following abstract description: enumerate -
  filter - map each -accumulate result. But the implementation of the stages
  are all mixed in different ways.

  We can divide the rprocess according to the stages, first, we've already
  known map.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (maps proc items)

      \ \ (if (null? items)

      \ \ \ \ \ \ '()

      \ \ \ \ \ \ (cons (proc (car items))

      \ \ \ \ \ \ \ \ \ \ \ \ (maps proc (cdr items)))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  Then filter can be defined as follows

  <\session|scheme|default>
    <\input|Scheme] >
      (define (filter predicate sequence)

      \ \ (cond ((null? sequence) nil)

      \ \ \ \ \ \ \ \ ((predicate (car sequence)) (cons (car sequence)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (filter
      predicate (cdr sequence))))

      \ \ \ \ \ \ \ \ (else (filter predicate (cdr sequence)))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  Accumulation can be done with the following

  <\session|scheme|default>
    <\input|Scheme] >
      (define (accumulate op initial sequence)

      \ \ (if (null? sequence)

      \ \ \ \ \ \ initial

      \ \ \ \ \ \ (op (car sequence)

      \ \ \ \ \ \ \ \ \ \ (accumulate op initial (cdr sequence)))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  For enumerating we need two different ways for the two programs. For
  Fibonacci we need ssequence of integers.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (enumerate-interval low high)

      \ \ (if (\<gtr\> low high)

      \ \ \ \ \ \ nil

      \ \ \ \ \ \ (cons low (enumerate-interval (+ low 1) high))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  For tree we can use the following.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (enumerate-tree tree)

      \ \ (cond ((null? tree) nil)

      \ \ \ \ \ \ \ \ ((not (pair? tree)) (list tree))

      \ \ \ \ \ \ \ \ (else (append (enumerate-tree (car tree))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-tree (cdr
      tree))))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  Now let's redefine the two programs above.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (sum-odd-squares tree)

      \ \ (accumulate +

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map square\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (filter odd?

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-tree
      tree)))))
    </input>

    <\input|Scheme] >
      (define (even-fibs n)

      \ \ (accumulate cons

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ nil

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ (filter even?

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map fib

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-interval
      0 n)))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  The program are more modular. Each module can be reuse and rearrange. See
  that the examples are all stages of operations applied on sequence as
  conventional interface.

  Sequence canbe used to represent computation commons to nested loops.
  Consider the problem, given <math|n\<in\> \<bbb-Z\>> find all ordered pair
  <math|i,j> such that <math|1\<leqslant\>j\<leqslant\>i\<leqslant\>n> and
  <math|i+j> is prime. First we accumulate the pairs

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (accumulate append

      \ \ \ \ \ \ \ \ \ \ \ \ nil

      \ \ \ \ \ \ \ \ \ \ \ \ (map (lambda i)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map (lambda (j) (list i j))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-interval 1 (- i
      1)))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-interval 1 n)))
    <|unfolded-io>
      <errput|Unbound variable: accumulate>
    </unfolded-io>

    <\input|Scheme] >
      (define (flat-map proc seq)

      \ \ (accumulate append nil (map proc seq)))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  Then define the filter for prime

  <\session|scheme|default>
    <\input|Scheme] >
      (define (prime-sum? pair)

      \ \ (prime? (+ (car pair) (cdr pair))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  and then create the list of triple and combine the result

  <\session|scheme|default>
    <\input|Scheme] >
      (define (make-pair-sum pair)

      \ \ (list (car pair) (cdr pair) (+ (car pair) (cdr pair))))
    </input>

    <\input|Scheme] >
      (define (prime-sum-pairs n)

      \ \ (map make-pair-sum

      \ \ \ \ \ \ \ (filter prime-sum?

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (flatmap (lambda (i) (map (lambda (j)
      (list i j))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ enumerate-interval
      1 (- i 1)))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-interval
      1-n)))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  Nested mapping can also be sued to generate permutation of a set (here
  list).

  <\session|scheme|default>
    <\input>
      Scheme]\ 
    <|input>
      (define (permutation \ s)

      \ \ (if (null? s)

      \ \ \ \ \ \ (list '())

      \ \ \ \ \ \ (flatmap (lambda (x) (map lambda (p) (cons x p)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (permutation
      (remove x s))))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ s)))
    </input>

    <\input|Scheme] >
      (define (remove item sequence)

      \ \ (filter (lambda (x) (not (= x item)))

      \ \ \ \ \ \ \ \ \ \ sequence))
    </input>
  </session>

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
    <associate|auto-5|<tuple|1.4|3>>
    <associate|auto-6|<tuple|2|3>>
    <associate|auto-7|<tuple|2.1|4>>
    <associate|auto-8|<tuple|2.2|5>>
    <associate|auto-9|<tuple|2.3|6>>
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

      <with|par-left|<quote|1tab>|1.4<space|2spc>Interval Arithmetic
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Hierarchy
      and Closure> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Sequence
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Hierarchical Structure
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Sequence as Conventional
      Interface <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>