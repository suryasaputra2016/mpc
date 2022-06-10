<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Procedures>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <section|Elements of programming>

  Programs are pattern or rules that direct computational process which in
  turns manipulates data.

  Three mechanism of powerful programming language are as follows.

  <\enumerate-numeric>
    <item>primitive expression, the simplest elements

    <item>combination, building compound elements from simpler ones

    <item>abstraction, naming compound elements and treating them as
    primitives
  </enumerate-numeric>

  Here elements are either procedures or data.

  <subsection|Expression>

  One type of interaction between programming and computer is called REPL
  (read-eval-print-loop), where programmer types the prorgram and the
  computer read, evaluate and print the result.

  One type of primitive expression is numbers

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      <\scm-code>
        254
      </scm-code>
    <|unfolded-io>
      254
    </unfolded-io>
  </session>

  Numbers include integers <scm|254>, rationals <scm|2/3>, decimals
  <scm|3.22>, and complex <scm|2+3i>.

  Another type of expression is combinaation, combining numbers with
  operator, here the numbers act as the operands.

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (* 24 36)
    <|unfolded-io>
      864
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (+ 3 17 4 6)
    <|unfolded-io>
      30
    </unfolded-io>
  </session>

  Operators include addition <scm|+>, subtraction <scm|->, multiplication
  <scm|*>, and division <scm|/>. In Scheme, combination is in prefix notation
  written inside parenthesis.

  Combination can be nested and printed in pretty-printing as follows.

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (+ (* 3 4)

      \ \ \ (- 5

      \ \ \ \ \ \ (/ 6 2))).
    <|unfolded-io>
      14
    </unfolded-io>
  </session>

  <subsection|Naming and Environment>

  Another expression is naming, declaring variable whose value is the object.

  <\session|scheme|default>
    <\input|Scheme] >
      (define length 5)
    </input>

    <\unfolded-io|Scheme] >
      length
    <|unfolded-io>
      5
    </unfolded-io>

    <\input|Scheme] >
      (define area (* length length))
    </input>

    <\unfolded-io|Scheme] >
      area
    <|unfolded-io>
      25
    </unfolded-io>
  </session>

  Naming is the first step in abstraction because we can call the result of
  compound operation.

  Relation of names and the object they refer to stored in the global
  environment.

  <subsection|Evaluation of combinationns>

  Evaluation of cobinations is performed in the following steps

  <\enumerate-numeric>
    <item>evaluate the subexpressions in the comobination

    <item>apply the procedure (operation) to the arguments (operands)
  </enumerate-numeric>

  Observe that the rule is recursive, it calls itself in step number one. But
  repeated application will bring us pass the combinations to primitives such
  as numeral built-in operators, or other names.

  Evaluation for primitive case

  <\enumerate>
    <item>numerals are the numbers that they show

    <item>built -in operators are machine instruction for each operation

    <item>names are object associated with the names in the environment
  </enumerate>

  If we regard operations such as <scm|+> as name in global environment, we
  can say that rule 2 is a special case of rule 3.

  The definition above doesn't include <scm|define> becaouse it's one of the
  special forms that has its own rule and determin the sybtax of the
  language.

  <subsection|Compound procedures>

  Procedure definition giving compound operations a name so that it can be
  reffered as a unit. Below we name a procedure square with one parameter and
  on its body it multiplies the parameter by itself and return it.\ 

  And then we do procedure application, in which we call the name and pass
  argument into the paramenter\ 

  <\session|scheme|default>
    <\input|Scheme] >
      (define (square x) (* x x))
    </input>

    <\unfolded-io|Scheme] >
      (square 4)
    <|unfolded-io>
      16
    </unfolded-io>
  </session>

  Here are the general form of a procedure: <scm|(\<less\>define
  (\<less\>name\<gtr\> \<less\>formal parameter\<gtr\>)\<gtr\>
  \<less\>body\<gtr\>>)

  We can build up from the procedure above.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (sum-of-squares x y)\ 

      \ \ (+ (square x) (square y)))
    </input>

    <\unfolded-io|Scheme] >
      (sum-of-squares 5 12)
    <|unfolded-io>
      169
    </unfolded-io>

    <\input|Scheme] >
      (define (f a)

      \ \ (sum-of-squares (+ a 1) (* a 2)))
    </input>

    <\unfolded-io|Scheme] >
      (f 3)
    <|unfolded-io>
      52
    </unfolded-io>
  </session>

  See that using compound procedures is just the same as using primitive
  ones.

  <subsection|Substitution model in application>

  We can assume that application of primitive procedure is built in. For
  compound procedure application, we evaluate the body with each formal
  parameter replaced by the arguments, which is called substitution model.

  Say we call procedure <scm|(f 5)> above.

  Then the evaluation begins by taking the body of <scm|f>.

  <\scm-code>
    (sum-of-squares (+ a 1) (* a 2))
  </scm-code>

  Then the formal parameters are replaced by the argument

  <\scm-code>
    (sum-of-squares (+ 5 1) (* 5 2))
  </scm-code>

  Then the problem is reduced to combinations to two operans and an operator.
  We proceed to the final value.

  <\scm-code>
    (sum-of-squares 6 10)

    (+ (square 6) (square 10))

    (+ (* 6 6) (* 10 10))

    (+ 36 100)

    136
  </scm-code>

  The order in substitution above is called applicative order evaluation.
  There is one more order called normal order evaluation in which the
  evaluation on middle steps is postponed until all the operators become
  primitive.

  <\scm-code>
    (f 5)

    (sum of squares (+ 5 1) (* 5 2))

    (+ (square (+ 5 1)) (square (* 5 2)))

    (+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))

    (+ (* 6 6) (* 10 10))

    (+ 36 100)

    136
  </scm-code>

  <subsection|Conditional expression>

  Some functions such as absolute abesolute value function need a case
  analysis.

  <\equation*>
    <around*|\||x|\|>=<around*|{|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|-x>|<cell|if
    x\<less\>0>>|<row|<cell|x>|<cell|else>>>>>|\<nobracket\>>
  </equation*>

  Procedure for the function is defined using conditional expression as
  follows.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (abs x)

      \ \ (cond ((\<gtr\> x 0) x)

      \ \ \ \ \ \ \ \ ((= x 0) 0)

      \ \ \ \ \ \ \ \ ((\<less\> x 0) (- x))))
    </input>

    <\unfolded-io|Scheme] >
      (abs -3)
    <|unfolded-io>
      3
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  In general conditioal expression is as follows.

  <\scm-code>
    (cond (\<less\>p1\<gtr\> \<less\>e1\<gtr\>)

    \ \ \ \ \ \ (\<less\>p2\<gtr\> \<less\>e2\<gtr\>)

    \ \ \ \ \ \ ...

    \ \ \ \ \ \ (\<less\>p2\<gtr\> \<less\>e2\<gtr\>))
  </scm-code>

  The <scm|\<less\>pi\<gtr\>>'s are called predicate which are expressions
  whose value is true or false. The <scm|\<less\>ei\<gtr\>>'s are called
  consequent expression which will be run if its predicate is true. The pair
  of predicate and consequent expression is called clause.

  Another way to write the function is as follow

  <\session|scheme|default>
    <\input|Scheme] >
      (define (abs x)

      \ \ (cond ((\<less\> x 0) (- x))

      \ \ \ \ \ \ \ \ else x)))
    </input>

    <\input|Scheme] >
      (define (abs x)

      \ \ (if (\<less\> x 0) (- x) x))
    </input>
  </session>

  Above, <scm|else> is special symbol the consequent after it will be run if
  the other predicate is false, and <scm|(if \<less\>predicate\<gtr\>
  \<less\>consequent\<gtr\> \<less\>alternative\<gtr\>)> is the general
  syntax of the form, where the predicate is checked, if it's true, the
  consequent is run, if the predicate is false, the alternative is run.

  Primitive predicates are <scm|\<less\>>, <scm|\<gtr\>>, <scm|=>.\ 

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (= 3 4)
    <|unfolded-io>
      #f
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  We can also combine predicate using the following.

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (and (\<less\> 1 2) (\<gtr\> 2 3))
    <|unfolded-io>
      #f
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (or (\<less\> 1 2) (\<gtr\> 2 3))
    <|unfolded-io>
      #t
    </unfolded-io>
  </session>

  <subsection|Square root by newton method>

  <scm|>Procedure must be effective. it must show how to get the result. in
  other words it must be imperative not declarative. Declarative function
  only describe the result, an example is as follow, a square root of x is a
  number whose square is x. Imperative function tell how to calculate the
  square root.

  One way to calculate the squareroot is to use Newton's method, in which we
  guess, and we iteratively improe our guess by averaging the previous guess
  with the division of number whose root we want to find and the guess, until
  our guess is good enough.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (average x y) (/ (+ x y) 2))
    </input>

    <\input|Scheme] >
      (define (improve guess x) (average guess (/ x guess)))
    </input>

    <\input|Scheme] >
      (define (good-enough? guess x)\ 

      \ \ (\<less\> (abs (- (square guess) x)) 0.001)))
    </input>

    <\input|Scheme] >
      (define (sqrt-iter guess x)

      \ \ (if (good-enough? guess x)

      \ \ \ \ \ \ guess

      \ \ \ \ \ \ (sqrt-iter (improve guess x) x)))
    </input>

    <\input|Scheme] >
      (define (sqrt x) (sqrt-iter 1.0 x))
    </input>

    <\unfolded-io|Scheme] >
      (sqrt 9)
    <|unfolded-io>
      3.00009155413138
    </unfolded-io>
  </session>

  <subsection|Black-box abstraction of procedures>

  In our <scm|sqrt> procedure, we break out the problem into parts. But the
  parts is not just part, it's also a well define method. When we are using
  these parts we don't care about how it is implemented, we just care about
  to use it like black box, we use their abstractions. The same things also
  applies when we use the <scm|sqrt> function in a larger program.

  The meaning of a procedure is independent of the name of its parameter.
  Therefore the parameters are local inside the procedure. Even if the name
  in the parameter the same with the name defined outside the function, they
  are treated as different object.

  variable defined in the parameter is bound variable, meanwhile in contrast
  to free variable. in <scm|good-enough>, <scm|guess> and <scm|x> are bound,
  but <scm|abs> and <scm|square> are free. Bound object is isolated from
  outside.

  Other ways to isolate names is to use lexical scoping. Notice that the
  <scm|sqrt> function depends on other functions, but this other functions
  may only needed in <scm|sqrt>. Therefore we can just define them all inside
  <scm|sqrt>.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (sqrt x)

      \ \ (define (good-enough? guess)

      \ \ \ \ (\<less\> (abs (- (square guess) x)) 0.001))

      \ \ (define (improve guess)

      \ \ \ \ (average guess (/ x guess)))

      \ \ (define (sqrt-iter guess)

      \ \ \ \ (if (good-enough? guess)

      \ \ \ \ \ \ \ \ guess

      \ \ \ \ \ \ \ \ (sqrt-iter(improve guess))))

      \ \ (sqrt-iter 1.0))
    </input>

    <\unfolded-io|Scheme] >
      (sqrt 4)
    <|unfolded-io>
      2.00000009292229
    </unfolded-io>
  </session>

  See that the variable <scm|x> is bound by parameter of <scm|sqrt> but its
  used as free variable in the internal functions. This is called lexical
  scoping.

  <section|Process generated by procedure>

  proeedure define patterns for local evolution of computational process.\ 

  <subsection|Linear Recursion and Iteration>

  Here are two procedures that calculate factorial, one use recursion the
  other iteration.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (factorial-rec n)

      \ \ (if (= n 1) 1 (* n (factorial-rec (- n 1)))))
    </input>

    <\input|Scheme] >
      (define (factorial-iter n)

      \ \ (define (iter product counter)

      \ \ \ \ (if (\<gtr\> counter n)\ 

      \ \ \ \ \ \ \ \ product\ 

      \ \ \ \ \ \ \ \ (iter (* product counter) (+ counter 1))))

      \ \ (iter 1 1))
    </input>
  </session>

  Here are the comparison of the two in evaluating factorial 3

  <\scm-code>
    (factorial-rec 3)

    (* 3 (factorial-rec 2))

    (* 3 (* 2 factorial-rec 1))

    (* 3 (* 2 1))

    (* 3 2)

    6
  </scm-code>

  The evaluation above contais deferred operation, here the system keeps
  track of what operation must be done later. It grows and shrink. This is
  recursive process

  <\scm-code>
    (factorial-iter 3)

    (fact-iter 1 1)

    (fact-iter 1 2)

    (fact-iter 2 3)

    (fact-iter 6 4)

    6
  </scm-code>

  Here, at each steps we have all the inofrmation. This is iterative process.

  By the way, both of the process above is linear since their length of
  evaluation depends linearly on the input.

  Scheme uses tail recursive implementation.

  <subsection|Tree Recursion>

  Fibonacci sequence can be generated by the following function.

  <\equation*>
    Fib<around*|(|n|)>=Fib<around*|(|n-1|)>+Fib<around*|(|n-2|)>\<ast\>
  </equation*>

  Here are implementation of function that compute Fibonacci numbers in
  recursive process.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (fib n)

      \ \ (cond ((= n 0) 0)\ 

      \ \ \ \ \ \ ((= n 1) 1)\ 

      \ \ \ \ \ \ (else (+ (fib (- n 1))\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (fib (- n 2))))))
    </input>

    <\unfolded-io|Scheme] >
      (fib 7)
    <|unfolded-io>
      13
    </unfolded-io>
  </session>

  The process grows like a tree, a binary tree, it splits into two at each
  level, except at the bottom. The procedure is great to show tree recursion
  but bad at computing fibonaci. The steps grows exponentially with input,
  and space requitred grows linearly with the input.

  Here's an iterative versioon of the above procedure.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (fib n)

      \ \ (define (fib-iter a b count)\ 

      \ \ \ \ (if (= count 0)\ 

      \ \ \ \ \ \ \ \ b\ 

      \ \ \ \ \ \ \ \ (fib-iter (+ a b) a (- count 1))))

      \ \ (fib-iter 1 0 n))
    </input>

    <\unfolded-io|Scheme] >
      (fib 7)
    <|unfolded-io>
      13
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  Here the steps grow linearly wit <scm|n> and the space required is
  constant.

  Tree recursion can also be applied to counting change. Here's a question.
  How many ways to give one dollar in half-dollars, quarters, dimes, nickels,
  and pennies?

  First let make procedure that returns the value of coins as function of
  coin order. And then make a recursive function. In making the recursive
  functioin we see that counting the ways equal to counting the ways when one
  coin type is not used plus counting the ways when at least one of the coin
  type is used at least once.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (coin-value coin-num)

      \ \ (cond ((= coin-num 1) 1)

      \ \ \ \ \ \ \ \ ((= coin-num 2) 5)

      \ \ \ \ \ \ \ \ ((= coin-num 3) 10)

      \ \ \ \ \ \ \ \ ((= coin-num 4) 25)

      \ \ \ \ \ \ \ \ ((= coin-num 5) 50)))
    </input>

    <\input|Scheme] >
      (define (count-coins amount coin-nums)

      \ \ (cond ((= amount 0) 1)

      \ \ \ \ \ \ \ \ ((or (\<less\> amount 0) (= coin-nums 0)) 0)

      \ \ \ \ \ \ \ \ (else (+ (count-coins\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ amount\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (- coin-nums 1))\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (count-coins\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (- amount (coin-value coin-nums))\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ coin-nums)) )))
    </input>

    <\input|Scheme] >
      (define (count-change amount) (count-coins amount 5))
    </input>

    <\unfolded-io|Scheme] >
      (count-change 100)
    <|unfolded-io>
      292
    </unfolded-io>
  </session>

  <subsection|Order of Growth>

  Say <math|R <around*|(|n|)>> is the resource needed for a process as a
  function of parameters, can be input, digit accuracies, etc. Resource can
  be internal storage, lementary operatios, etc.

  We say <math|R<around*|(|n|)>> has order of growth <math|\<Theta\>
  <around*|(|f <around*|(|n|)>|)>> if there are positive numbers <math|a> and
  <math|b>, such that <math|a*f <around*|(|n|)>\<leqslant\>R
  <around*|(|n|)>\<leqslant\>b*f <around*|(|n|)>> for suffciently large value
  of <math|n>.

  Some orger of growth is iterative factorial which is linear in number of
  steps <math|\<Theta\> <around*|(|n|)>> and constant in space
  <math|\<Theta\> <around*|(|1|)>>. Fiobnacci computation which is
  <math|\<Theta\> <around*|(|\<phi\> <rsup|n>|)>> in steps and
  <math|\<Theta\> <around*|(|n|)>> in space.

  Hera are a logarithmic growth for steps in finding sine using the following
  and for small angle <math|sin x\<approx\>x.>

  <\equation*>
    sin x=3 sin <cfrac| x|3>-4*sin <rsup|3> <cfrac|x|3>
  </equation*>

  <\session|scheme|default>
    <\input|Scheme] >
      (define (cube x) (* x x x))
    </input>

    <\input|Scheme] >
      (define (p x) (-(* 3 x) (* 4 (cube x))))
    </input>

    <\input|Scheme] >
      (define (sine angle)

      \ \ (if (\<less\> (abs angle) 0.1)

      \ \ \ \ \ \ angle

      \ \ \ \ \ \ (p (sine (/ angle 3.0)))))
    </input>

    <\unfolded-io|Scheme] >
      (sine 0.1)
    <|unfolded-io>
      0.0998518518518519
    </unfolded-io>
  </session>

  \;

  <subsection|Exponentiation>

  We can find exponents usinng recursive as follows that is linear
  <math|\<Theta\> <around*|(|n|)>>in steps and space.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (expt b n)

      \ \ (if (= n 0)

      \ \ \ \ \ \ 1

      \ \ \ \ \ \ (* b (expt b (n-1)))))
    </input>
  </session>

  Below is iterative version which linear in steps and constant in space.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (expt-iter b counter product)\ 

      \ \ (if (= counter 0)

      \ \ \ \ \ \ product

      \ \ \ \ \ \ (expt-iter b

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (- counter 1)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (* b product))))
    </input>

    <\input|Scheme] >
      (define (expt b n)

      \ \ (expt-iter b n 1))
    </input>

    <\unfolded-io|Scheme] >
      (expt 3 4)
    <|unfolded-io>
      81
    </unfolded-io>
  </session>

  We can compute exponentiation with fewer steps using successive squaring.
  Its steps and spaces grows logarithmically with input <math|\<Theta\>
  <around*|(|log n|)>>.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (even? n) (= (remainder n 2) 0))
    </input>

    <\input|Scheme] >
      (define (square x) (* x x))
    </input>

    <\input|Scheme] >
      (define (fast-expt b n)

      \ \ (cond ((= n 0) 1)

      \ \ \ \ \ \ \ \ ((even? n) (square (fast-expt b\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (/
      n 2))))

      \ \ \ \ \ \ \ \ (else (* b (fast-expt b\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (- n
      1))))))
    </input>

    <\unfolded-io|Scheme] >
      (fast-expt 2 7)
    <|unfolded-io>
      128
    </unfolded-io>
  </session>

  <subsection|Greatest common divisor>

  we can find GCD of two numbes using Euclid algorithm. It uses the property
  that if <math|r> is the remainder of <math|a> divided by <math|b>, then
  <math|gcd <around*|(|a,b|)>=gcd <around*|(|b,r|)>.>

  <\session|scheme|default>
    <\input|Scheme] >
      (define (gcd a b)

      \ \ (if (= b 0)

      \ \ \ \ \ \ a

      \ \ \ \ \ \ (gcd b (remainder a b))))
    </input>

    <\unfolded-io|Scheme] >
      (gcd 12 8)
    <|unfolded-io>
      4
    </unfolded-io>
  </session>

  Number of steps in Euclid algorithm grows logarithmically.

  <\theorem>
    Lamé's theorem: if Euclid algorithm needs k steps to get GCD, then the
    smaller number must be at least equal to the <math|k<rsup|th>>Fibonacci
    number.
  </theorem>

  From the theorem we can see that <math|n\<geqslant\>Fib
  <around*|(|k|)>\<approx\> <frac*|\<phi\> <rsup|k>|<sqrt| 5>> >. Therefore
  the order of growth is <math|\<Theta\> <around*|(|log n|)>>.

  <subsection|Testing Prime>

  Here the method of testing prime with order of growth <math|\<Theta\>
  <around*|(|<sqrt|n>|)>>.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (divides? a b) (= (remainder b a) 0))
    </input>

    <\input|Scheme] >
      (define (find-divisor n test-divisor)

      \ \ (cond ((\<gtr\> (square test-divisor) n) n)

      \ \ \ \ \ \ \ \ ((divides? test-divisor n) test-divisor)

      \ \ \ \ \ \ \ \ (else (find-divisor n (+ test-divisor 1)))))
    </input>

    <\input|Scheme] >
      (define (smallest-divisor n) (find-divisor n 2))
    </input>

    <\input|Scheme] >
      (define (prime? n) (= n (smallest-divisor n)))
    </input>

    <\unfolded-io|Scheme] >
      (prime? 4)
    <|unfolded-io>
      #f
    </unfolded-io>
  </session>

  There is another method of testing prime with order of growth
  <math|\<Theta\> <around*|(|<sqrt|n>|)>>using Fermat test.

  <\theorem>
    Fermat's Little Theorem: if <math|n> is prime and
    <math|a\<in\>\<bbb-Z\><rsup|+>>, <math|a\<less\>n> then
    <math|a<rsup|n>\<equiv\>a mod <around*|(|n|)>>.\ 
  </theorem>

  Fermat test checks if the remainder of <math|a<rsup|n>>divided by <math|n>
  equals to <math|a>. If it's then the number <math|n> is probably prime.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (expmod base exp m)

      \ \ \ \ \ \ \ \ (cond ((= exp 0) 1)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ ((even? exp) (remainder (square (expmod
      base

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (/
      exp 2)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ (else (remainder (* base (expmod base

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (-
      exp 1)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m))))
    </input>

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

    <\folded-io|Scheme] >
      (fast-prime? 561 30)
    <|folded-io>
      #t
    </folded-io>
  </session>

  Fermat test is a probabilistic algorithm, it is probably true, but the odds
  is quite good.

  <section|Higher-order Procedures>

  With procedure we not only can do the cubing, but we can talk about the
  concept of cubing. And there is a higher-order procedure that ca n
  manipulate other procedure.

  <subsection|Procedures as Arguments>

  \ Consider different summation from <math|a> to <math|b>.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (sum-integers a b)

      \ \ (if (\<gtr\> a b)

      \ \ \ \ \ \ 0

      \ \ \ \ \ \ (+ a\ 

      \ \ \ \ \ \ \ \ \ (sum-integers (+ a 1) b))))
    </input>

    <\input|Scheme] >
      (define (sum-cubes a b)

      \ \ (if (\<gtr\> a b)

      \ \ \ \ \ \ 0

      \ \ \ \ \ \ (+ (cube a)\ 

      \ \ \ \ \ \ \ \ \ (sum-cubes (+ a 1) b))))
    </input>

    <\input|Scheme] >
      (define (pi-sum a b)

      \ \ (if (\<gtr\> a b)

      \ \ \ \ \ \ 0

      \ \ \ \ \ \ (+ (/ 1.0 (* a (+ a 2)))\ 

      \ \ \ \ \ \ \ \ \ (pi-sum (+ a 4) b))))
    </input>

    <\unfolded-io|Scheme] >
      (sum-cubes 1 3)
    <|unfolded-io>
      36
    </unfolded-io>
  </session>

  The procedures shares common pattern

  <\scm-code>
    (define (\<less\>name\<gtr\> a b)

    \ \ (if (\<gtr\> a b)

    \ \ \ \ \ \ 0

    \ \ \ \ \ \ (+ (\<less\>term\<gtr\> a)

    \ \ \ \ \ \ \ \ \ (\<less\>name\<gtr\> (\<less\>next a\<gtr\>) b))))
  </scm-code>

  This abstraction is similar with sigma notation that lets mathematician
  deals with the concept of summation itself. We can also do that in Scheme.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (sum term a next b)

      \ \ (if (\<gtr\> a b)

      \ \ \ \ \ \ 0

      \ \ \ \ \ \ (+ (term a)

      \ \ \ \ \ \ \ \ \ (sum term (next a) next b))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  Notice that the procedure above accept procedures term and next as
  arguments. Let's see, when we apply the functions to it.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (inc n) (+ n 1))
    </input>

    <\input|Scheme] >
      (define (sum-cubes a b) (sum cube a inc b))
    </input>

    <\input|Scheme] >
      (define (identity x) x)
    </input>

    <\input|Scheme] >
      (define (sum-integers a b) (sum identity a inc b))
    </input>

    <\input|Scheme] >
      (define (pi-sum a b)

      \ \ (define (pi-term x) (/ 1.0 (* x (+ x 2))))

      \ \ (define (pi-next x) (+ x 4))

      \ \ (sum pi-term a pi-next b))
    </input>

    <\unfolded-io|Scheme] >
      (sum-cubes 1 3)
    <|unfolded-io>
      36
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (* 8 (pi-sum 1 1000))
    <|unfolded-io>
      3.13959265558978
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  We can also define integral using the same higher-procedur above.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (integral f a b dx)\ 

      \ \ (define \ (add-dx x)\ 

      \ \ \ \ (+ x dx))

      \ \ (* (sum f (+ a (/ dx 2.0)) add-dx b)

      \ \ \ \ \ dx))
    </input>

    <\unfolded-io|Scheme] >
      (integral cube 0 1 0.01)
    <|unfolded-io>
      0.2499875
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <subsection|Lambda>

  We can define a procedure without naming it using lambda. <scm|(lambda
  (\<less\>parameters\<gtr\>) \<less\>body\<gtr\>)>

  For example, here we redefine the pi series summation using lambda.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (pi-sum a b)

      \ \ (sum (lambda(x) (/ 1.0 (* x (+ x 2))))

      \ \ \ \ \ \ \ a

      \ \ \ \ \ \ \ (lambda(x) (+ x 4))

      \ \ \ \ \ \ \ b))
    </input>

    <\input|Scheme] >
      * 8 (pi-sum 1 1000))
    </input>
  </session>

  These two expressions are equivalent

  <\scm-code>
    (define (plus4 x) (+ x 4))

    (define plus4 (lambda (x) (+ x 4)))
  </scm-code>

  Say we wan to construct the following function.

  <\equation*>
    a=1+x*y
  </equation*>

  <\equation*>
    b=1-y
  </equation*>

  <\equation*>
    f<around*|(|x,y|)>=x*a<rsup|2>+y*b+a*b
  </equation*>

  There are three ways to construct this in scheme. The first one is using
  helper function, the second one using lambda (defining and directly
  applying it), and the third one, the new one, using <scm|let>.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (f x y)

      \ \ (define (f-helper a b)

      \ \ \ \ (+ (* x (square a))

      \ \ \ \ \ \ \ (* y b)

      \ \ \ \ \ \ \ (* a b)))

      \ \ (f-helper (+ 1 (* x y))

      \ \ \ \ \ \ \ \ \ \ \ \ (- 1 y)))
    </input>

    <\input|Scheme] >
      (define (f x y)

      \ \ ((lambda (a, b)\ 

      \ \ \ \ \ (+ (* x (square a))

      \ \ \ \ \ \ \ \ (* y b)

      \ \ \ \ \ \ \ \ (* a b)))\ 

      \ \ \ (+ 1 (* x y))\ 

      \ \ \ (- 1 y)))
    </input>

    <\input|Scheme] >
      (define (f x y)

      \ \ (let ((a (+ 1 (* x y)))

      \ \ \ \ \ \ \ \ (b (- 1 y)))

      \ \ (+ (* x (square a))

      \ \ \ \ \ (* y b)

      \ \ \ \ \ (* a b))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  The general form of let expressio is as follows.

  <\scm-code>
    (let ((\<less\>var1\<gtr\> \<less\>exp1\<gtr\>)

    \ \ \ \ \ \ (\<less\>var2\<gtr\> \<less\>exp2\<gtr\>)

    \ \ \ \ \ \ ...

    \ \ \ \ \ \ (\<less\>varn\<gtr\> \<less\>exp2\<gtr\>))

    \ \ \<less\>body\<gtr\>)
  </scm-code>

  The form above is interpreted to the expression below.

  <\scm-code>
    ((lambda (\<less\>var1\<gtr\> ... \<less\>var2\<gtr\>)

    \ \ \ \<less\>\<gtr\>body)

    \ \<less\>exp1\<gtr\>

    \ ...

    \ \<less\>exp2\<gtr\>)
  </scm-code>

  In let, the variable is bound only to the body. Not in the expression of
  other variable, because it is computerd outside the let.

  <subsection|Procedures as General Methods>

  Finding roots with half-interval method. Finding <math|f
  <around*|(|x|)>=0>, first we find <math|a> and <math|b> such that <math|f
  <around*|(|a|)>> and <math|f <around*|(|b|)>> have different signs. Then
  there must be a root between <math|a> and <math|b>. Then we halve the
  interval by finding <math|f <around*|(|c|)>> where <math|c> is the average
  of <math|a> and <math|b>. We repeat the procedure until we have small
  enough interval. The number of steps grow as <math|\<Theta\> <around*|(|log
  <around*|(|L/T|)>|)> >where <math|L> is the length of original interval and
  <math|T> is the error tolerant.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (search f neg-point pos-point)

      \ \ (let ((midpoint (/ (+ neg-point pos-point) 2)))

      \ \ \ \ (if (close-enough? neg-point pos-point)

      \ \ \ \ \ \ \ \ midpoint

      \ \ \ \ \ \ \ \ (let ((test-value (f midpoint)))

      \ \ \ \ \ \ \ \ \ \ (cond ((positive? test-value)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (search f neg-point midpoint))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ((negative? test-value)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (search \ f midpoint pos-point))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (else midpoint))))))
    </input>

    <\input|Scheme] >
      (define (close-enough? x y) (\<less\> (abs (- x y)) 0.001))
    </input>

    <\input|Scheme] >
      (define (half-interval-method f a b)

      \ \ (let ((a-value (f a))

      \ \ \ \ \ \ \ \ (b-value (f b)))

      \ \ \ \ (cond ((and (negative? a-value) (positive? b-value))

      \ \ \ \ \ \ \ \ \ \ \ (search f a b))

      \ \ \ \ \ \ \ \ \ \ ((and (negative? b-value) (positive? a-value))

      \ \ \ \ \ \ \ \ \ \ \ (search f b a))

      \ \ \ \ \ \ \ \ \ \ (else\ 

      \ \ \ \ \ \ \ \ \ \ \ \ (error "Values are not of opposite sign" a
      b)))))
    </input>

    <\unfolded-io|Scheme] >
      (half-interval-method sin 2.0 4.0)
    <|unfolded-io>
      3.14111328125
    </unfolded-io>
  </session>

  A number <math|x> is a fixed point of <math|f> if <math|f
  <around*|(|x|)>=x>. We can find the fixed point of a function by first
  guessing and then calculate the application of application of <math|x>
  repeatedly until the value doesn't change much.

  <\session|scheme|default>
    <\input|Scheme] >
      (define tolerance 0.00001)
    </input>

    <\input|Scheme] >
      (define (fixed-point f first-guess)

      \ \ (define (close-enough? v1 v2)

      \ \ \ \ (\<less\> (abs (- v1 v2))

      \ \ \ \ \ \ \ tolerance))

      \ \ (define (try guess)

      \ \ \ \ (let ((next (f guess)))

      \ \ \ \ \ \ (if (close-enough? guess next)

      \ \ \ \ \ \ \ \ \ \ next

      \ \ \ \ \ \ \ \ \ \ (try next))))

      \ \ (try first-guess))
    </input>

    <\unfolded-io|Scheme] >
      (fixed-point cos 1.0)
    <|unfolded-io>
      0.739082298522402
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (fixed-point (lambda (y) (+ (sin y) (cos y))) 1.0)
    <|unfolded-io>
      1.25873159629712
    </unfolded-io>

    <\input|Scheme] >
      xy
    </input>
  </session>

  Below, we redefine Newton method of finding roots to fixed-point process.
  To find <math|<sqrt|x>> we could first guess <math|y> and use function
  <math|y\<rightarrow\><frac*|x|y>>. But that doesn't converge, they just
  oscilate over and over. So instead we map <math|y> to the average of
  <math|y> and <math|<frac*|x|y>.> It's actually just the same equation.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (average x y) (/ (+ x y) 2))
    </input>

    <\input|Scheme] >
      (define (sqrt x)

      \ \ (fixed-point (lambda (y) (average y (/ x y)))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 1.0))
    </input>

    <\unfolded-io|Scheme] >
      (sqrt 4)
    <|unfolded-io>
      2.0
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <subsection|Procedure as Returned Value>

  Previously we use average dampinng in finding square root using
  fixed-point. We can define a higher-order procedure that takes a procedure
  and return the average damping of the prodecure.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (average-damp f)\ 

      \ \ \ \ \ \ \ (lambda (x) (average x (f x))))
    </input>

    <\input|Scheme] >
      (define (sqrt x)

      \ \ (fixed-point \ (average-damp (lambda (y) (/ x y)))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 1.0))
    </input>
  </session>

  \;

  See that in the last procedure we make explicit the fixed-point,
  average-damping and <math|y\<rightarrow\><frac*|x|y>.>

  To find zero of a differentiable function <math|g <around*|(|x|)>> we can
  use the general Newton's method. It says that the zero is the fixed-point
  of <math|g> the following function <math|f>.

  <\equation*>
    f <around*|(|x|)>=x-<cfrac|g <around*|(|x|)>|D g<around*|(|x|)>>
  </equation*>

  Where <math|D> is the differential operator.

  To implement Newton's method we first implement the derrivative. Say we
  choose <math|d x=0.0001>.

  <\session|scheme|default>
    <\input|Scheme] >
      (define dx 0.0001)
    </input>

    <\input|Scheme] >
      (define (deriv g)

      \ \ (lambda (x) (/ (- (g (+ x dx)) (g x)) dx)))
    </input>

    <\input|Scheme] >
      (define (newton-transform g)

      \ \ (lambda (x) (- x (/ (g x) ((deriv g) x)))))
    </input>

    <\input|Scheme] >
      (define (newton-method g guess)

      \ \ (fixed-point (newton-transform g) guess))
    </input>

    <\input|Scheme] >
      (define (sqrt x)

      \ \ (newton-method (lambda (y) (- (square y) x)) 1.0))
    </input>

    <\unfolded-io|Scheme] >
      (sqrt 9)
    <|unfolded-io>
      3.00000000000005
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  We can redefine in two ways fixed point with transformation as follows. The
  first one is using average damping, the second one is using netwon
  tarnsform as general

  <\session|scheme|default>
    <\input|Scheme] >
      (define (fixed-point-of-transform g transform guess)

      \ \ (fixed-point (transform g) guess))
    </input>

    <\input|Scheme] >
      (define (sqrt x)

      \ \ (fixed-point-of-transform\ 

      \ \ \ (lambda (y) (/ x y))\ 

      \ \ \ average-damp\ 

      \ \ \ 1.0))
    </input>

    <\input|Scheme] >
      (define (sqrt x)

      \ \ (fixed-point-of-transform

      \ \ \ (lambda (y) (- (square y) x))

      \ \ \ newton-transform

      \ \ \ 1.0))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  Element of a programming language with the fewest restriction is said to
  have first-class stauts.

  The privileges includes: named by variables, passed as arguments, returned
  from procedure, and included in data structure.

  \;

  \ 

  \ 

  \;

  \;

  <\session|scheme|default>
    \;
  </session>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2|5>>
    <associate|auto-11|<tuple|2.1|5>>
    <associate|auto-12|<tuple|2.2|6>>
    <associate|auto-13|<tuple|2.3|7>>
    <associate|auto-14|<tuple|2.4|?>>
    <associate|auto-15|<tuple|2.5|?>>
    <associate|auto-16|<tuple|2.6|?>>
    <associate|auto-17|<tuple|3|?>>
    <associate|auto-18|<tuple|3.1|?>>
    <associate|auto-19|<tuple|3.2|?>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|3.3|?>>
    <associate|auto-21|<tuple|3.4|?>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|2>>
    <associate|auto-6|<tuple|1.5|3>>
    <associate|auto-7|<tuple|1.6|3>>
    <associate|auto-8|<tuple|1.7|4>>
    <associate|auto-9|<tuple|1.8|5>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Elements
      of programming> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Expression
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Naming and Environment
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Evaluation of combinationns
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Compound procedures
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Substitution model in
      application <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Conditional expression
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Square root by newton method
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>Black-box abstraction of
      procedures <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Process
      generated by procedure> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Linear Recursion and
      Iteration <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Tree Recursion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Order of Growth
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>
    </associate>
  </collection>
</auxiliary>