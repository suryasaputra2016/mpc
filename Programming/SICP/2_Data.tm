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

  <subsection|A Picture Language>

  A picture language has one elementary element, a painter, that draws scaled
  and shifted image. There is flip-vert and flip horiz to flip image, and
  also beside and below that takes two images and stack them horizontally and
  vertically. Below, we use wave as the elementary element painter

  <\scm-code>
    (define wave2 (beside wave (flip-vert wave)))

    (define wave4 (below wave2 wave2))
  </scm-code>

  We can abstract the two procedures above into the following.

  <\scm-code>
    (define (flipped-pairs painter)

    \ \ (let ((painter2 (beside painter (flip-vert painter))))

    \ \ \ \ (below painter2 painter2)))
  </scm-code>

  We can also define recursive procedure as below.

  <\scm-code>
    (define (right-split painter n)

    \ \ (if (= n 0)

    \ \ \ \ \ \ painter

    \ \ \ \ \ \ (let ((smaller (right-split painter (- n 1))))

    \ \ \ \ \ \ \ \ (beside painter (below smaller smaller)))))
  </scm-code>

  <\scm-code>
    (define (corner-split painter n)

    \ \ (if (= n 0)

    \ \ \ \ \ \ painter

    \ \ \ \ \ \ (let ((up (up-split painter (- n 1)))

    \ \ \ \ \ \ \ \ \ \ \ \ (right (right-split painter (- n 1))))

    \ \ \ \ \ \ \ \ (let ((top-left (beside up up))

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ (botom-right (below right right))

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ (corner (corner-split painter (- n 1))))

    \ \ \ \ \ \ \ \ \ \ (beside (below painter top-left )

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (below bottom-right corner))))))
  </scm-code>

  <\scm-code>
    (define (square-limit n)

    \ \ (let ((quarter (corner-split painter n)))

    \ \ \ \ (let ((half (beside (flip-horiz quarter) quarter)))

    \ \ \ \ \ \ (below (flip-vert half) half))))
  </scm-code>

  We also have higher-order operations, such as arranging four painters, but
  take four procedures that will be applied to the four painters.

  <\scm-code>
    (define (square-of-four tl tr bl br)

    \ \ (lambda (painter)

    \ \ \ \ (let ((top (beside (tl painter) (tr painter)))

    \ \ \ \ \ \ \ \ \ \ (bottom (beside (bl painter) (br painter))))

    \ \ \ \ \ \ (below bottom top))))
  </scm-code>

  Then we can redefine flipped pairs and square-limit.

  <\scm-code>
    (define (flipped pairs painter)

    \ \ (let ((combine4 (square-of-four identity flip-vert

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ identity
    flip vert)))

    \ \ \ \ (combine4 painter)))
  </scm-code>

  <\scm-code>
    <\scm-code>
      (define (square-limit painter n)

      \ \ (let ((combine4 (square-of-four flip-horiz identity

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ rotate180
      flip-vert)))

      \ \ \ \ (combine4 painter)))
    </scm-code>
  </scm-code>

  To implement painter we need to have frame that can be described by three
  vectors, origin and two edge vectors. To have frame we need a constructor
  and three selectors. Images will use unit square and it will be mapped to
  the frame using <math|origin<around*|(|frame|)>+x*edge1<around*|(|frame|)>+y*edge2<around*|(|frame|)><rsub|>>.

  <\scm-code>
    (define (frame-coord-map frame)

    \ \ (lambda (v) (add-vec (origin-frame frame)

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (add-vec (scale-vect
    (xcor-vect v) (edge1-frame frame))

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (scale
    vect (ycor-vect v) (edge2-frame frame))))))
  </scm-code>

  Painters draws it picture on frame given on it. Below produce a procedure
  configuraing a drawing of line segments into frame.

  <\scm-code>
    (define (segments-\<gtr\>painter segment-list)

    \ \ (lambda (frame)

    \ \ \ \ (for-each

    \ \ \ \ \ (lambda (segment)

    \ \ \ \ \ \ \ (draw-line

    \ \ \ \ \ \ \ \ ((frame-coord-map frame) (start-segment segment))

    \ \ \ \ \ \ \ \ ((frame-coord-map frame) (end-segment segment))))

    \ \ \ \ \ segment-list)))
  </scm-code>

  Procedure form of painter create abstraction barrier so that we can use all
  primitive painters.

  For transformation of painter, they can work withouth knowing the painter.

  <\scm-code>
    (define (transform-painter painter origin corner1 corner2)

    \ \ (lambda (frame)

    \ \ \ \ (let ((m (frame-coord-map frame)))

    \ \ \ \ \ \ (let ((new-origin (m origin)))

    \ \ \ \ \ \ \ \ (painter (make-frame

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ new-origin

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (sub-vect (m corner1) new-origin)

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (sub-vect (m corner2)
    new-origin)))))))
  </scm-code>

  Below are the transformations of the painter implemented using
  transform-painter.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (flip-vert painter)

      \ \ (transform-painter painter

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 0.0 1.0)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 1.0 1.0)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 0.0 0.0)))

      \;

      (define (shrink-to-upper-right painter)

      \ \ (transform-painter painter

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 0.5 0.5)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 1.0 0.5)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 0.5 1.0)))

      \;

      (define (rotate90 painter)

      \ \ (transform-painter painter

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 1.0 0.0)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 1.0 1.0)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 0.0 0.0)))

      \;

      (define (squash-inwards painter)

      \ \ (transform-painter painter

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 0.0 0.0)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 0.65 0.35)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect 0.35 0.65)))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  Procedure that compound painter can also be implemented the same way.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (beside painter1 painter2)

      \ \ (let ((split-point (make-vect 0.5 0.0)))

      \ \ \ \ (let ((paint-left(transform-painter painter1

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
      0.0 0.0)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ split-point

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
      0.0 1.0)))

      \ \ \ \ \ \ \ \ \ \ (paint-right (transform-painter painter2

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ split-point

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
      1.0 0.0)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-vect
      0.5 1.0))))

      \ \ \ \ \ \ (lambda (frame) (paint-left frame)(paint-right frame)))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  Level of language for Robust design. The picture language shows a
  stratified design that is complex system comprises of system of levels each
  with its own language. compound elements of one level becomes the primitive
  level of the upper level. Stratified design makes program robust that is
  small change in specification only require small change in program.\ 

  <section|Symbolic Data>

  Data can also contains other than numbers such as <scm|(a b c
  d)><space|1em>or <scm|((Andy 1) (Ben 2) (Charlie 3))>. To mainpulat symbols
  we need to quote data, treating the symbols as data object rather than
  expression to be evaluated.

  <\scm-code>
    (define a 1)

    (define b 2)

    (list a b) ;(1 2)

    (list 'a 'b) ; (a,b)

    (car '(a b c)); a
  </scm-code>

  Another primitive is <scm|eq?> that check wether two symbols are equal as
  used in theh following procedure.

  <\scm-code>
    (define (memq item x)

    \ \ (cond ((null? x) false)

    \ \ \ \ \ \ \ \ ((eq? item (car x)) x)

    \ \ \ \ \ \ \ \ (else (memq item (cdr x))))))
  </scm-code>

  <subsection|Symbolic Differentiation>

  To define differentiation symbolically, we first define the rule on
  abstract object such as sum, product and variables. To keep it isimple we
  only care about two operands.

  <\enumerate>
    <item><math|<frac|d*c|d*x>=0>

    <item><math|<frac|d*x|d*x>=1>

    <item><math|<frac|d<around*|(|u+v|)>|d*x>=<frac|d*u|d*x>+<frac|d*v|d*x>>

    <item><math|<frac|d<around*|(|u*v|)>|d*x>=u<frac|d*v|d*x>+v<frac|d*u|d*x>>
  </enumerate>

  The last two are recursive. To define derivative let's use wishful thinking
  and assume we already have the followings.

  <\enumerate>
    <item><scm|(variable? e)> is it variable

    <item><scm|(same-variable? v1 v2)> are they the same variable

    <item><scm|(sum? e)> is it a sum

    <item><scm|(addend e)> select the addend

    <item><scm|(augend e)> select the augend

    <item><scm|(make-sum a1 a2)> make a sum from

    <item><scm|(product? e)> is it a product

    <item><scm|(multiplier e)> select the multiplier

    <item><scm|(multiplicand e)> select the multiplicand

    <item><scm|(make-product m1 m2)> make a sum from
  </enumerate>

  Now let's define derivative.

  <\scm-code>
    (define (deriv exp var)

    \ \ (cond ((number? exp) 0)

    \ \ \ \ \ \ \ \ ((variable? exp) (if (same-variable? exp var) 1 0))

    \ \ \ \ \ \ \ \ ((sum? exp) (make-sum (deriv (addend exp) var)

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (deriv
    (augend exp) var)))

    \ \ \ \ \ \ \ \ ((product? exp) (make-sum (make-product (multiplier exp)

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (deriv
    (multiplicand exp) var))

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (make-product
    (multiplicand exp)

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (deriv
    (multiplier exp) var))))

    \ \ \ \ \ \ \ \ (else (error "unknown expression type: DERIV" exp))))
  </scm-code>

  Now let's represent algebraic expression.

  We can use lisp combination to represent equation. For example <math|a*x+b>
  can be represented as <scm|(+ (* a x) b)>. Here are the implementation of
  the procedure above.

  <\scm-code>
    (define (variable? x) (symbol? x))
  </scm-code>

  <\scm-code>
    (define (same-variable? v1 v2)

    \ \ (and (variable? v1) (variable? v2) (= v1 v2)))
  </scm-code>

  <\scm-code>
    (define (sum? x)

    \ \ (and (pair? x) (eq? (car x) '+)))
  </scm-code>

  <\scm-code>
    (define (addend x) (cadr x))
  </scm-code>

  <\scm-code>
    (define (augend x) (caddr x))
  </scm-code>

  <\scm-code>
    (define (make-sum a1 a2) (list '+ a1 a2))
  </scm-code>

  <\scm-code>
    (define (product? x)\ 

    \ \ (and (pair? x) (eq? (car x) '*)))
  </scm-code>

  <\scm-code>
    (define (multiplier x) (cadr x))
  </scm-code>

  <\scm-code>
    (define (multiplicand x) (caddr x))
  </scm-code>

  <\scm-code>
    (define (make-product m1 m2) (list '* m1 m2))
  </scm-code>

  Now let's try the derivation. The program is correct but they are not
  simplified.

  <\scm-code>
    (deriv '(+ x 3) 'x) ; (+ 1 0)

    (deriv '(* x y) 'x) ; (+ (* x 0) (* 1 y))

    (deriv '(* (* x y) (+ x 3)) 'x)\ 

    (+ (* (* x y)\ 

    \ \ \ \ \ \ (+ 1 0))\ 

    \ \ \ (* (+ (* x 0)\ 

    \ \ \ \ \ \ \ \ \ (* 1 y))\ 

    \ \ \ \ \ \ (+ x 3)))
  </scm-code>

  To involve summation, we only need to change the constructor, make-sum and
  make-product.

  <\scm-code>
    (define (=number? exp num) (and (number? exp) (= exp num)))

    \;

    (define (make-sum a1 a2)

    \ \ (cond ((=number? a2 0) a1)

    \ \ \ \ \ \ \ \ ((=number? a1 0) a2)

    \ \ \ \ \ \ \ \ ((and (number? a1) (number? a2)) (+ a1 a2))

    \ \ \ \ \ \ \ \ (else (list '+ a1 a2))))

    \;

    (define (make-product m1 m2)

    \ \ (cond ((or (=number? m1 0) (=number? m2 0)) 0)

    \ \ \ \ \ \ \ \ ((=number? m2 1) m1)

    \ \ \ \ \ \ \ \ ((=number? m1 1) m2)

    \ \ \ \ \ \ \ \ ((and (number? m1) (number? m2)) (* m1 m2))

    \ \ \ \ \ \ \ \ (else (list '* m1 m2))))
  </scm-code>

  Using the updated version of cunstructors, the system is better but still
  has problems.

  <\scm-code>
    (deriv '(+ x 3) 'x) ; 1

    (deriv '(* x y) 'x) ;\ 

    (deriv '(* (* x y) (+ x 3)) 'x) ; (+ (* x y) (* y (+ x 3)))
  </scm-code>

  <subsection|Sets>

  To define set we define the operations on them, union-set,
  intersection-set, element-of-set?, adjoin-set (adjoin set insert an element
  to a set). The actual implementation of set is free as long as it is
  consistent with the operations.\ 

  Set can be implemented using unordered list as follows.

  <\scm-code>
    (define (element-of-set? x set)

    \ \ (cond ((null? set) false)

    \ \ \ \ \ \ \ \ ((equal? (car set)) true)

    \ \ \ \ \ \ \ \ (else (element-of-set? x (cdr set)))))

    (define (adjoin-set x set)

    \ \ (if (element-of-set? x set)

    \ \ \ \ \ \ set

    \ \ \ \ \ \ (cons x set)))

    (define (intersection-set set1 set2)

    \ \ (cond ((or (null? set1) (null? set2)) '())

    \ \ \ \ \ \ \ \ ((element-of-set? (car set1) set2)\ 

    \ \ \ \ \ \ \ \ \ (cons (car set1) (intersection-set (cdr set1) set2))

    \ \ \ \ \ \ \ \ (else (intersection-set (cdr set1) set2))))
  </scm-code>

  See that using this implementation, element-of-set in worse case scenario,
  that is x is not in the set then the number of step is n, hence
  <math|\<Theta\><around*|(|n|)>> thus the same case applies for adjoin set
  and intersection set must check if set1 is in set2 for every element of set
  1 hence <math|\<Theta\><around*|(|n<rsup|2>|)>>, the same case also applies
  for union set.

  We can also implement set as ordered list by listing the elements in order.

  <\scm-code>
    (define (element-of-set? x set)

    \ \ (cond ((= x (car set)) true)

    \ \ \ \ \ \ \ \ ((\<gtr\> x (car set)) false)

    \ \ \ \ \ \ \ \ (else (element-of-set? x (cdr set)))))
  </scm-code>

  The number of steps of above prodecure is <math|n/2>, hence we still have
  <math|\<Theta\><around*|(|n|)>>. But the intersection procedure is better,
  that is <math|\<Theta\><around*|(|n|)>>.

  <\scm-code>
    (define (intersection-set set1 set2)

    \ \ (if (or (null? set1) (null? set2))

    \ \ \ \ \ \ '()

    \ \ \ \ \ \ (let ((x1 \ (car set1)) (x2 (car set2)))\ 

    \ \ \ \ \ \ \ \ (cond ((= x1 x2) (cons x1 (intersection-set (cdr set1)
    (cdr set2))))

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ ((\<less\> x1 x2) (intersection-set (cdr
    set1) set2))

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ ((\<gtr\> x1 x2) (intersection-set set1 (cdr
    set2))))))))

    \;
  </scm-code>

  We can also implement set as a binary tree with condition that the elements
  on the left subtree is less than the element in the node which is less than
  the elements on the right subtree. If the tree is balance to check if a
  number is in the tree we need to do as many check as the depth of the tree.
  threfore we have <math|\<Theta\><around*|(|log n|)>>.\ 

  We can use list of three elements for one node in the tree.

  \ 

  <\scm-code>
    (define (entry tree) (car tree))

    (define (left-branch tree) (cadr tree))

    (define (right-branch tree) (caddr tree))

    (define (make-tree entry left right)

    \ \ (list entry left right))
  </scm-code>

  \ Checking element is implemented as follows

  <\scm-code>
    (define (element-of-set? x set)

    \ \ (cond ((null? set) false)

    \ \ \ \ \ \ \ \ ((= x (entry set)) true)

    \ \ \ \ \ \ \ \ ((\<less\> x (entry set)) (element-of-set? x (left-branch
    set)))

    \ \ \ \ \ \ \ \ ((\<gtr\> x (entry set)) (element-of-set? x (right-branch
    set)))))
  </scm-code>

  Adjoin element also have logarithmic order of number of steps.

  <\scm-code>
    define (adjoin-set x set)

    \ (cond ((null? set) (make-tree x '() '()))

    \ \ \ \ \ \ \ ((= x (entry set)) set)

    \ \ \ \ \ \ \ ((\<less\> x (entry set))

    \ \ \ \ \ \ \ \ (make-tree (entry set)

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (adjoin-set x (left-branch set))

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (right-branch set)))

    \ \ \ \ \ \ \ ((\<gtr\> x (entry set))

    \ \ \ \ \ \ \ \ (make-tree (entry set) (left-branch set)

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (adjoin-set x (right-branch
    set))))))
  </scm-code>

  But the logarihtmic number of steps if the tree is balanced, if the tree is
  highly unbalnced, for example it has no left entry then the number of steps
  is linear. We can define procedure to balance a tree and<nbsp>perform that
  every few adjoin-set or defining new data structure.

  Analogous to set, information retrieval system uses similar procedure in
  its application. A database consists of many datas each has unique id, such
  as employee id or transaction id. The bulk operation on a database is
  finding and manipulating a data. And finding a data with certain id on a
  database is similar with element-of-set? predicate.

  <\scm-code>
    (define (lookup given-key set-of-records)

    \ \ (cond ((null? set-of-records) false)

    \ \ \ \ \ \ \ \ ((equal? given-key (key (car set-of-records)))

    \ \ \ \ \ \ \ \ \ (car set-of-records))

    \ \ \ \ \ \ \ \ (else (lookup given-key (cdr set-of-records)))))
  </scm-code>

  To design a database we can implement the abstraction method and just
  choose any obvious implementation of data, and since the operation on data
  doesn't depends on the implementation of the data structure, we can change
  it later into a better.more sophisticated one.

  <subsection|Huffman Encoding Trees>

  Code system with <math|n> different symbols encoded in binary need length
  <math|log<rsub|2>n> bit for every character. For example if we have 8
  symbols we need 3 bit for every characters. But that is for fixed-length
  code.

  It's more efficient to use variable-length code, in which the more frequent
  characters have the shorter code. But here we need to know where a
  character stops. One way to do this is to set that no code representation
  of a character is the prefix code of other character.

  To do that we use Huffman encoding method.

  <image|<tuple|<#89504E470D0A1A0A0000000D49484452000001960000010B0806000000FA00A00B0000000473424954080808087C0864880000000970485973000012740000127401DE661F780000200049444154789CEDDD5B5C1377FEFFF1773883C849A18080021E6AABC6958A56A11E2A56292D086BA976A1B6EB8AB68BAEAED5D66EFDF7E4DAADAC6EB52D1ED6D6A5EA422B1E6AB51E2A9E40AD0557543CA2FC0404150585200402DFFF050C0A029924936432F93C1F0F2E0849E60BCCCC6B0E4946C6186320841042046261EC0110420891160A0B218410415158082184088AC24208214450141642082182A2B0104208119495B10760FA94283D9186E40D0770F1523EDCFEFA035647783FF2F37A941EDC87C2C11330CCD592F7B33616652039ED146A5A6E7146EFB04844C83D34F8A731A84AB3B175FB6E1C3B53039F111310332914FE8E6AC6A1C845DAEAFD286AFED6C6ED298C7AE979C8DD6DF94DB6CDE35BD80F41ECACB1F055BB39730FB96929D85F54A7E5E301A0018A82A3D896BE0759794AF88E89C4D4681EBF7BCBF8FF07EFD75E43A8973580E6FFC7961A84BD1D8EBE360F90BB723262B63920541E8C0971AF2326E809CD1626D56DE4FEB403BF288391102B8763CB0F3AF8DD7DC330B3D5FD08112FDA63D151E3B5EFF156F41E3845CEC4C2A4AF306F78B7D67760C538B2EEEFD89075139ABC61A8F1F629AC78673FCADC7A2120C0076EEC14BE0889C282BD253C9F87A1F6F266FC69EC7C64D43D85895143D1256729C21337224FD1D0F943ABAE6237376D5F67541E5E829091739176ED01BFC13FFAF88080875FFEDD602FE3F504B8BA7B1D7695396BF9F80628F2362231FC0364B0FE088B180C9B83EF23E8B535C855F7BBB78CFF04CAF070628DB74F61C55717506521036087C0499F232DE95DCC08ADC69A973EC28F25F57C060640853B39295818350A8327CDC0FCDD5751D5D9DDD96D9C5CFB77ACCFBB8F469E5320C4E818D1413D2B494F60884D65858DEDDFA3F17A2A9BE208E63825955DEFE03EED3E73F632168804965E52DF7C8B82E52547773AAD561A2EB39428398B5C9FC7EAB8DB6A73D8EAC47FB15FAED774FED8927416FFE8B41B6FB1030B4730D737D2D90D3ED36EFB788D15B2F4F820169F5EA8DDC395B92C797C109B969ACF5A465073816DFBF6102BA9E7F10BB433FEFAEC652C307019CB6EFB2BD567B36581723667CF4D9E836B64350539ECE8A512763D3D81213E9D957476EF1BE9EC0DD717D917A7AB783E3F21C6477B2C42B0B58655BB5BD275283AFE0BCEBF9E8857327FC2E102A5F6D3604A54962BE0EAE9822E3CB6DAD9F51348DF3E0031630261DD32CE2148583907CFFBD969366D993B464E9E04BF1F0EE1D41D1E5BFC46D6907F0C9BCE8E47DC44FF8787A7EC9E44D4B451F06AFF1FA523052AAAEBD4DF0D0020835DAF2108E9EBFEF0FFD221250A0E6CC3F651B188184807C188E9A0732C3A69406DB5028EF636EDFF211BAFE1976F0A31F9A3AFF09CDB0C7CB2EF0A5E9D3980C70A8593815573DEC00E7B0B34DEBD805F2D7F8F2DAB47C38DCFC8CA6FE15CE0607CE0CBF3BC48A764B0F50E805CB10B170B6B10E1CE672577063B9297E39A13B7EDD20B6133A32177E4BB2D5389AC5573F1FA8E2E4DDF5AFC0ED397272254ED79AA06DC2FCA479E83279C1D74D96E6A3DFEC6E24328C7E8C7EF66D1056E81F63A4CA7137517F0D3EAB388FAEB12F8D32620312114166DD516E0E88F3F21FDDB1ABCB76438BAB77397C6FC63482B198D8F06F96310C2503A6F2FCEC43F8D2007BE5BCDFE089E1089612E32D457F48432E9080E9F9F8AE7BC7C0CFF8FEBE2024F2F434ED016BEC12F207258F3392B0B0FF8D8F359BB3228AB15A8F0726C3E1FA34451C677483B750F800B86C4C661AC20B16D66D11B2FBD3F05A91F2E47B22A06135E1E097F3B21F68A181E9CFA19EB0AC62369740FE8633F8B107DA1B0684B558992FC2B28801F8677B36B67C1AF457EE61EECAB2983F3AC8BB0AF2944CD7160CF993F2268B80BCF89F863D8C428447B590188C2C4A7FF8909E149187A3109111E3CFE750FCA71FF4123E0A4FBE62EBB5F86EBA53D30C08DEFFED62044CE9AD73C766DD8C26FD8044447FB6AF8384B38B97BC2B7B81C952A06585AC2BE9B1F027ADDC38ED99B8031AFF20C4BEBF1AB7280B53FB5773F19ECBBF5400FC5495CCA2FC508150304C940397276EFC6DDB88FF0AC1BFF5713122206B483AD2D473962177D86A5AF1460DEFA93A86CFBF3FA7C64A4FE1F1216FD3F2C9C3D1BB3177E82250B54F86ADBA9C7EFCB8B25BAF6E809BF8A4BB856AAFE5C8D559F2188C161ECCBBEA3D1ABD1DAA74259EE71EC1B310C837AD8E8FC6CFA258343BF67F0E2FD633879B11A8015BACBC7233A6A0C063AE8637AB77068D52A54242661C5A2C91A1CEA53A332173FFDBB06712F0C829330CF4888C15058746203570F4F94DEBC87EA56B733D49D3F88EFCE8DC32BBF7F0E414141080A1A8949535F81FFBA1F71E4B64AE32931C515EC5AF71FEC0B0BC7A83E3CD6904EC1885FEC8BB59FAE4546A91240031457B760EEA4241CAFD0E404BC1265B9DF63E9C73998B63806836CC47F5046E63E1CF1F381CF96A6E0B732250006D5DD9BB8C1F7FCBA261ACA70ED64259CBBD80A78B8AA01E5C7F7E03B8CC70BCFF039A34688B850587452878ADB37DBB9BD1A170EEF4541DC383CD372184A069BA7C620EE9923D89AC9F7BD286B10E36D0D994C068BAE4330EFF2686C5EFD26E4BCCED138E2E9E949D832EE3412BCED209359A1EBE0F5B08D8BC040173E8756B869DBC123261D4E8BD6E1E3F1DE1AAC3C1F8EBDE5AB771272346FAAE664DD317C7612BEEE7700533CEC209359C0DA733EAE4C7D0BE1FD043ED16EE9069F8102EF53B09B38B6FD67A0D5FC4388E990314617FAD25E3D8AD212E0F74D082EFDFC26FA8A721DC0A0BA938FDCEB404F796F74D7CBCB6DC5CA00BFBB321B49C3DE40FEA77BDB7CE20221E68BC2A22356BA136F8F5A84C2F05730DAC719BE61F18895F33D394F4C13F74AB30AD4E6FF8CE597276257FA3C3CABC147F6102265F4AA301DC9BC22B032AB27320E66E362A1C2D8C321066507EFB1EFE1E027CF414E5121A405EDB1104208119428CF0A104208315D141642082182A2B010420811148585104288A0282C841042044561210677F9F265D4D4D4A8BF2321C424515888C114171723383818FDFAF583838303B2B2B28C3D2442881E505888C1A4A4A4E0B7DF7E6BF93E242484F65C0891200A0B3198EDDBB73F765B51519111464208D1270A0B319890909056DFFBF9F9A16FDFBE461A0D21445F282CC420B2B2B2B062C50ACC9D3B1743870EC5CC9933E1EAEA8A2FBFFCD2D8432384088C3E8492E85D56561642424290999989912347B6DC5E5C5C8CE8E86800C09FFFFC67630D8F1022300A0BD1AB8EA202003E3E3ED8BA752BC5851089A1B010BDE92C2A1C8A0B21D24361217AC1272A1C8A0B21D242612182D3242A1C8A0B21D241612182D2262A1C8A0B21D240612182D1252A1C8A0B21A68FC24204214454381417424C1B8585E84CC8A870282E84982E0A0BD1893EA2C2A1B810629A282C446BFA8C0A87E24288E9A1B010AD18222A1CC3C54589D2136948DE7000172FE5C3EDAF3F607584371A8B32909C760A0F3FE0DF19BDC3221121F7D060016250956663EBF6DD3876A6063E232620665228FC1D2DD53F54918BB4D5FBC17D0EB48DDB5318F5D2F390BBDBF29B749BC7B7B01F82D85963E1ABF61303EF21372D05FB8BEAB47C7C03140547B12D7D0FB2F294F01D1389A9D19AFCEEFF83F76BAF21D4CB1A009AFE1F5B6A10F67638FADA3C40EECAC988D9E68050793026C4BD8E98A027345CB1295196B313FFF9FE308A9D8622726A1446FB3B41A6D1739047D18750128D19322A1C2E2E2929297AFBE0CAC66BDFE3ADE83D708A9C8985495F61DEF06E4DB7DF3E8515EFEC47995B2F0404F8C08D9DC217215158B0B7048CD73333D45EDE8C3F8D9D8F8CBAA730316A28BAE42C4578E246E4291AD43FBCEA2A7673D3F77546E5E1250819391769D71EF0FBC51E7D7C40C0C32FFF6EB0E7B5F6ACC2D5DDEBB0ABCC598BC7374091B71189E11F2083F54758C460D81C7C1F41AFAD412EEFDFFD04CA1E59CD37DE3E85155F5D4095850C801D02277D8EB4A4773123B41A6B5EFA083F96D4F3F9A55AC657717C2562FFB00DCAA74330047B91F0C2626C2BACD5E039C86318211AC8CCCC6400586666A651A65F5454C4860E1DCA56AD5A25F033D7B392F40486D85456D8D8E627D9CB582012587A497DF32D0A96971CDDEE7DDBD57099A544C959E4FA3C56C7DD569BC35627FE8BFD72BD46FDE34BD259FCA3D36FBCC50E2C1CC15CDF486737F84CBFEDE33556C8D2E383587C7AA1E60F55E6B2E4F1416C5A6A3E6B997ACD05B6EDDB43ACA49EC7E0DB197B7DF6321618B88C65B7FD75EAB3D9B240399BB3E726FFF1355E67E9D3E42C2CF96CD3FFA6F1163BB030840DF8F418ABE6FF2CA40DDA6321BC19634FA52DBDEFB9D85AC34ADD563853A2B25C01574F1774E1B1C5CFAE9F40FAF60188191308EB96E90C41C2CA3978DECF4EF331CADC3172F224F8FD7008A7EEF0D8EA37A286FC63D874763CE226FA3F3C3C65F724A2A68D8297DA3FB43614A8A8AE537FB7960196E1DAD1AE1835D8B7E97F237343FFE0A771EEC8051437EA61786682CEB1105EC410158E7ECEB934A0B65A01477B9B0E168A0CAC9AF30676D85BA0F1EE05FC6AF97B6C593D1A6E7C9EB9FC16CE050EC607BE3CCF89A82583AD7700E48A5DB85858830877471E8F39831DC9CB71CD89DB96EC85B099D1903BF2DDB6AC44D6AAB9787D4797A66F2D7E87E9CB1311EADAD9799206DC2FCA479E83279C1D74D9866D3DF6C6E24328C7E8C7EF66D1056E81F69A3DB5A51B7C83EF61FDE9222C18EE0C6BD4A1EA5E2570B51C558DA093055AA2B010B5C414158EA071A92DC0D11F7F42FAB735786FC970746FF74EFE089E1089612E32D457F48432E9080E9F9F8AE7BC7C8CB310757181A7972127680BDFE0171039ACE9BC132C3CE063AF6EADCBA0AC56A0C2CBB1F95C8C124519DF21EDD43D002E18121B87B182C51680456FBCF4FE14A47EB81CC9AA184C787924FCEDD4EC15C9FC303E311E6B5E9C8DD9B59331B0FC0436ACF82FF0C410E1C66586282CA453628C0A47B0B8A82A51927F0505F0C3F06E761DBC1AC81FC3264621DACB0A4014263EFD4F4C084FC2D08B4988F0E0B1183D28C7FD078D8093309BC0EC7E19AE97F6C000376BF57706000C42E4AC79CDE3D7862DFC864D4074B4AF068FB18493BB277C8BCB51A96280A525ECBBF921A0D73DEC98BD0918F32ACFB0B41EBB2A0758FB537BF793C1BE5B0FF4509CC4A5FC528C503140ED6BBB2CE1FAEC6CA41DEC87ADFB2F43D92B169FFDCB12CF7FEF86AEB4B7A235FAD3910E89392A1C41CEB938CA11BBE8332C7DA500F3D69F44A5DA0758A26B8F9EF0ABB8846BA54AB5F7B6EA330431388C7DD97778BE8A4C1D15CA728F63DF886118D4C3469067D40F191CFA3D8317EF1FC3C98BD500ACD05D3E1ED1516330D0411FD3BB8543AB56A12231092B164DD6E0309F2DDCE52F2361FE7CCC7E3304CE15C5F01DD6073D68EDA835FAD3917699425438C29CD0B781AB87274A6FDE43B59A7B32C515EC5AF71FEC0B0BC7A83E3CD6904EC1885FEC8BB59FAE4546A91240031457B760EEA4241CAFD0F4E4BB1265B9DF63E9C73998B63806836CC4FD6E0B99FB70C4CF073E5B9A82DFCA94001854776FE28606E7D7796B28C3B5939570EE62ABC17B501854A5393874FE3E181AA0C8DB862FD777C5FC1839BAE86188E682C2421E634A51E1E81E973A54DCBED9C9CFD720C6DB1A32990C165D8760DEE5D1D8BCFA4DC81DF8ACC21CF1F4F4246C19771A09DE7690C9ACD075F07AD8C64560A00B8F3709B69ABE1D3C62D2E1B4681D3E1EEFADC10AF4E1F85BBE7A272147C5FB09B423EB8EE1B393F075BF0398E2610799CC02D69EF37165EA5B08EFA7E18976752CDDE033D049C307D5A0F0D8262C18E6020B9915BA0E4FC5139FFF0333E49A3E0F79948C3126CCDE399104538CCAA38A8B8B111D1D8DF8F8780DCFB9D4A3282D017EDF84E0D2CF6FA2AF5E36B9185477F2917B1DE829EF8DEE7A79B9AD5819E07757662369D81BC8FF742F5647786B363A4511CE5EBA0FD77EFDE1CBE7130148A7282CA485A94785A36D5C58E94EBC3D6A110AC35FC1681F67F886C52356EEA2C79112DD71AF34AB406DFECF587E792276A5CFC3B39DBE0C9AE81BBD2A8C00904E5400ED5F2D26F38AC0CAAC9EC838988D8B850A7D0E9108CE0EDE63DFC3C14F9E839CA26274B4C74224159547697F588C10A20BDA633173528D0A401FB94F88B15058CC9894A3C2A1B8106278141633650E51E1505C08312C0A8B1932A7A870282E84180E85C5CC986354381417420C83C26246CC392A1C8A0B21FA471FE96226282A0F7171F9F7BFFF0DB95C0E994C86E0E060646565197B68844802BD8FC50C5054DAB770E1427CFEF9E7AD6EBB7BF72EDCDCF85CBE8B10D211DA63310357AF5EA5A8B4A3BD6DAA3B77EE18612484480B9D633103F1F1F1C61E82283939B5FE04DB9E3D7BC2D757930B591142DA437B2CC42C15171763FBF6ED983163060060FCF8F1707171C1FAF5EB8D3C32424C1F9D63216687FB0CB1152B56B43A3C489F2D468830E85018312B1D4505A097221322140A0B311B9D45854371214477748E45F4EA517A70177ED5F8DAE840D3F5D17760D5BBB3F0C65F96E2BB1325D0F79568C58A4F5438BA5FE69810F34661113B568C23EBFE8E0D5937A1D9C9308607B96BF1DAC40D2893BF84D8E18DD8153F0D9F1C2DD3F0794C9F2651E1505C08D11E8545E458D149ECD8790C1B3767A248A3223CC095C3BB712E2E11F3A78463C2AB7FC65F5EAFC1A65F0BA1CDBE8FA9D2262A1C8A0B21DAA1B0885A1D8A8EFF82F3AF27E295CC9F70B840A9C1636DE0EEE38FDA83C7905BD100D4DFC0F9DF94782EC01DE672E1565DA2C2A1B810A2390A8B98355EC32FDF1462F21F6663DAB41BF86EDF15D4F37EB035BC5F5E841F261E43E40BF1487CF3CF48952FC192977D21D3E390C54288A870282E846886C222628DF9C79056321ACF0FF2475078184A53F6E2CC03BEC7C318546597F0EBE91A8C9F30181E164A641FFD15E7CBEAF43A663110322A1C8A0B21FCD1CB8D45AB16F9997BB0AFA60CCEB32EC2BEA61035C7813D67FE88A0E12EEA1FCE8AF0E3FBEFE1D771C9D8F4E7203836BC8AE0BFC563F2FB4FE1DCFA68784B74B7451F51E1D04B9109E187C22256F5F9C848FD3F242CFA1C7F927705508370FFF73077DB29240E1F0B27758FAFCAC7AF7BBA20F4ED7E709401B0F2C1E8A83038FFE11A4A1B006F09FEE7F519150EC58510F5E850982831D49D3F88EFCE8DC32BBF7F0E414141080A1A8949535F81FFBA1F71E4368F77A338FA62C0B01BF8FE874C94AA18A02AC6A1EDFB71FFB9007849F0ECBD21A2C2A1C36284748EC2224AD5B870782F0AE2C6E11927EE5F2483CD536310F7CC116CCD2C51FF5E148B004C5AF20946FE3A03DED61690593F85B72F4CC496252F4AEE309821A3C2A1B810D231FA104AC953E2CEE50BB80E1FC8FB7697DCB14F6344A5BDE9D3075712F2108585982C6347A5ED38282E843491DA062C311362890A4027F409698BC2424C8E98A2C2A1B810F21085859814314685437121A4098585980C31478543712184C2424C84294485437121E68EC24244CF94A2C2A1B81073466121A2668A51E1505C88B9A2B010D132E5A870282EC41C5158882849212A1C8A0B31371416223A528A0A87E242CC098585888A14A3C2A1B81073416121A221E5A870282EC41C50588828984354381417227514166274E614150EC585481985851895394685437121524561214663CE51E1505C88145158885150541EA2B810A9A1B01083A3A83C8EE242A484C2420C8AA2D2318A0B910A0A0B31188A8A7A14172205141662101415FE282EC4D4515888DE515434477121A68CC242F48AA2A23D8A0B31551416A2371415DD515C8829A2B010BDA0A80887E2424C0D8585088EA2223C8A0B3125141622288A8AFE505C88A9A0B010C15054F48FE2424C0185850882A26238141722761416A2338A8AE1515C88985158884E282AC6437121624561215AA3A8181FC585881185856885A2221E868B8B12A527D290BCE1002E5ECA87DB5F7FC0EA086F40918BB4D5FB51D4F6EEF643103B6B2C7C2DD43DEF3DE4A6A5607F519D968F078006280A8E625BFA1E64E529E13B261253A343E1EF68A9FEA18A5CA4ADFE1FBC5F7B0DA15ED60080C6A20C246FA941D8DBE1E86BF300B92B2723669B0342E5C19810F73A62829ED072E5C9507BF967ACDB6F8728DEBF9BE991E8AF45F489A2223E5C5C525252F0E5975FEA651A8DD7BEC75BD17BE01439130B93BEC2BCE1DD9A7E507515BBDFD98F32B75E08080878F8E5DF0DF6323ECF5C85ABBBD7615799B3968F6F80226F2312C33F4006EB8FB088C1B039F83E825E5B835C45038FC95FC5EE774EA00C0F27D678FB14567C75015516320076089CF439D292DEC58CD06AAC79E923FC5852CF67608FAB3D8B0DEFBC8DD92B4EE176A3764F610A688F856884A2225EFADD7351E1D6E92C6C7F2E122B273C0BDFC756F8FE1836310AD15EDAAE526CE1376C02A2A37D357F685D1E36CE5B057C988675B1814D2BB51787A14FEA2D78D809B1ED6C0947DF0108F2052097217CE11F71E46C39A2BD9FD0F07914C8DBF00F2CCFE3113B13477B2C84378A8AF8E97DCFC5D61A56BCF6220CA721FF18369D1D8FB889FE0FB794ED9E44D4B451F0D2CB6015A8A8AE537FB756186AF336E3FD6D722C7D779C1EC6242EB4C74278A1A8980EFDECB934A0B65A01477B9B0E561A67B0237939AE3971DBAABD1036331A7247BEDBAE95C85A3517AFEFE8D2F4ADC5EF307D7922425DD59D2369C0FDA27CE43978C2D94197EDE4D6E36F2C3E84728C7EFC6E165DE01668AFF9D3D79EC586F73310B2642546142ED6619CA681C242D4A2A8981E41E3525B80A33FFE84F46F6BF0DE92E1E82ED0185BB3856FF00B881CD67CDEC6C2033EF67C42C1A0AC56A0C2CBB1F97C8C124519DF21EDD43D002E18121B87B1BEB6C20DD3A2375E7A7F0A523F5C8E64550C26BC3C12FE76EAF68A9A0E81A5C8676157901B6A0B851B8E58515848A7282AA64BB0B8A82A51927F0505F0C3F06E76687F353A0891B3E619E11C8B259CDC3DE15B5C8E4A15032C2D61DFCD0F01BDEE61C7EC4DC098577986A5F5F85539C0DA9FDABB9F0CF6DD7AA087E2242EE59762848A011DFC45388DD7B6E16FEFE4C1E7AD6358FFCF5F5179F60C505E8CEF56F482D52C4DF6EA4C0785857488A262FA04898BA31CB18B3EC340B7A918B7FE24C2FF31164E028F537B3238F47B062FDE5F8D9317AB315CEE88EEF2F1887EBA1BAEBDBB4B0FD3BB8543AB56A1223115DFC4F5569394E6113A0DC29FFEB318B5008046DC2BEB0AD875834F80279CC476C24A201416D22E8A8A7408B3E76203570F4F941EBF876A4044610164EEC3113F7F356296A6E0D9557FC450771BA8EEDEC48D3AA087D0136B28C3B59395701E6FCB2B2A0020EB2E4778B4BCF93B154AF10B90DE1B632243E02FD135B0F4F6C188CE282AD2A3FBABC5EA5071FB66273F5F83186F6BC864B2875FBD9390A3D276C41A9075C7F0D949F8BADF014CF1B0834C66016BCFF9B832F52D84F7D3E2447B672CDDE033504C59152719638C197B10443C282AD2C6FD7FE3E3E335DC73A947515A02FCBE09C1A59FDF445F516E9232A8EEE423F73AD053DE1BDDF5719849998DA4616F20FFD3BD4D9F3A40DA4561212D282AE641DBB8B0D29D787BD4221486BF82D13ECEF00D8B47ACDC458F23150BEE956615A8CDFF19CB2F4FC4AEF4797856ED4BA1CD97448FF0114D5154CC87B6E75C645E115899D5131907B371B150A1CF218A941DBCC7BE87839F3C073945A553B4C742282A664AFBC36284748EF658CC1C45C57CD147EE137DA1B098318A0AA1B8107DA0B098298A0AE1505C88D0282C6688A242DAA2B810215158CC0C45857484E24284426131231415A20EC585084194EF9F25C2A3A810BEB8B86CD8B00161616190C964080E0E46565696B187464C04BD8FC50C505488363EFDF4537CF0C107AD6EBB7BF72EDCDCDC8C3422622A688F45E2282A445B9595958FDD76E7CE1D238C84981A0A8B845154882E9C9C1EFF14DFEEDDF573FD48222D141689A2A8105D14171763FBF6ED18376E1C00402E97A37FFFFED8BC79B39147464C01BD2A4C82282A4417DCFC336DDAB456AF0AE36E07E8D562A473141689A1A8105D74F6C194F45264C217854542282A44177C3EED98E242F8A0B048044585E842938FD0A7B81075282C12405121BAD0E6BA2C1417D2190A8B89A3A8105DE872B12F8A0BE90885C5845154882E84B88224C585B487C262A2282A4417425E9698E242DAA2B098208A0AD1853EAE754F71218FA2B098188A0AD1853EA2C2A1B8100E85C5845054882EF419150EC58500141693415121BA30445438141722405894283D9186E40D0770F1523EDCFEFA03564778A3B12803C969A750D3723F67F40E8B4484DC43838932A84AB3B175FB6E1C3B53039F111310332914FE8E969D3F4C918BB4D5FB51D4FCAD8DDB5318F5D2F390BBDB36DF528DDC959311B3CD01A1F2604C887B1D31414F6830AE462872B762F5FEFF6B7DB36F1866C6CAE1C8FB79F8A1A874A6FDF9AFED3CD0C27E0862678D85AFDA8F5FBD87DCB414EC2FAAEBE0F1BACE434A94E5EE45FAD6C3B8843E18151DADE1B2C19F21A3C2A1B898379D3FDDB8F1DAF7782B7A0F9C22676261D2579837BC5BD3EDB74F61C53BFB51E6D60B01013E7063A7F045481416EC2D01BF2B8B31D45EDE8C3F8D9D8F8CBAA730316A28BAE42C4578E246E4291A3A7F68D555ECE6A6EDEB8CCAC34B1032722ED2AE3D68BE831D02277D8EB4A4773123B41A6B5EFA083F96D46BF25BA3EAEA2F7827F52C1EBF6285B0282A9DEB68FE6B350F04043CFCF2EF067B199F67AEC2D5DDEBB0ABCCB983C7EB320FD5A270EB423CF7A71DA80A0CC610B773F862CC9BF8FCF81D9ECB067FC6880A878B4B4A4A0ABEFCF24B834E9B1819D3493D2B494F60884D65858D6D7E92BD8C052281A597D437DFA26079C9D1EDDEB75D0D97594A949C45AECF6375DC6DB5396C75E2BFD82FD76B3A7F6C493A8B7F74DA8DB7D881852398EB1BE9EC46DB69D767B36581723667CF4D1E836A79102B494F608E093BD96D0D1EA5A9A2A2223674E850969999A9C7A998B28EE7BFC7E6018D15B2F4F820169F5EC863189ACE432A5675E9083B5A50DDFC7DD3B221F4FCC4CD3FAB56AD12F0594D771CC47084B91E8BAD35ACD46D0532252ACB1570F57441171E5B8CECFA09A46F1F80983181B06E99CE1024AC9C83E7FDEC341B9FCC1D23274F82DF0F8770EA4E7B7B3B0A5454D7B5737B476A5172ED129E08B487E24C0E72CE144121F0A626EDA96880CFFCA7779ACC439670EC1B8A905E0ECDDFDBA0ABAB3314F7AA512BD07C64CC3D95B668CFC5FCE87848B701B5D50A38DADB74F044195835E70DECB0B740E3DD0BF8D5A6269CDE0000180A49444154F2F7D8B27A34F85C31BBA1FC16CE050EC607BEB6EAEFAC960CB6DE01902B76E162610D22DC1F390B62D1056E81F65A3DEBD50571987C38049E373371D8E92D6CDFF40E9EF7D27DBC1415BED4CD7F67B0237939AE3971DB4FBD1036331A7247BEDB5395C85A3517AFEFE8D2F4ADC5EF307D7922425DDB9CE3D3611E0200A63883ED9BCF60EAD4BFA18700811453543874CEC5BC681F96DA021CFDF127A47F5B83F7960C47FB172CF547F084480C7391A1BEA22794494770F8FC543CE7E563F897A3757181A7573BB75BF4C64BEF4F41EA87CB91AC8AC1849747C2DF4EDDD26D07BF916F624DC618BC39C60756AA22ECFD5B3C26BFFF14CEAD8F86B70E2B078A0A4FBCE63F5DD9C237F805440E6B3E6F63E1011FFB76A2A4D53CD48429CEE0DBC4D9D836782936C5F8EB7CD2538C51E1505CCC87F6EB7755254AF2AFA0007E18DECD0EED2F46FE1836310AD15E5600A230F1E97F62427812865E4C4284078F493F28C7FD078D8093EE47ECD8FD325C2FED81016ED66D7E22837DB71EE8A138894BF9A518A1624007BFCD4356707F360E335ABEF5C1E8A830384767E3625514BCB51C2F454503BCE6BF41889C35AF79FED3862DFC864D4074B4AF9AFB69330F715199858D7E1F62D307E3E0A5E3F13C3147854371310FDAAFB11DE5885DF41996BE528079EB4FF278759425BAF6E809BF8A4BB856AA547B6FAB3E431083C3D8972DC42B655428CB3D8E7D238661500F9B363FBB8543AB56A12231092B164DD6E030499B29D4D7A1C1CA06D696DAAD1C282A1AD278FED3272DE621568A834BFE82652EEF61A399448543E75CA44FC75D011BB87A78A2F4E63D54ABB927535CC1AE75FFC1BEB0708CEAE3A0E6DE009C8211BFD8176B3F5D8B8C5225800628AE6EC1DC4949385EA1E6E5C6AD285196FB3D967E9C83698B6330C8A6CD02DC50866B272BE1DCC596C73626F7CBDCC1F1BFFF01B3365D6C3A69AF2AC2C1ADFBA078F119F473D07C054151D116FFF94FAF349E8754B8BDEF0BCCF97522BE593C11DE6614150EC545DA740C4B1D2A6EDFECE4E76B10E36D0D994C068BAE4330EFF2686C5EFD26E4BC56BE8E787A7A12B68C3B8D046F3BC86456E83A783D6CE32230D045CD1B245B4DDB0E1E31E9705AB40E1F8FF77E7CC1B77483CF40271ECFF708992B06464E04BE188BAE1632C8AC9FC65FAE4561CBE2307868B88EA0A8E882FFFCD7F2D53B09392A8187A1F13C548ACCCD5B70EEE0028C70B3D2696CA618150EC545C2747BB5721D2B4C7D8361FC7A76A94198D73F3FAE91D5975D66D9D99759593D9F37C068A8F637B64C3E8025ECBCA1C5D0AA58616E36CBBE54C6B479B704BD4F45578698FF78D0651ED28154DE1F2295DF833C24638CE9740A8395EEC4DBA316A130FC158CF671866F583C62E52E42754F4F9428CAF80E69A72A509BFF33965F9E885DE9F3F06CDB9791EA11EDA908C378F39F71E72153DE53698FD47E1F73A7F3AB7E655E115899D5131907B371B15021C4980CC80EDE63DFC3C14F9E839CA262928C3FFF197E1E92E24A985E2D262D3AEFB110CD5054882EA418954749FDF73317F4B1F906445121BA3087952EEDB9480385C540282A4417E610150EC5C5F451580C80A24274614E51E1505C4C1B8545CF282A4417E618150EC5C5745158F488A2427461CE51E1505C4C9330D76321009A56040B162C804C26C3D4A953111111415121BCD5D4D4E0EF7FFF3B6432195E78E1054C9830C1ACA3C2A177E89B1E7AB9B180162C588065CB96B57C1F1A1A8A23478E187144C4947CF9E597484C4C6C75DBDDBB77E1E6C6E70A46D2477B70A683F65804F4685400E0E8D1A3461A0931458585858FDD76E7CE1D238C449C68CFC574505804347EFCF856DFF7EFDFDF482321A6C8C9E9F10FB2ECDE5D3F973033551417D3406111487171316EDDBA85D0D050004D51B970E102B2B2B28C3C32620A8A8B8BB17DFB768C1B370E002097CB5BE621D21AC5C50418F31330A5A2A34F29CECCCC6400E8D38B49A73AFA745FFAF4EBCED1A7228B17854547EA167E8A0BE98CBA9523C5A573141771A2B0E880EF424F7121EDE1BB52A4B8748EE2223E14162D69BAB0535CC8A3345D19525C3A477111170A8B16B45DC8292E8431ED57821497CE515CC483C2A2215D176E8A8B79D375E54771E91CC5451C282C1A106AA1A6B89827A1567A1497CE515C8C8FC2C293D00B33C5C5BC08BDB2A3B8748EE2625C14161EF4B510535CCC83BE56721497CE515C8C87C2A286BE175E8A8BB4E97BE54671E91CC5C538282C9D30D4424B71912643ADD4282E9DA3B8181E85A503865E58292ED262E89519C5A5731417C3A2EBB1B4C358577ECCCACA42484808323333F5345D254A4FA42179C3015CBC940FB7BFFE80D511DECD3F6350956663EBF6DD3876A6063E232620665228FC1D2DD53FAD221769ABF7A3A8F95B1BB7A730EAA5E72177B76DBEA51AB92B2723669B0342E5C19810F73A62829ED0F0F2A54A94E5EE45FAD6C3B8843E18151D8D08B987282F816AACEB86D0154B3B6798FF4B47CB5803140547B12D7D0FB2F294F01D1389A9D19A2C5FFF83F76BAF21D4CB1A00D0589481E42D35087B3B1C7D6D1E886FF93276D9C4C6D85B7EFADC7369B89AC2A2BCA6B065BB8FB1ECECFFB14B65B5CD3F6964359736B2694F3EC712FEF53DDBB3670BFB7ACE78F6E4B40DEC5C954AFD1397A4B3788C670BD6FFC0D253D7B24FE24730C73EB358EAD5EAE63BA85855E159969DFD1B3BB665311BE3358BA5DFA8D360E435EC7AFA1CF6E4D037D9E7FF496529FF7A9B8D767D912D3956C61A35FC1BE89BB1B78C8D3DFF8A9DBEFF3FED2F632A56756E039BF664089BF6F906B665CB06F6F9B411CCF5E5AFD869DECB57024B2FA96FB9A93E7B190B0C5CC6B2EB1913E3F24561798458164AFDC4A59E95A42730C4A6B2C2B6734BC3659612256791EBF358CBEC589BC35627FE8BFD72BD46FD53B79DF11B6FB1030B4730D737D2D98DB6D3AACF66CB02E56CCE9E9B1A8C5DC5AA2E1D61470BB85029585E7234734CD8C96E6BF02CFA66ECA8B41D87B1E763B1D2DFFFA983654C99CB92C707B169A9F9AC250D3517D8B66F0FB1927A1EAB6EB561797408E258BEE87A2CCDC4741861E4C891C8CCCC44484888F0D773B1B58695ACF54DECFA09A46F1F80983181B06EB9DF1024AC9C83E7FDEC349F86CC1D23274F82DF0F8770EA4E433B7750A0A2BA4E8327B48463DF5084F47268FEDE065D5D9DA1B8578D5A911CC815D36573B9EB95CC9D3B97AE07D40EBD5FCFA5CD32D6907F0C9BCE8E47DC44FF878796EC9E44D4B451F06ABB300AC2F8CB178505E28A0A47F8B834A0B65A01477B9BC78E9B3694DFC2B9C0C178CAD7B6DD476A4E065BEF00C8156771B1B0A6F58F2CBAC02DD05EA767678A33D8BEF90CA64E1A8A1EFA582E3524A6A870282E9DD34F5CDA5BC61A70BF281F790E6E7076D065757B063B92972329290949494958FEDD2194B77737912C5F661F1631468523585C6A0B70F4FBB5F8E2DB1ABCF7FA7018E462B75D5CE0E9D5CEED16BDF1D2FB5350FAE572247F9F89020D378998E20CBE4D9C8D6D83972229C6DFE833B018A3C2A1B8744ED0B874B88C3128AB15A8F07284BD0C009428CAF8777320FE8D8C22A56ED36D4B24CB97B1974BA31273543882C445558992FC2B28801F02BAD9A1DD8D9007E5B8FFA05197A1B6C2EE97E17A690F3CE166DDE62732D877EB811E8A025CCA2F45A58AFF8CDF34D3CFC246BF0FB1E983717A3A8CC09F98A3C2A1B8744EB0B874B88C59C2C9DD13BEC5E5CDF3BA25ECBBF921A0177076F9269CBA5DCF73028310396B1EE6CF9F8FF9F3E7635EDC68B8B57B3F912C5F5A9E9B3179A6768253F713FAD52C2F3992792D38C0EEB7FDD1FD036C81D708B6F0C02DED5E05F2D8C9C57A766BE71CE63A62253BAD6CFB8C37D8CE842016997245B3693596B003EF8E614FFE6527BBC1E784A79E89E5443D5FA636BF1B9A30FFCFF697B1C65B3BD94CD717D917A7AB1EDE589FCD96058E66CBB2AB1E7B96C76872F25E24CB9759EEB198C29E4A5BBAEFB9D8C0D5C313A537EFA1BAED8F9C8211BFD8176B3F5D8B8C5225800628AE6EC1DC4949385ED1DEC9F7CE285196FB3D967E9C83698B6330C8A6CD564F4319AE9DAC847317DBF6F79CDAA5C2ED7D5F60CEAF13F1CDE289F0A63D158DD19E4BE784D973697F1993B90F47FC7CE0B3A529F8AD4C09804175F7266E68727E9D2F912C5F661716538C0A47B7B8D4A1E2F6CD0E7EE688A7A72761CBB8D348F0B6834C6685AE83D7C3362E02035D78BC810B00B00631DED690C9ECE011930EA745EBF0F178EFC7676E4B37F80C74D270ECA5C8DCBC05E70E2EC008372BC864B2A6AFDE49C85169F8543A32C5A870282E9DD33D2E1D2C63B2EE183E3B095FF73B80291E7690C92C60ED391F57A6BE85F07EBA9D687F8C58962F9DF7794C88540E07687758AC8E15A6BEC1307E3DBBD4D0D17D1A597DD965969D7D9995E9EB7053ED6F6C997C004BD879433FCFAF47A676F8AB2352590EF445FBFFB3BA65CC7C962FB3098BD416266DE2D258F2239BD567007B71CEC76CD9B22F58EAE90A3D8EF051B5ACF0C03AB66CD9E7EC938431CC75CCE7EC58398F771C8B8854A2C291DAF220346DFFDFC659C6C4B77C99C5A130533EFCD5116D0E8BC9BC22B0326B13668FE8011B3D8FAF7D76F01EFB1E0EA6CDC6B3AE7C0FB1199F291FFEEA081D16EB9CB687C58CBB8C8968F9326AD60C40EA5B66F4A9C8FA25B53D95B6A4BE7CE84AEAFF7F7D917458CC65A1A1B8E887B9AC54CC6539D196B9CC0742926C58CC6D61A1B808CBDC5626E6B6BC68CADCE6075D49322CE6BA90505C8461AE2B11735D6EF832D7F9421B920B8BB92F1C1417DD98FBCAC3DC971F75CC7DFEE04B5261A185A209C5453BB4D26842CB51E7683E514F3261A185A1352E2E3366CC6000D8F4E9D359515191B187255AB4B2688D96A7CE717F9FB8B8383674E850161919497FAB4748222CB410B48F8B0AF715191969EC21891245A57DB45C756ED3A64DAD962F00B4F1D64C126F9094DA9B1F85B276EDDA56DFEFD8B1C3482311B7952B574AEACD8F4279F44D94C5C5C5C61E8EE89C3E7DFAB1DB4E9E3C698491888F8C3126928BBB12A14D9D3A15FFFDEF7F5BBEEFDFBF3FCE9F3F6FC41111221DA9A9A99832654AABDB8A8A8AE0E3E363A411898724F658C8E38A8B8B71FEFC7984868602688ACA850B17E8E33B0811404D4D0DF6EEDD8B71E3C6B5DCE6EFEF8FEDDBB71B7154E2D1F6F2E74402B8CFB6FAEAABAF5A1D1ECCCACA42484808323333E9B021215AAAA9A9C1ECD9B3111414846FBFFDB6E5766EB90360F68755698F45623AFBC04D412E734C8819E3A22297CB1F8B8760973996000A8B84F0F914678A0B21DAE92C2A1C8A4B13A39DBC6F2CCA4072DA29D4B4DCE28CDE619188907BF03F3EC72A5170E827ECCC29419DA33F464746E0192F5BBD8C57EC34BD3480240E8B297291B67A3F8ADADE6E3F04B1B3C6C297EF6693EA36727FDA815F94C1488895C351E0619A9E7BC84D4BC1FEA236D7CE35E3BF2B9FA83C4A8A975AD084D1F6581A6F9FC28A77F6A3CCAD1702027CE0C64EE18B90282CD85B027EA56B40F9C124BCF6CF6CE0092F38167C8757C7FE3FECBD6DE06BD58A8036D79B91C49E4BD555EC6E9987021E7EF977833DAFCB76AB702727050BA34661F0A41998BFFB2AAAF43D66935085ABBBD761579933FD5DA1795400DA7331DA1B24EBB397B14024B0F492FAE65B142C2F399A21369515F2BD6A67FD7D56A168BE525A63014B8D95B3D8D402A6A78B7E8A92AE6F6233E98F7F294967F1ADE6214D35B29A821C76F45209BB9E9EC0109FCE4A041DA0A92A64E9F1412C3EBD50CBC74BE7EFFAE0C103367DFA74ADDF3C6BAE6FBE15CF3916A64465B902AE9E2EE8C26BAB088095135CBA345F294DA54045B90D3C5DECC1F7E1A64E882B634A62CF456B32D8F51A8290BEEEB036F65024451A7F576DF654DA32D73D1723BFDC3803ABE6BC811DF61668BC7B01BF5AFE1E5B568F869B06CFC0EEFC0F5BB6FC82EC8C6DF8EDD925D8F4BC87DE462B26425E6EF9D1B898DE399733D891BC1CD79CB86DA45E089B190DB9A378B6994C5325B256CDC5EB3BBA347D6BF13B4C5F9E8850635FF2D64084880A878B8B39BD14D9C861F147F084480C7391A1BEA22794494770F8FC543CE7E5C37B60ACA602B7150DB0B197E1F4D1DF70A5620CBCDCA5FDF61C21A3C231EDB810E1D9C237F805440EEBD6F4AD85077CECCD23D642468563767131D631B8C7CFB1A8D8FDE3FF60CFBACE613B6F6971CCBCB194EDF9CB5036E28BFF31A5A02315177D7F30A0499D73D1F91C0BA79E9598F8B90061E97A8E85637A7F575DCFA9A8632EE75C44B4096289AE3D7AC2AFE212AE952A357FB8CC05FE037BE1CCF962DC177E70A2A08F3D95B6CCFB9C0B3167FAD85369CB5CCEB988262C4C7105BBD6FD07FBC2C231AA8F038F47D4A270FB322C3D500C151854A587F0CDEAD31837B21FBAE97DB4866788A870282EC4DC18222A1C73888B91C3B20631DED690C964B0E83A04F32E8FC6E6D56F42EEC0E3755D4C0985B20CFBA27C612DB380B5F70C9C9CF815BE9ED2DBD8BF94E00C19158EE9C4E5E13CD4F2D53B0939E6F77626A22543468523F5B898FEC7E6ABEEE0726E31D0B33FFA7697DEBBEE8D11954749E21DFA8474C01851799454DFA16FFA6191306347854371215264ECA870A41817A91D35920CB1440530A5C36284F02396A800D23C2C466111213145854371215221A6A870A416170A8BC888312A1C8A0B3175628C0A474A71A1B0888898A3C2A1B8105325E6A870A412170A8B48984254381417626A4C212A1C29C485C22202A614150EC585980A538A0AC7D4E342613132538C0A87E242C4CE14A3C231E5B850588CC894A3C2A1B810B132E5A8704C352E141623914254381417223652880AC714E3426131022945854371216221A5A8704C2D2E141603936254381417626C528C0AC794E242613120294785437121C622E5A8704C252E1416033187A870282EC4D0CC212A1C53880B85C500CC292A1C8A0B3114738A0A47EC71A1B0E899394685437121FA668E51E188392E14163D32E7A870282E445FCC392A1CB1C685C2A227149587282E4468149587C418170A8B1E50541E47712142A1A83C4E6C71A14B13EBC182050B101919495169077799639AED88B6B66EDD8A9292128A4A3BB88DDA8D1B37A26FDFBE461B078585104288A0E85018218410415158082184088AC24208214450141642082182B2FCF0C30F3F34F620C48541559A8D2D1BFF8D75DFECC1B90A2B7805FAC2D5468306AB6E23F7C7CDD8946B8541033C61A3BFC19A06452ED2566EC49E63C770ECD831645FBC073B1F3F7876B1E2FF1CF437958806280A8E206DFD6A24AFDB85DC4A3BF8D2F2A51B452ED256EE4185FFD3E8D9D51200D0589481AFBF390F97A03EE86629E3F73C02FE5D698FA51586DACB9BF1A7B1F39151F71426460D45979CA5084FDC883C45038FC7AB702727050BA34661F0A41998BFFB2AAAF43E6613507515BBDFD98F32B75E08F07546E5E1250819391769D71EF07830FD4DA5A3018ABC8D480CFF0019AC3FC22206C3E6E0FB087A6D0D7269F9D25ED555EC7EE704CAF030208DB74F61C557175065C1272AC2FF5D35D86434038DF9F861E13254BCB3193FBCF914AC0160B43F2CDE398A9BE5F578DAD152CD1358C2B1DB00BCB43C036FBFF9117AEE30C0984D863F864D8C42B49715A25F89C488F726E1F79FEE41E8FA6878773AEFD3DF5432EAF2B071DE2AE0C334AC8B0D6C5AF9BC380C7D526FC1C38ECF362ECD0BFA21FCDF95F6581EC1AE9F40FAF601881913D8141500B01D82849573F0BC9F1D8F6790C1AED71084F4757FF878F238993B464E9E04BF1F0EE1D41D755BAAF437958A86FC63D874763CE226FA3FDCA2B57B1251D346C1CB8ACF9635CD0BFA21FCDF95F6581ED1507E0BE70207E3035F5B630F45E264B0F50E805CB10B170B6B10E1EE68EC0111BD6BC0FDA27CE43978C2D981B6678577063B9297E39A53D3DFB6B1F810CA31DA68A3A1B010E3E8E2024F2F630F82180E83B25A810A2F47D8CB004089A28CEF9076EA1E00170C898DC358DAA0930C0A4B5B0FCA71FF4123E0445B55FAC4EE97E17A690F0C70A3831AE6C1124EEE9EF02D2E47A58A019696B0EFE687805EF7B063F62660CCAB14169D0C42E4AC7988F66A5AA5AB7280B53F196F34B4F67C84559F2188C161ECCBBE03FA00357D52A12CF738F68D1886413DCCFEC5A2664206877ECFE0C5FBC770F26235002B74978F4774D4180C7430F6D888D0282C8F720A46FC625FACFD742D324A95001AA0B8BA05732725E178059F974312F59428CBFD1E4B3FCEC1B4C5311864C3F335F6C4E4C9DC87237E3EF0D9D214FC56A604C0A0BA7B1337EA8C3D3222340A4B2B8E787A7A12B68C3B8D046F3BC86456E83A783D6CE32230D045DD4B8D49E7D620C6DB1A32991D3C62D2E1B4681D3E1EEF0DCA8A199175C7F0D949F8BADF014CF1B0834C66016BCFF9B832F52D84F7B337F6E88880E863F3DBC5A0BA938FDCEB404F796F74E7F5524842083FB47C491D8585104288A0E85018218410415158082184088AC24208214450141642082182FAFF1BF1A15B3AF01A710000000049454E44AE426082>|png>|203pt|133pt||>

  In the tree each character has weight and in the leaves. Each node has
  total weight and contains the characters of the leaves under it.To get the
  code for each character we start from the root then append 0 if we move
  left and 1 if we move right. So A is 0, B os 100, C is 1010, etc.

  \;

  \ 
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.4|8>>
    <associate|auto-11|<tuple|3|10>>
    <associate|auto-12|<tuple|3.1|11>>
    <associate|auto-13|<tuple|3.2|13>>
    <associate|auto-14|<tuple|3.3|14>>
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

      <with|par-left|<quote|1tab>|2.4<space|2spc>A Picture Language
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Symbolic
      Data> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Symbolic Differentiation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Huffman Encoding Trees
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>
    </associate>
  </collection>
</auxiliary>