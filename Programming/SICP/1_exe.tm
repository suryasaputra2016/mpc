<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs|maxima|python>>

<\body>
  <doc-data|<doc-title|SICP Chapter 1>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <\enumerate-numeric>
    <item>Number 1

    <\session|scheme|default>
      <\unfolded-io|Scheme] >
        (+ 5 3 4)
      <|unfolded-io>
        12
      </unfolded-io>

      <\input|Scheme] >
        (define a 3)
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 2

    <\session|scheme|default>
      <\unfolded-io|Scheme] >
        (/ (+ 5

        \ \ \ \ \ \ 4

        \ \ \ \ \ \ (- 3 (+ 6 4/5)))

        \ \ \ (* 3

        \ \ \ \ \ \ (- 6 2)

        \ \ \ \ \ \ (- 2 7)))
      <|unfolded-io>
        -13/150
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 3

    <\session|scheme|default>
      <\input|Scheme] >
        (define (sum-square-larger-two a b c)

        \ \ (define (square x) (* x x))

        \ \ (define (sum-square x y)\ 

        \ \ \ \ (+ (square x) (square y) ))

        \ \ (cond ((and (\<less\> a b) (\<less\> a c)) (sum-square b c))

        \ \ \ \ \ \ \ \ ((and (\<less\> b a) (\<less\> b c)) (sum-square a
        c))

        \ \ \ \ \ \ \ \ (else (sum-square a b))))
      </input>

      <\unfolded-io|Scheme] >
        (sum-square-larger-two 5 4 5)
      <|unfolded-io>
        50
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>The function returns <math|a+<around*|\||b|\|>>

    <item>Number 5: if the evaluation has normal order then the result is
    zero, since the test doesn's evaluate p. If it's in normal order then the
    test will call p as it evaluates the argument, and cause an infinite
    recursion.

    <\session|scheme|default>
      <\input|Scheme] >
        (define (p) (p))
      </input>

      <\input|Scheme] >
        (define (test x y)\ 

        \ \ (if (= x 0)

        \ \ \ \ \ \ 0

        \ \ \ \ \ \ y))
      </input>

      <\unfolded-io|Scheme] >
        (test 0 p)
      <|unfolded-io>
        0
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>The usual if only evaluate<nbsp>one of its paremeter, but in the
    new-if it evaluates all the arguments, which in this case will call
    itself, over and over, causing infinite recursion.

    <item>If the input is small i.e. in order of the tolerance or smaller
    then the tolarence is too high. If the input is large machine precision
    won't catch up to small value of tolerance. One way to improve is to
    change the tolerance into some small numbers times the difference between
    two last guesses.

    <\session|scheme|default>
      <\input|Scheme] >
        (define (good-enough? guess x)\ 

        \ \ (\<less\> (abs (- improve guess) guess) (* guess 0.001)))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item> \ Number 8

    <\session|scheme|default>
      <\input|Scheme] >
        (define (good-enough? guess x)

        \ \ (\<less\> (abs (- (cube guess) x))\ 

        \ \ \ \ \ 0.01))
      </input>

      <\input|Scheme] >
        (define (improve guess x)

        \ \ (/ (+ (/ x (* guess guess))\ 

        \ \ \ \ \ \ \ \ (* 2 guess))

        \ \ \ \ \ 3))
      </input>

      <\input|Scheme] >
        (define (cube x) (* x x x))
      </input>

      <\input|Scheme] >
        (define (cube-root-iter guess x)

        \ \ (if (good-enough? guess x)

        \ \ \ \ \ \ guess

        \ \ \ \ \ \ (cube-root-iter (improve guess x) x)))
      </input>

      <\input|Scheme] >
        (define (cube-root x)

        \ \ (cube-root-iter 1.0 x))
      </input>

      <\unfolded-io|Scheme] >
        (cube-root 8)
      <|unfolded-io>
        2.0000049116755
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>The first one is recursive, the second one iterative

    <\render-code>
      (+ 2 5)

      (inc (+ (dec 2) 5))

      (inc (+ 1 5))

      (inc (inc (+ (dec 1) 5)))

      (inc (inc (+ 0 5)))

      (inc (inc 5))

      (inc 6)

      7

      \;

      (+ 2 5)

      (+ (dec 2) (inc 5))

      (+ 1 6)

      (+ (dec 1) (inc 6))

      (+ 0 7)

      7
    </render-code>

    <item>Number 10

    <\session|scheme|default>
      <\input|Scheme] >
        (define (A x y)

        \ \ (cond ((= y 0) 0)

        \ \ \ \ \ \ \ \ ((= x 0) (* 2 y))

        \ \ \ \ \ \ \ \ ((= y 1) 2)

        \ \ \ \ \ \ \ \ (else (A (- x 1) (A x (- y 1))))))
      </input>

      <\unfolded-io|Scheme] >
        (A 1 10)
      <|unfolded-io>
        1024
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (A 2 4)
      <|unfolded-io>
        65536
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (A 3 3)
      <|unfolded-io>
        65536
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <\equation*>
      A <around*|(|0,n|)>=2*n
    </equation*>

    <\equation*>
      A <around*|(|1,n|)>=<around*|{|<tabular|<tformat|<table|<row|<cell|0>|<cell|if
      n=0>>|<row|<cell|2<rsup|n>>|<cell|if n\<gtr\>0>>>>>|\<nobracket\>>
    </equation*>

    <\equation*>
      A <around*|(|2,n|)>=
    </equation*>

    <item>Number 11

    <\equation*>
      f <around*|(|n|)>=<around*|{|<tabular|<tformat|<table|<row|<cell|n>|<cell|if
      n\<less\>3>>|<row|<cell|f <around*|(|n-1|)>+2*f <around*|(|n-2|)>+3*f
      <around*|(|n-3|)>>|<cell|if n\<geqslant\>3>>>>>|\<nobracket\>>
    </equation*>

    <\session|scheme|default>
      <\input|Scheme] >
        (define (f-rec n)

        \ \ (if (\<less\> n 3)

        \ \ \ \ \ \ n

        \ \ \ \ \ \ (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n
        3))))))
      </input>

      <\input|Scheme] >
        (define (func-iter a b c n)\ 

        \ \ (if (= n 0)

        \ \ \ \ \ \ c

        \ \ \ \ \ \ (func-iter (+ a (* 2 b) (* 3 c)) a b (- n 1))))
      </input>

      <\input|Scheme] >
        (define (f-iter n) (func-iter 2 1 0 n))
      </input>

      <\unfolded-io|Scheme] >
        (f-rec 5)
      <|unfolded-io>
        25
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (f-iter 5)
      <|unfolded-io>
        51
      </unfolded-io>

      <\input|Scheme] >
        <\description>
          \;
        </description>
      </input>
    </session>

    <item>Number 12

    <\session|scheme|default>
      <\input|Scheme] >
        (define (pascal col row)

        \ \ (if (or (= col 1) (= col row))

        \ \ \ \ \ \ 1

        \ \ \ \ \ \ (+ (pascal (- col 1) (- row 1))\ 

        \ \ \ \ \ \ \ \ \ (pascal col (- row 1)))))
      </input>

      <\unfolded-io|Scheme] >
        (pascal 4 5)
      <|unfolded-io>
        4
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Define <math|\<phi\>=<around*|(|1+<sqrt|5>|)>/2>, and
    <math|\<psi\>=<around*|(|1-<sqrt|5>|)>/2>. Let's prove that <math|Fib
    <around*|(|n|)>=<around*|(|\<phi\> <rsup|n>-\<psi\> <rsup|n>|)>/<sqrt|5>>

    <math|Fib <around*|(|0|)>=0=<around*|(|\<phi\> <rsup|0>-\<psi\>
    <rsup|0>|)>/<sqrt|5>>

    <math|Fib <around*|(|1|)>=1=<around*|(|\<phi\> <rsup|1>-\<psi\>
    <rsup|1>|)>/<sqrt|5>>

    Observation: <math|\<phi\> <rsup|2>=<around*|(|1+<sqrt|5>|)><rsup|2>/2<rsup|2>=<around*|(|1+2*<sqrt|5>+5|)>/2<rsup|2>=<around*|(|1+<sqrt|5>|)>/2+1=\<phi\>+1>

    Observation: <math|\<psi\><rsup|2>=><math|<around*|(|1-<sqrt|5>|)><rsup|2>/2<rsup|2>=<around*|(|1-2*<sqrt|5>+5|)>/2<rsup|2>=<around*|(|1-<sqrt|5>|)>/2+1=\<psi\>+1>

    <\eqnarray*>
      <tformat|<table|<row|<cell|Fib <around*|(|n-1|)>+Fib
      <around*|(|n-2|)>>|<cell|=>|<cell|<around*|(|\<phi\> <rsup|n-1>-\<psi\>
      <rsup|n-1>|)>/<sqrt|5>+<around*|(|\<phi\> <rsup|n-2>-\<psi\>
      <rsup|n-2>|)>/<sqrt|5>>>|<row|<cell|>|<cell|=>|<cell|<cfrac|\<phi\>
      <rsup|n-2>*<around*|(|\<phi\>+1|)>+\<psi\>
      <rsup|n-2>*<around*|(|\<psi\>+1|)>|<sqrt|5>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<phi\>
      <rsup|n>+\<psi\> <rsup|n>|)>/<sqrt|5>>>>>
    </eqnarray*>

    Hence QED.

    \;

    <\session|maxima|default>
      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>9) >
      <|unfolded-io>
        psi/sqrt(5) = (1-sqrt(5.0))/(2*sqrt(5.0))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
        >><frac|\<psi\>|<sqrt|5>>=-0.2763932022500211>>
      </unfolded-io>

      <\input>
        <with|color|red|(<with|math-font-family|rm|%i>10) >
      <|input>
        \;
      </input>
    </session>

    Now, <math|\<psi\>/<sqrt|5> > is less than half, so the and for
    <math|n\<gtr\>1> <math|\<phi\> <rsup|n>/<sqrt|5>> is always less than
    half away from <math|Fib<around*|(|n|)>> and more than half away from the
    next/previous integer.

    <item>Number 14: the tree hasn't been drawn

    The procedure generates binary tree with depth of <math|n>. so the order
    of growth is <math|n> with respect to space and <math|2<rsup|n>> with
    respect to steps

    <item><math|<around*|\<lceil\>|log<rsub|3>
    <around*|(|12.15/0.1|)>|\<rceil\>>>

    <\session|maxima|default>
      <\unfolded-io-math>
        <with|color|red|(<with|math-font-family|rm|%i>24) >
      <|unfolded-io-math>
        log<around*|(|12.15/0.1|)>/log<around*|(|3.0|)>
      <|unfolded-io-math>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
        >>4.369070246428542>>
      </unfolded-io-math>

      <\input-math>
        <with|color|red|(<with|math-font-family|rm|%i>25) >
      <|input-math>
        \;
      </input-math>
    </session>

    5 steps

    order of growth:\ 

    steps <math|log<rsub|3> <around*|(|n/0.1|)>>, <math|\<Theta\>
    <around*|(|log n|)>>

    spaces: the same with number of steps <math|\<Theta\> <around*|(|log
    n|)>>

    <item>Number 16

    <\session|scheme|default>
      <\input|Scheme] >
        (define (exp-iter a b n)

        \ \ (cond ((= n 0) a)

        \ \ \ \ \ \ \ \ ((even? n) (exp-iter a

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (square b)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (/ n 2)))

        \ \ \ \ \ \ \ \ (else (exp-iter (* a b)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (- n 1)))))
      </input>

      <\input|Scheme] >
        (define (even? n) (= (remainder n 2) 0))
      </input>

      <\input|Scheme] >
        (define (square n) (* n n))
      </input>

      <\input|Scheme] >
        (define (exp b n) (exp-iter 1 b n))
      </input>

      <\unfolded-io|Scheme] >
        (exp 9 7)
      <|unfolded-io>
        4782969
      </unfolded-io>
    </session>

    <\session|scheme|default>
      \;
    </session>

    <item>Number 17

    <\session|scheme|default>
      <\input|Scheme] >
        (define (double n) (+ n n))
      </input>

      <\input|Scheme] >
        (define (halve n) (/ n 2))
      </input>

      <\input|Scheme] >
        (define (fast-mult a b)

        \ \ (cond ((= b 0) 0)

        \ \ \ \ \ \ \ \ ((even? b) (double (fast-mult a\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (halve
        b))))

        \ \ \ \ \ \ \ \ (else (+ (fast-mult a\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (- b 1))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ a))))
      </input>

      <\unfolded-io|Scheme] >
        (fast-mult 7 8)
      <|unfolded-io>
        56
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 18

    <\session|scheme|default>
      <\input|Scheme] >
        (define (fast-mult-iter x a b)

        \ \ (cond ((= b 0) x)

        \ \ \ \ \ \ \ \ (( even? b) (fast-mult-iter x

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (double
        a)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (halve
        b)))

        \ \ \ \ \ \ \ \ (else (fast-mult-iter (+ x a)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ a

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (- b
        1)))))
      </input>

      <\input|Scheme] >
        (define (mult-iter a b) (fast-mult-iter 0 a b))
      </input>

      <\unfolded-io|Scheme] >
        (mult-iter 3 4)
      <|unfolded-io>
        12
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 19

    <\session|maxima|default>
      <\input>
        <with|color|red|(<with|math-font-family|rm|%i>4) >
      <|input>
        eq1: a1=(p+q)*a0+q*b0$
      </input>

      <\input>
        <with|color|red|(<with|math-font-family|rm|%i>5) >
      <|input>
        eq2: b1=q*a0+p*b0$
      </input>

      <\input>
        <with|color|red|(<with|math-font-family|rm|%i>10) >
      <|input>
        eq3: a2=(p+q)*a1+q*b1$
      </input>

      <\input>
        <with|color|red|(<with|math-font-family|rm|%i>11) >
      <|input>
        eq4: b2=q*a1+p*b1$
      </input>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>23) >
      <|unfolded-io>
        eq5: expand (subst ([eq1, eq2], eq3))
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
        >><with|math-font-family|rm|a2>=<with|math-font-family|rm|b0>*q<rsup|2>+2*<with|math-font-family|rm|a0>*q<rsup|2>+2*<with|math-font-family|rm|b0>*p*q+2*<with|math-font-family|rm|a0>*p*q+<with|math-font-family|rm|a0>*p<rsup|2>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>25) >
      <|unfolded-io>
        eq6: expand (subst ([eq1, eq2], eq4))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
        >><with|math-font-family|rm|b2>=<with|math-font-family|rm|b0>*q<rsup|2>+<with|math-font-family|rm|a0>*q<rsup|2>+2*<with|math-font-family|rm|a0>*p*q+<with|math-font-family|rm|b0>*p<rsup|2>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>17) >
      <|unfolded-io>
        subst([p=0,q=1],eq5)
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
        >><with|math-font-family|rm|a2>=<with|math-font-family|rm|b0>+2*<with|math-font-family|rm|a0>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>18) >
      <|unfolded-io>
        subst([p=0,q=1],eq6)
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
        >><with|math-font-family|rm|b2>=<with|math-font-family|rm|b0>+<with|math-font-family|rm|a0>>>
      </unfolded-io>

      <\input>
        <with|color|red|(<with|math-font-family|rm|%i>19) >
      <|input>
        \;
      </input>
    </session>

    <\session|scheme|default>
      <\input|Scheme] >
        (define (fib-iter a b p q count)

        \ \ (cond ((= count 0) b)

        \ \ \ \ \ \ \ \ ((even? count) (fib-iter a

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (+
        (* p p) (* q q))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (+
        (* 2 p q) (* q q))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (/
        count 2)))

        \ \ \ \ \ \ \ \ (else (fib-iter (+ (* b q) (* a q) (* a p))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (+ (* b p) (* a q))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ p

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ q

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (- count 1)))))
      </input>

      <\input|Scheme] >
        (define (fib n)

        \ \ (fib-iter 1 0 0 1 n))
      </input>

      <\unfolded-io|Scheme] >
        (fib 8)
      <|unfolded-io>
        21
      </unfolded-io>

      <\input|Scheme] >
        -
      </input>
    </session>

    <\equation*>
      \;
    </equation*>

    <item><math|>Applicative order

    <\math>
      <text|gcd (206,40)>

      <\text>
        gcd (40, remainder (206,40))

        <math|gcd<around*|(|40,6|)>>

        <math|gcd <around*|(|6,remainder <around*|(|40,6|)>|)>>

        <math|gcd<around*|(|6,4|)>>

        <math|gcd <around*|(|4,remainder <around*|(|6,4|)>|)>>

        <math|gcd <around*|(|4,2|)>>

        <math|gcd <around*|(|2,remainder <around*|(|4,2|)>|)>>

        <math|gcd <around*|(|2,0|)>>

        2
      </text>
    </math>

    Normal order

    <tabular|<tformat|<table|<row|<cell|g(206 ,,
    40>|<cell|>|<cell|>>|<row|<cell|if 40==0>|<cell|>|<cell|>>|<row|<cell|g(40
    ,, R(206,40>|<cell|>|<cell|>>|<row|<cell|if
    R(206,40)=6==0>|<cell|1>|<cell|>>|<row|<cell|g(R(206,40 ,, R(40,
    R(206,40>|<cell|>|<cell|>>|<row|<cell|if R(40,
    R(206,40))=4==0>|<cell|2>|<cell|>>|<row|<cell|g(R(40, R(206,40 ,
    R(R(206,40) ,, R(40, R(206,40>|<cell| >|<cell|>>|<row|<cell|if
    R(R(206,40) ,, R(40, R(206,40 ==0>|<cell|4>|<cell|>>|<row|<cell|g(R(R(206,40)
    , R(40, R(206,40,,R(R(40, R(206,40)) , R(R(206,40) , R(40,
    R(206,40)>|<cell|>|<cell|>>|<row|<cell|if R(R(40, R(206,40)) ,
    R(R(206,40) , R(40, R(206,40) == 0>|<cell|7>|<cell|>>|<row|<cell|returned
    R(R(206,40) , R(40, R(206,40)))>|<cell|4>|<cell|>>>>>

    in total there are 1+2 +4+7+4 remainder procedures are called

    <item>Nmber 21

    <\session|scheme|default>
      <\input|Scheme] >
        (define (find-divisor n test-divisor)

        \ \ (cond ((\<gtr\> (square test-divisor) n) n)

        \ \ \ \ \ \ \ \ ((divides? test-divisor n) test-divisor)

        \ \ \ \ \ \ \ \ (else (find-divisor n (+ test-divisor 1)))))
      </input>

      <\input|Scheme] >
        (define (divides? a b) (= (remainder b a) 0))\ 
      </input>

      <\input|Scheme] >
        (define (find-smallest-divisor n)

        \ \ (find-divisor n 2))
      </input>

      <\unfolded-io|Scheme] >
        (find-smallest-divisor 199)
      <|unfolded-io>
        199
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (find-smallest-divisor 1999)
      <|unfolded-io>
        1999
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (find-smallest-divisor 19999)
      <|unfolded-io>
        7
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 22

    <\session|scheme|default>
      Since runtime doesn't work here, I used DrRacket and copied the code
      below.

      <\scm-code>
        (#%require (only racket/base current-milliseconds))

        (define (runtime) (current-milliseconds))

        \;

        (define (square x) (* x x))

        (define (divides? a b) (= (remainder b a) 0))

        \;

        (define (find-divisor n test)

        \ \ (cond((\<gtr\> (square test) n) n)

        \ \ \ \ \ \ \ ((divides? test n) test)

        \ \ \ \ \ \ \ (else (find-divisor n (+ test 1)))))

        \;

        (define (smallest-divisor n)

        \ \ (find-divisor n 2))

        \;

        (define (prime? n)

        \ \ (= (smallest-divisor n) n))

        \;

        (define (report-prime elapsed-time)

        \ \ (display " *** ")

        \ \ (display elapsed-time))

        \;

        (define (start-prime-test n start-time)

        \ \ (if (prime? n)

        \ \ \ \ \ \ (report-prime (- (runtime) start-time))))

        \;

        (define (timed-prime-test n)

        \ \ (newline)

        \ \ (display n)

        \ \ (start-prime-test n (runtime)))

        \;

        \;

        (define (search-for-primes lower upper)

        \ \ (cond ((\<less\> lower upper) (timed-prime-test lower)
        (search-for-primes (+ lower 2) upper))))

        \;

        (search-for-primes 10000000001 10000000111)
      </scm-code>

      Modern computer too fast, all run time is zero.

      \;
    </session>

    <item>Number 23

    <\session|scheme|default>
      <\input|Scheme] >
        (define (next n)

        \ \ (if (= n 2)

        \ \ \ \ \ \ 3

        \ \ \ \ \ \ (+ n 2)))
      </input>

      <\input|Scheme] >
        (define (find-divisor-skip n test-divisor)

        \ \ (cond ((\<gtr\> (square test-divisor) n) n)

        \ \ \ \ \ \ \ \ ((divides? test-divisor n) test-divisor)

        \ \ \ \ \ \ \ \ (else (find-divisor-skip n (next test-divisor)))))
      </input>

      <\input|Scheme] >
        (define (find-smallest-divisor-skip n)

        \ \ (find-divisor-skip n 2))
      </input>

      <\input|Scheme] >
        (define (prime-skip? n)

        \ \ (= (find-smallest-divisor-skip n) n))
      </input>

      <\unfolded-io|Scheme] >
        (prime-skip? 149)
      <|unfolded-io>
        #t
      </unfolded-io>

      <\input|Scheme] >
        (define (square x) (* x x))
      </input>

      <\input|Scheme] >
        (display "dis")
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    The speed becomes 1.5 faster not 2 times because of the if test.

    <item>Number 24, modern computer too fast very similar with no 22.

    <item>It computes intermediate result with huge value which is
    computationaly expensive

    <item>A binary tree is generated so the growth function is
    <math|\<Theta\><around*|(|2<rsup|log n>|)>=\<Theta\><around*|(|n|)>>

    <item>Number 27

    <\session|scheme|default>
      <\unfolded-io|Scheme] >
        ((define (expmod base exp m)

        \ \ \ \ \ \ \ \ (cond ((= exp 0) 1)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ ((even? exp)\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (remainder (square (expmod base (/ exp
        2) m))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (else\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (remainder (* base (expmod base (-
        exp 1) m))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m))))
      <|unfolded-io>
        <errput|#\<unknown port\>:8:33: end of file>
      </unfolded-io>

      <\input|Scheme] >
        (define (fermat-test n)

        \ \ (define (try-it a)

        \ \ \ \ (= (expmod a n n)

        \ \ \ \ \ \ \ a))

        \ \ (try-it (+ 1 (random (- n 1)))))
      </input>

      <\input|Scheme] >
        (define (fast-prime? n times)

        \ \ (cond ((= times 0) #t)

        \ \ \ \ \ \ \ \ ((fermat-test n) (fast-prime? n (- times 1)))

        \ \ \ \ \ \ \ \ (else #f)))
      </input>

      <\unfolded-io|Scheme] >
        (fast-prime? 561 30)
      <|unfolded-io>
        #t
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (fast-prime? 1105 1))
      <|unfolded-io>
        #t
      </unfolded-io>

      <\input|Scheme] >
        (fast-prime? 1729 1))
      </input>
    </session>

    <item>Number 28

    <\session|scheme|default>
      <\input|Scheme] >
        (define (expmodmilrab base exp m)

        \ \ \ \ \ \ \ \ (cond ((= exp 0) 1)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ ((even? exp)\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (squaremod-with-check\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (expmodmilrab base (/ exp 2) m)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (else\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (remainder (* base (expmodmilrab base
        (- exp 1) m))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m))))
      </input>

      <\input|Scheme] >
        (define (squaremod-with-check x m)

        \ \ (if (and (= (remainder (square x) m) 1)\ 

        \ \ \ \ \ \ \ \ \ \ \ (not (= x 1))\ 

        \ \ \ \ \ \ \ \ \ \ \ (not (= x (- m 1))))

        \ \ \ \ \ \ 0

        \ \ \ \ \ \ (remainder (square x) m)))
      </input>

      <\input|Scheme] >
        (define (miller-rabin-test n)

        \ \ (define (try-it a)

        \ \ \ \ (= (expmodmilrab a (- n 1) n)

        \ \ \ \ \ \ \ 1))

        \ \ (try-it (+ 1 (random (- n 1)))))
      </input>

      <\input|Scheme] >
        (define (fast-prime-check? n times)

        \ \ (cond ((= times 0) #t)

        \ \ \ \ \ \ \ \ ((miller-rabin-test n) (fast-prime-check? n (- times
        1)))

        \ \ \ \ \ \ \ \ (else #f)))
      </input>

      <\unfolded-io|Scheme] >
        (fast-prime-check? 561 300)
      <|unfolded-io>
        #f
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (fast-prime-check? 1105 300)
      <|unfolded-io>
        #f
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 29

    <\session|scheme|default>
      <\input|Scheme] >
        (define (integral-simpson f a b n)

        \ \ (define h (/ (- b a) (make-even n)))

        \ \ (define (add-2h x) (+ x h h))

        \ \ (* (/ h 3.0)

        \ \ \ \ \ (+ (f a)

        \ \ \ \ \ \ \ \ (* 4 (sum f (+ a h) add-2h b))

        \ \ \ \ \ \ \ \ (* 2 (sum f (+ a h h) add-2h (- b h)))

        \ \ \ \ \ \ \ \ (f b))))
      </input>

      <\input|Scheme] >
        (define (sum term a next b)

        \ \ (if (\<gtr\> a b)

        \ \ \ \ \ \ 0

        \ \ \ \ \ \ (+ (term a)

        \ \ \ \ \ \ \ \ \ (sum term (next a) next b))))
      </input>

      <\input|Scheme] >
        \ (define (make-even n) (+ n (remainder n 2)))
      </input>

      <\input|Scheme] >
        (define (cube x) (* x x x))
      </input>

      <\unfolded-io|Scheme] >
        (integral-simpson cube 0 3 100)
      <|unfolded-io>
        20.25
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (/ (* 3.0 3 3 3) 4)
      <|unfolded-io>
        20.25
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 30

    <\session|scheme|default>
      <\input|Scheme] >
        (define (sum-iter term a next b)

        \ \ (define (iter a result)

        \ \ \ \ (if (\<gtr\> a b)

        \ \ \ \ \ \ \ \ result

        \ \ \ \ \ \ \ \ (iter (next a) (+ result (term a)))))

        \ \ (iter a 0))
      </input>

      <\input|Scheme] >
        (define (id x) x)
      </input>

      <\input|Scheme] >
        (define (add-one x) (+ x 1))
      </input>

      <\unfolded-io|Scheme] >
        (sum-iter id 1 add-one 3)
      <|unfolded-io>
        6
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 31

    <\session|scheme|default>
      <\input|Scheme] >
        (define (product factor a next b)

        \ \ (if (\<gtr\> a b)

        \ \ \ \ \ \ 1

        \ \ \ \ \ \ (* (factor a)

        \ \ \ \ \ \ \ \ \ (product factor (next a) next b))))
      </input>

      <\input|Scheme] >
        (define (factorial n)

        \ \ (product id 1 add-one n))
      </input>

      <\unfolded-io|Scheme] >
        (factorial 5)
      <|unfolded-io>
        120
      </unfolded-io>

      <\input|Scheme] >
        (define (pi-term n)

        \ \ (if (even? n)

        \ \ \ \ \ \ (/ (+ n 2) (+ n 1))

        \ \ \ \ \ \ (/ (+ n 1) (+ n 2))))
      </input>

      <\input|Scheme] >
        (define (pi-per-4 quality)

        \ \ (product pi-term 1.0 add-one quality))
      </input>

      <\unfolded-io|Scheme] >
        (* 4 (pi-per-4 100))
      <|unfolded-io>
        3.15703017645516
      </unfolded-io>

      <\input|Scheme] >
        (define (product-iter factor a next b)

        \ \ (define (iter a product)

        \ \ \ \ (if (\<gtr\> a b)

        \ \ \ \ \ \ \ \ product

        \ \ \ \ \ \ \ \ (iter (next a) (* product a))))

        \ \ (iter a 1))
      </input>

      <\input|Scheme] >
        (define (factorial-iter n)

        \ \ (product-iter id 1 add-one n))
      </input>

      <\unfolded-io|Scheme] >
        (factorial-iter 5)
      <|unfolded-io>
        120
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 32

    <\session|scheme|default>
      <\input|Scheme] >
        (define (accumulate combiner null-value term a next b)

        \ \ (if (\<gtr\> a b)

        \ \ \ \ \ \ null-value

        \ \ \ \ \ \ (combiner (term a)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (accumulate combiner\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ null-value\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ term\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (next a)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ next

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b))))
      </input>

      <\input|Scheme] >
        (define (sum term a next b)

        \ \ (accumulate + 0 term a next b))
      </input>

      <\unfolded-io|Scheme] >
        (sum id 1 add-one 100)
      <|unfolded-io>
        5050
      </unfolded-io>

      <\input|Scheme] >
        (define (product term a next b)

        \ \ (accumulate * 1 term a next b))
      </input>

      <\unfolded-io|Scheme] >
        (product id 1 add-one 5))
      <|unfolded-io>
        120
      </unfolded-io>

      <\input|Scheme] >
        (define (accumulate-iter combiner null-value term a next b)

        \ \ (define (iter a result)

        \ \ \ \ (if (\<gtr\> a b)

        \ \ \ \ \ \ \ \ result

        \ \ \ \ \ \ \ \ (iter (next a) (combiner result (term a)))))

        \ \ (iter a null-value))
      </input>

      <\input|Scheme] >
        (define (sum-iter term a next b)

        \ \ (accumulate-iter + 0 term a next b))
      </input>

      <\unfolded-io|Scheme] >
        (sum-iter id 1 add-one 100)
      <|unfolded-io>
        5050
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 33

    <\session|scheme|default>
      <\input|Scheme] >
        (define (filtered-acc combiner filter? null-value term a next b)

        \ \ (if (\<gtr\> a b)

        \ \ \ \ \ \ null-value

        \ \ \ \ \ \ (if (filter? a)

        \ \ \ \ \ \ \ \ \ \ (combiner (term a)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (filtered-acc combiner

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ filter?

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ null-value\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ term\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (next a)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ next

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b))

        \ \ \ \ \ \ \ \ \ \ (filtered-acc combiner

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ filter?

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ null-value\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ term\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (next a)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ next

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b))))
      </input>

      <\input|Scheme] >
        (define (square x) (* x x))
      </input>

      <\input|Scheme] >
        (define (divides? a b) (= (remainder b a) 0))
      </input>

      <\input|Scheme] >
        (define (find-divisor n test)

        \ \ (cond((\<gtr\> (square test) n) n)

        \ \ \ \ \ \ \ ((divides? test n) test)

        \ \ \ \ \ \ \ (else (find-divisor n (+ test 1)))))
      </input>

      <\input|Scheme] >
        (define (smallest-divisor n)

        \ \ (find-divisor n 2))
      </input>

      <\input|Scheme] >
        (define (prime? n)

        \ \ (= (smallest-divisor n) n))
      </input>

      <\unfolded-io|Scheme] >
        (filtered-acc + prime? 0 square 2 add-one 5)
      <|unfolded-io>
        38
      </unfolded-io>

      <\input|Scheme] >
        (define (rel-prime n)\ 

        \ \ (= (gcd n 5) 1))\ 
      </input>

      <\unfolded-io|Scheme] >
        (filtered-acc * rel-prime 1 id 2 add-one 5)
      <|unfolded-io>
        24
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 34

    (f f) (f 2) (2 2) error

    <item>Number 35

    <\eqnarray*>
      <tformat|<table|<row|<cell|x>|<cell|=>|<cell|1+<cfrac|1|x>>>|<row|<cell|x<rsup|2>>|<cell|=>|<cell|x+1>>|<row|<cell|x<rsup|2>-x-1>|<cell|=>|<cell|0>>|<row|<cell|x>|<cell|=>|<cell|<cfrac|1\<pm\>
      <sqrt|5>|2>>>>>
    </eqnarray*>

    Golden ratio <math|\<phi\>> is one of the root in the equation.

    <\session|scheme|default>
      <\input|Scheme] >
        (define (fixed-point f first-guess)

        \ \ (define (close-enough? v1 v2) (\<less\> (abs (- v1 v2)) 0.001))

        \ \ (define (try guess)

        \ \ \ \ (let ((next (f guess)))

        \ \ \ \ \ \ (if (close-enough? guess next)

        \ \ \ \ \ \ \ \ \ \ next

        \ \ \ \ \ \ \ \ \ \ (try next))))

        \ \ (try first-guess))
      </input>

      <\unfolded-io|Scheme] >
        (fixed-point (lambda (x) (+ 1 (/ 1.0 x))) 2)
      <|unfolded-io>
        1.61818181818182
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 36

    <\session|scheme|default>
      <\input|Scheme] >
        (define (fixed-point-disp f first-guess)

        \ \ (define (close-enough? v1 v2) (\<less\> (abs (- v1 v2)) 0.001))

        \ \ (define (try guess)

        \ \ \ \ (let ((next (f guess)))

        \ \ \ \ \ \ (newline)

        \ \ \ \ \ \ (display next)

        \ \ \ \ \ \ (if (close-enough? guess next)

        \ \ \ \ \ \ \ \ \ \ next

        \ \ \ \ \ \ \ \ \ \ (try next))))

        \ \ (try first-guess))
      </input>

      <\unfolded-io|Scheme] >
        (fixed-point-disp (lambda (x) (/ (log 1000) (log x))) 2)
      <|unfolded-io>
        4.55587039670285
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (fixed-point-disp (lambda (x) (/ (+ x (/ (log 1000) (log x))) 2)) 2)
      <|unfolded-io>
        4.55559941161062
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 37

    <\session|scheme|default>
      <\input|Scheme] >
        (define (cont-frac n d k)

        \ \ (define (recur step)

        \ \ \ \ (if (\<gtr\> step k)

        \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ (/ (n step)\ 

        \ \ \ \ \ \ \ \ \ \ \ (+ (d step) (recur (+ step 1))))))

        \ \ (recur 1))
      </input>

      <\unfolded-io|Scheme] >
        (cont-frac (lambda (n) 1.0) (lambda (n) 1.0) 1)
      <|unfolded-io>
        1.0
      </unfolded-io>

      <\input|Scheme] >
        (define (cont-frac-iter n d k)

        \ \ (define (iter step result)

        \ \ \ \ (if (\<less\>= step 0)

        \ \ \ \ \ \ \ \ result

        \ \ \ \ \ \ \ \ (iter (- step 1)\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ (/ (n step) (+ (d step) result)))))

        \ \ (iter k 0))
      </input>

      <\unfolded-io|Scheme] >
        (cont-frac-iter (lambda (n) 1.0) (lambda (n) 1.0) 100)
      <|unfolded-io>
        0.618033988749895
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 38

    <\session|scheme|default>
      <\input|Scheme] >
        (define (denom-euler n)\ 

        \ \ (if (= (remainder (+ n 1) 3) 0)

        \ \ \ \ \ \ (* (/ (+ n 1) 3) 2)

        \ \ \ \ \ \ 1))
      </input>

      <\input|Scheme] >
        (define (one n) 1.0)
      </input>

      <\unfolded-io|Scheme] >
        (denom-euler 4)
      <|unfolded-io>
        1
      </unfolded-io>

      <\input|Scheme] >
        (define (print-denom-euler n)

        \ \ (define (print-number step)

        \ \ \ \ (display n)

        \ \ \ \ (display " \ ")

        \ \ \ \ (if (= step n)

        \ \ \ \ \ \ \ \ (print-number (+ step 1))))

        \ \ (print-number 1))
      </input>

      <\input|Scheme] >
        (print-denom-euler 5)
      </input>

      <\unfolded-io|Scheme] >
        (cont-frac one denom-euler 100)
      <|unfolded-io>
        0.718281828459045
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (cont-frac-iter one denom-euler 100)
      <|unfolded-io>
        0.718281828459045
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 39

    <\session|scheme|default>
      <\input|Scheme] >
        (define (numer-lambert x)\ 

        \ \ (lambda (n)\ 

        \ \ \ \ (if (= n 1)

        \ \ \ \ \ \ \ \ x

        \ \ \ \ \ \ \ \ (- (* x x)))))
      </input>

      <\input|Scheme] >
        (define (denom-lambert n)

        \ \ (- (* 2 n) 1))
      </input>

      <\unfolded-io|Scheme] >
        ((numer-lambert 4) 2)
      <|unfolded-io>
        -16
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (cont-frac (numer-lambert 0.785) denom-lambert 100)
      <|unfolded-io>
        0.999203990105043
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 40

    <\session|scheme|default>
      <\input|Scheme] >
        (define (deriv f )

        \ \ (lambda (x) (/ (- (f (+ x dx)) (f x)) dx) ))
      </input>

      <\input|Scheme] >
        (define dx 0.00001)
      </input>

      <\input|Scheme] >
        (define (newton-transform f)

        \ \ \ \ \ \ \ \ \ (lambda (x) (- x (/ (f x) ((deriv f) x)))))
      </input>

      <\input|Scheme] >
        (define (newton-method f guess)

        \ \ (fixed-point (newton-transform f) guess))
      </input>

      <\input|Scheme] >
        (define (cube x) (* x x x))
      </input>

      <\unfolded-io|Scheme] >
        ((deriv cube) 5)
      <|unfolded-io>
        75.0001499966402
      </unfolded-io>

      <\input|Scheme] >
        (define (cubic a b c)

        \ \ (lambda (x) (+ (* x x x) (* a x x) (* b x) c)))
      </input>

      <\unfolded-io|Scheme] >
        (newton-method (cubic 0 0 -27) 1)
      <|unfolded-io>
        3.00000000000192
      </unfolded-io>
    </session>

    <item>Number 41

    <\session|scheme|default>
      <\input|Scheme] >
        (define (double f)

        \ \ (lambda (x) (f (f x))))
      </input>

      <\unfolded-io|Scheme] >
        ((double cube) 2)
      <|unfolded-io>
        512
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (* 8 8 8)
      <|unfolded-io>
        512
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 42

    <\session|scheme|default>
      <\input|Scheme] >
        (define (compose f g)

        \ \ (lambda (x) (f (g x))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 43

    <\session|scheme|default>
      <\input|Scheme] >
        (define (repeated f n)

        \ \ (if (= n 1)

        \ \ \ \ \ \ f

        \ \ \ \ \ \ (compose f (repeated f (- n 1)))))
      </input>

      <\unfolded-io|Scheme] >
        ((repeated square 3) 2)
      <|unfolded-io>
        256
      </unfolded-io>

      <\input|Scheme] >
        (define (square x) (* x x))
      </input>

      <\input|Scheme] >
        (define (repeated-iter f n)

        \ \ (define (iter n result)\ 

        \ \ \ \ (if (= n 1)

        \ \ \ \ \ \ \ \ result

        \ \ \ \ \ \ \ \ (iter (- n 1) (compose f result))))

        \ \ (iter n f))
      </input>

      <\unfolded-io|Scheme] >
        ((repeated-iter square 3) 2)
      <|unfolded-io>
        256
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 44

    <\session|scheme|default>
      <\input|Scheme] >
        (define (smooth f)

        \ \ (lambda (x) (/ (+ (f (- x dx))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (f x)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (f (+ x dx)))\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 3)))
      </input>

      <\input|Scheme] >
        (define (n-fold-smooth n)

        \ \ (repeated smooth n) )
      </input>

      <\unfolded-io|Scheme] >
        (((n-fold-smooth 3) cube) 2)
      <|unfolded-io>
        8.0000000012
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <item>Number 45 (done in DrRacket)

    <\scm-code>
      (define (good-enough? v1 v2) (\<less\> (abs (- v1 v2)) 0.001))

      \;

      (define (log2 x) (/ (log x) (log 2)))

      \;

      (define (average x y) (/ (+ x y) 2))

      \;

      (define (average-with-x x) (lambda (y) (/ (+ x y) 2)))

      \;

      (define (pow x n)

      \ \ (if (= n 0)

      \ \ \ \ \ \ 1

      \ \ \ \ \ \ (* x (pow x (- n 1)))))

      \;

      (define (compose f g) (lambda (x) (f (g x))))

      \;

      (define (repeated f n)

      \ \ (if (= n 1)

      \ \ \ \ \ \ f

      \ \ \ \ \ \ (compose f (repeated f (- n 1)))))

      \;

      \;

      (define (n-root-improve x y n) (/ y (pow x (- n 1))))

      \;

      (define (p-average-damp f x p)

      \ \ (lambda (x y n) ((repeated (average-with-x x) p) (f x y n))))

      \;

      (define (n-root y n)

      \ \ (define (iter guess)

      \ \ \ \ (if (good-enough? y (pow guess n))

      \ \ \ \ \ \ \ \ guess

      \ \ \ \ \ \ \ \ (iter ((p-average-damp n-root-improve guess (+(floor
      (log2 n)) 1)) guess y n))))

      \ \ (iter 1.0))

      \;

      (n-root 16 4)
    </scm-code>

    <item>Number 46

    <\session|scheme|default>
      <\input|Scheme] >
        (define (iterative-improve good-enough? improve)

        \ \ (lambda (guess)\ 

        \ \ \ \ (if (good-enough? guess)

        \ \ \ \ \ \ \ \ guess

        \ \ \ \ \ \ \ \ ((iterative-improve good-enough? improve) (improve
        guess)))))
      </input>

      <\input|Scheme] >
        \;
      </input>
    </session>

    \;

    \;
  </enumerate-numeric>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>