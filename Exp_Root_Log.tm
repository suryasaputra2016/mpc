<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Exponentiation, Roots,
  Logarithm>|<doc-author|<author-data|<author-name|Surya Saputra>>>>

  <section|Exponentiation>

  Exponentiatons are repeated multiplication. The expression <math|a> to the
  <math|n> is the multiplication of <math|n> numbers of <math|a>.

  <\equation*>
    a<rsup|n>=a\<cdot\>a\<cdot\>a\<ldots\>\<cdot\>a<space|0.2spc>
  </equation*>

  Thus, <math|2<rsup|3>=2\<cdot\>2\<cdot\>2=8>, and
  <math|5<rsup|4>=5\<cdot\>5\<cdot\>5\<cdot\>5=625>. In the expression, the
  number below that will be multiplied with itselfis called base, while the
  number above that shows the numbers of base in the multiplications is
  called the exponent. We also read <math|a<rsup|n>> as <math|a> to the
  <math|n>.

  Notice that if the exponent is 1 then the result is just the base, since
  there is only one base to be multiplied. Therefore <math|6<rsup|1>=6>.

  <subsection|Exponents zero and negative integers>

  So far we've seen expontents of positve integers. We can also extend the
  definition to zero and negative using the following observation.

  See that multiplying an exponentiation with another base is equal to adding
  the exponent by one.

  <\equation*>
    a<rsup|n>\<cdot\>a=a\<cdot\> \<ldots\>\<cdot\> a\<cdot\>a=a<rsup|n+1>
  </equation*>

  We can turn the expression around by dividing both sides by <math|a>.

  <\equation*>
    a<rsup|n>=<cfrac|a<rsup|n+1>|a>
  </equation*>

  Decreasing the exponenby one means dividing by another base. From here we
  can find the exponent of 0, -1, -2, etc

  <\equation*>
    a<rsup|0>=<cfrac|a<rsup|1>|a>=<cfrac|a|a>=1
  </equation*>

  <\equation*>
    a<rsup|-1>=<cfrac|a<rsup|0>|a>=<cfrac|1|a>
  </equation*>

  <\equation*>
    a<rsup|-2>=<cfrac|a<rsup|-1>|a>=<cfrac|1|a<rsup|2>>
  </equation*>

  We can observe that <math|a<rsup|0>=1> and
  <math|a<rsup|-n>=<cfrac|1|a<rsup|n>>>. Thus <math|3<rsup|0>=1> and
  <math|2<rsup|-3>=<cfrac|1|2<rsup|3>>=<cfrac|1|8>>.

  <subsection|The property of exponents>

  There are three propertes of exponents that we need to consider. That is
  for a real number <math|a>, <math|b> and integers <math|n> and <math|m> we
  have the following.

  <\enumerate>
    <item><math|a<rsup|n>\<cdot\>a<rsup|m>=a<rsup|n+m>>

    <item><math|a<rsup|n>\<cdot\> b<rsup|n>=<around*|(|a\<cdot\>
    b|)><rsup|n>>

    <item><math|<around*|(|a<rsup|n>|)><rsup|m>=a<rsup|n\<cdot\> m>>
  </enumerate>

  We can use the first property to combine multiplication of exponentiations
  with the same base. For example, <math|3<rsup|4>\<cdot\>
  3<rsup|2>=3<rsup|4+2>=3<rsup|6>>. We can also apply this property to to
  division of exponentioations with the same base.
  <math|<cfrac|5<rsup|7>|5<rsup|2>>=5<rsup|7>\<cdot\>5<rsup|-2>=5<rsup|7+<around*|(|-2|)>>=5<rsup|7-2>=5<rsup|5>>.

  With the second property we can combine multiplication of two
  exponentiations with the same exponents by multiplying the bases, e.g.
  <math|3<rsup|2>\<cdot\>2<rsup|2>=<around*|(|3\<cdot\>2|)><rsup|2>=6<rsup|2>>.
  Notice that this also applies for division.
  <math|<cfrac|14<rsup|5>|7<rsup|5>>=<around*|(|<cfrac|14|7>|)><rsup|5>=2<rsup|5>>

  The third property is useful to simplify double exponentiations,
  <math|<around*|(|2<rsup|4>|)><rsup|2>=2<rsup|4\<cdot\> 2>=2<rsup|8>.>

  <section|Roots>

  Roots is the inverse of exponentiations. The <math|n>-th root of a number
  <math|a> is a number <math|b> such that <math|b<rsup|n>=a>

  <\equation*>
    <sqrt|a|n>=b
  </equation*>

  <\equation*>
    b<rsup|n>=a
  </equation*>

  In the notation above <math|a> is called radicand and <math|n> is called
  index

  Hence, we have <math|<sqrt|16|2>=4> because <math|4<rsup|2>=16>, and
  <math|<sqrt|-125|3>=-5> because <math|<around*|(|-5|)><rsup|3>=-125>.

  We still have real root if the radicand is not an exponentiation with
  exponents of the index , for example <math|<sqrt|2|2>=1.415\<ldots\> >..

  However, if the index is even, we don't have real root for negative
  radicand. Therefore we don't have real <strong|>root for <math|<sqrt|-4|2>>
  or <math|<sqrt|-81|4>>.

  Notice that if the index is even, and the radicand is non-negative, we
  actually to candidate for the root. For example <math|<sqrt|4|2>> actually
  has two candidate answer <math|2> and <math|-2>, since both
  <math|2<rsup|2>> and <math|<around*|(|-2|)><rsup|2>> is <math|4>. If there
  are two possible solution, the two must be negative of each other, and as a
  convention, we take the positive value. Therefore <math|<sqrt|4|2>=2>

  There is a simplification in the notation of 2nd root, or square root,
  since we often use it, the index can be omitted,
  <math|<sqrt|a|2>=<sqrt|a>.>

  <subsection|Properties of roots>

  Here are the list of properties of roots.

  <\enumerate>
    <item><math|<sqrt|a|n>\<cdot\><sqrt|b|n>=<sqrt|a\<cdot\>b|n>>

    <item><math|<sqrt|<sqrt|a|n>|m>=<sqrt|a|m\<cdot\>n>>

    <item><math|<sqrt|a|n>=a<rsup|<frac|1|n>>>
  </enumerate>

  The first property can be used to combine multiplication of two <math|n>-th
  roots. This property only works for real numbers, but for now since we're
  dealing with only real numbers we can say that this property always valid.
  An example of application of this property would be
  <math|<sqrt|3|4>\<cdot\><sqrt|27|4>=<sqrt|3\<cdot\>27|4>=<sqrt|81|4>=3><math|>.\ 

  The second property can be used to simplify multiple root into one.
  <math|<sqrt|<sqrt|64|2>|3>=<sqrt|64|3\<cdot\>2>=<sqrt|64|6>=2>.

  The third property relates taking root with exponential with reciprocal
  exponents. This actually broaden the definition of exponential into
  rational exponents. Now we can define exponential of rational exponents as
  follows.

  <\equation*>
    a<rsup|<frac| m|n>>=<sqrt|a<rsup|m>|n>=<around*|(|<sqrt|a|n>|)><rsup|m>
  </equation*>

  Notice that the rules can also be applied to simplify divisions of roots
  with the same indices, <math|<dfrac|<sqrt|32|2>|<sqrt|8|2>>=<sqrt|32|2>\<cdot\><around*|(|<sqrt|8|2>|)><rsup|-1>=<sqrt|32|2>\<cdot\><sqrt|8<rsup|-1>|2>=<sqrt|32\<cdot\>8<rsup|-1>|2>=<sqrt|<cfrac|32|8>|2>=<sqrt|4|2>=2>.

  Later we can just use this observation as
  <math|<dfrac|<sqrt|a|n>|<sqrt|b|n>>=<sqrt|<cfrac|a|b>|n>.>

  <subsection|A complication with root>

  We see that squareroot is inverse of exponentiation, but not really. If the
  exponents or index is odd numbers, they are exactly inverse, but if the
  exponents or index is even, they are only inverse if the radicand and base
  is positive. Negative base will become positive after undoing the
  exponentiation with taking roots. And negative radicand don't have real
  roots.

  This problem will be solved as we are introduced to complex numbers. But
  for now we need to be aware of this.

  <section|Equation with exponents and roots>

  Roots and exponents have higher precedence than multiplication, if they
  come up in an equation, we can basically treat them as a factor.

  <\equation*>
    2x-<cfrac|2\<cdot\> 3<rsup|4>|6<rsup|2>>=<sqrt| 25>
  </equation*>

  But if the exponent or root is not in the variable, we can solve the
  problem in the similar wy we solve linear equation, they are linear
  equation.

  <\eqnarray*>
    <tformat|<table|<row|<cell|2x-<cfrac|2\<cdot\>
    3<rsup|4>|6<rsup|2>>>|<cell|=>|<cell|<sqrt|25>>>|<row|<cell|2x-<cfrac|
    2<rsup|2 >\<cdot\> 81|36>>|<cell|=>|<cell|5>>|<row|<cell|2x-9>|<cell|=>|<cell|5>>|<row|<cell|2x>|<cell|=>|<cell|9+5>>|<row|<cell|x>|<cell|=>|<cell|<cfrac|
    14|2>>>|<row|<cell|x>|<cell|=>|<cell|2>>>>
  </eqnarray*>

  <subsection|Variable with exponents>

  Now, say we have variable with exponents.

  <\equation*>
    3x<rsup|3>-4\<cdot\>10=41
  </equation*>

  In this case, we solve for the variable with the expoentnes first. Here, we
  solce for <math|x<rsup|3>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|3x<rsup|3>-4\<cdot\>10>|<cell|=>|<cell|41>>|<row|<cell|3x<rsup|3>-40>|<cell|=>|<cell|41>>|<row|<cell|3x<rsup|3>-40+40>|<cell|=>|<cell|41+40>>|<row|<cell|3x<rsup|3>>|<cell|=>|<cell|81>>|<row|<cell|<cfrac|3x<rsup|3>|3>>|<cell|=>|<cell|<cfrac|81|3>>>|<row|<cell|x<rsup|3>>|<cell|=>|<cell|27>>>>
  </eqnarray*>

  And then we take inverse of the exponents on both sides. Here, we take
  3rd-root on both sides.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x<rsup|3>>|<cell|=>|<cell|27>>|<row|<cell|<sqrt|x<rsup|3>|3>>|<cell|=>|<cell|<sqrt|27|3>>>|<row|<cell|x>|<cell|=>|<cell|3>>>>
  </eqnarray*>

  Since the exponent is odd, we have only one answer, which is 3 above.\ 

  There are notes reagarding taking exponents and also <math|n>-th roots on
  both sides. If the index or exponents of the exponentiation or roots are
  odd numbers, it always save to take the two operations.

  However if the index or exponents is even we need to be careful. If we are
  taking roots on both sides and the index is even, we first have to make
  sure that the both sides are non-negative. I f we are taking exponents on
  both sides,\ 

  <subsection|Variable with roots>

  Now we see if the variable is inside a root.

  <\equation*>
    <frac|<sqrt|x>|4>+2\<cdot\>3=<cfrac| 14|2>
  </equation*>

  Here\R as the previous question, we solvev for the variable together with
  the root, in other words we solve for <math|<sqrt|x>.>

  \;

  <subsection|A more complex example>

  Here are another example.

  <\equation*>
    <sqrt|x<rsup|2>+1>=<sqrt| 5>\<cdot\> <sqrt| 2>
  </equation*>

  First, we can simplify the right hand side using property of roots.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<sqrt|x<rsup|2>+1>>|<cell|=>|<cell|<sqrt|
    5>\<cdot\> <sqrt| 2>>>|<row|<cell|<sqrt|x<rsup|2>+1>>|<cell|=>|<cell|<sqrt|
    5\<cdot\> 2>>>|<row|<cell|<sqrt|x<rsup|2>+1>>|<cell|=>|<cell|<sqrt|
    10>>>>>
  </eqnarray*>

  Next, we square both sides, and then simpliy

  <\eqnarray*>
    <tformat|<table|<row|<cell|<sqrt|x<rsup|2>+1>>|<cell|=>|<cell|<sqrt|
    10>>>|<row|<cell|<around*|(|<sqrt|x<rsup|2>+1>|)><rsup|2>>|<cell|=>|<cell|<around*|(|<sqrt|
    10>|)><rsup|2>>>|<row|<cell|x<rsup|2>+1>|<cell|=>|<cell|10>>|<row|<cell|x<rsup|2>+1-1>|<cell|=>|<cell|10-1>>|<row|<cell|x<rsup|2>>|<cell|=>|<cell|9>>>>
  </eqnarray*>

  Next, we take square root of both sides, however here we need to be
  carefule, because the exponent is even, the square root will only give the
  positive root, meannwhile 9 has negative root as well. So we add plus minus
  in front of the root to show that there is also negative answer.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x<rsup|2>>|<cell|=>|<cell|9>>|<row|<cell|x>|<cell|=>|<cell|\<pm\>
    <sqrt| 9>>>|<row|<cell|x>|<cell|=>|<cell|\<pm\> 3>>>>
  </eqnarray*>

  So, here we haev two solutions for <math|x>, you can try check both answer.

  <section|Logarithms>

  Now, we need third operation so that we can solve the equation, when the
  variable is the exponent such as the following.

  <\equation*>
    2<rsup|x>+1=3<rsup|2>
  </equation*>

  Let's see the definition first.

  <\equation*>
    log <rsub|b> a=x
  </equation*>

  In the above equation we take logarithm of <math|a> with base <math|b> and
  the result is <math|x>. What we mean by <math|log<rsub|b> a=x> is finding
  an exponent <math|x> for <math|b> such that <math|b<rsup|x>> equals
  <math|a>, Therfore the definitoin for logarithms above is equivalent to the
  following statement.

  <\equation*>
    b<rsup|x>=a
  </equation*>

  So <math|log<rsub|b> a> <math|can be read> as what exponent must be given
  to <math|b> such that it becomes equal to <math|a>.

  Let's see some examples. We have <math|log<rsub|2> 8=3> because to get to
  8, we have to give 2 exponent of 3. Also <math|log<rsub|5> 25=2> because to
  get to 25, we need to give 5 exponent of 2. The third example is
  <math|log<rsub|3> <around*|(|<cfrac| 1|81>|)>=-4>, because to get to
  <math|<cfrac|1|81>>we need to give <math|3>, the exponent <math|-4>.

  <subsection|Properties of logarithm>

  Logarithm comes with several nice properties as follows.

  <\enumerate>
    <item><math|log<rsub|c><around*|(|a\<cdot\> b|)>=log<rsub|c>
    a>+log<rsub|c> b

    <item><math|log<rsub|b<rsup|n>> a<rsup|m>=<cfrac|m|n>log<rsub|b>a>

    <item><math|log<rsub|c> b\<cdot\> log<rsub|b> a=log<rsub|c> a>
  </enumerate>

  The first property can be used to combine or split logarithms. The second
  property is to simplifty either the base or the argument of the logarithm.
  Combining the first and second property we can apply the first property for
  division inside argument and turn it into subtraction of logarithm.\ 

  <subsection|Logarithm of base 10>

  The mose used logarithm is logarithm of base 10. And since it's common we
  can just write the as logarithm withouth base.

  <\equation*>
    log a=log<rsub|10> a
  </equation*>

  Logarithm with base 10 has interesting property: <math|log 10=1>, <math|log
  100=2>, <math|log 1000=3>. Also for small numbers we have <math|log 1=0>,
  <math|log 0.1=-1>, <math|log 0.01=-2>, etc.

  <subsection|Converting into logarithm form>

  Now let's get back to the previous problem. This one will involve a litle
  logarithm.

  <\equation*>
    2<rsup|x>+1=3<rsup|2>
  </equation*>

  First let's simplify in terms of the exponentiation.

  <\eqnarray*>
    <tformat|<table|<row|<cell|2<rsup|x>+1>|<cell|=>|<cell|3<rsup|2>>>|<row|<cell|2<rsup|x>+1>|<cell|=>|<cell|9>>|<row|<cell|2<rsup|x>+1-1>|<cell|=>|<cell|9-1>>|<row|<cell|2<rsup|x>>|<cell|=>|<cell|8>>>>
  </eqnarray*>

  Now, since the variable is in the exponent we turn the equation into
  logarithmic form.

  <\eqnarray*>
    <tformat|<table|<row|<cell|2<rsup|x>>|<cell|=>|<cell|8>>|<row|<cell|x>|<cell|=>|<cell|log<rsub|2>
    8>>|<row|<cell|x>|<cell|=>|<cell|3>>>>
  </eqnarray*>

  We solved the problem.\ 

  Actually, we can solve this problem without logarithm, Once, we see
  <math|2<rsup|x>=8>, we can just immediately conclude that <math|x> is 3.
  But since we are now learning logarithm, why not use it.

  \ 

  <subsection|Problems involving logarithm>

  Let's see another equation to solve. This time it includes logarithm from
  the start.

  <\equation*>
    log<rsub|3> x+2<rsup|2>=4\<cdot\>2
  </equation*>

  Let's first solve the equation in terms of the logarithm.

  <\eqnarray*>
    <tformat|<table|<row|<cell|log<rsub|3>
    x+2<rsup|2>>|<cell|=>|<cell|4\<cdot\>2>>|<row|<cell|log<rsub|3>
    x+4>|<cell|=>|<cell|8>>|<row|<cell|log<rsub|3>
    x+4-4>|<cell|=>|<cell|8-4>>|<row|<cell|log<rsub|3>
    x>|<cell|=>|<cell|4>>>>
  </eqnarray*>

  And then we change the logarithmic form into exponentiation.

  <\eqnarray*>
    <tformat|<table|<row|<cell|log<rsub|3>
    x>|<cell|=>|<cell|4>>|<row|<cell|x>|<cell|=>|<cell|3<rsup|4>>>|<row|<cell|x>|<cell|=>|<cell|81>>>>
  </eqnarray*>

  <subsection|Using logarithmic properties>

  Let's solve one more peoblem.

  <\equation*>
    2\<cdot\> log <around*|(|x<rsup|3>|)>-2<rsup|2>=2
  </equation*>

  First we solve in terms of the term containing logarithm.

  <\eqnarray*>
    <tformat|<table|<row|<cell|2\<cdot\> log
    <around*|(|x<rsup|3>|)>-2<rsup|2>>|<cell|=>|<cell|2>>|<row|<cell|2\<cdot\>
    log <around*|(|x<rsup|3>|)>-4>|<cell|=>|<cell|2>>|<row|<cell|2\<cdot\>
    log <around*|(|x<rsup|3>|)>-4+4>|<cell|=>|<cell|2+4>>|<row|<cell|2\<cdot\>
    log <around*|(|x<rsup|3>|)>>|<cell|=>|<cell|6>>>>
  </eqnarray*>

  Now let's move the exponentns outside logarithm, using property 3 and solve
  for <math|log x>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|2\<cdot\> log
    <around*|(|x<rsup|3>|)>>|<cell|=>|<cell|6>>|<row|<cell|3\<cdot\>
    2\<cdot\> log <around*|(|x|)>>|<cell|=>|<cell|6>>|<row|<cell|6\<cdot\>
    log <around*|(|x|)>>|<cell|=>|<cell|6>>|<row|<cell|<cfrac| 6\<cdot\> log
    <around*|(|x|)>|6>>|<cell|=>|<cell|<cfrac| 6|6>>>|<row|<cell|log
    x>|<cell|=>|<cell|1>>>>
  </eqnarray*>

  Now we turn the logarithmic form into the exponential form.

  <\eqnarray*>
    <tformat|<table|<row|<cell|log x>|<cell|=>|<cell|1>>|<row|<cell|x>|<cell|=>|<cell|10<rsup|1>>>|<row|<cell|x>|<cell|=>|<cell|10>>>>
  </eqnarray*>

  So that's Exponentiation, roots, and logarithms.

  \;

  <\equation*>
    \;
  </equation*>

  \ \ 

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-10|<tuple|3.3|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-11|<tuple|4|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-12|<tuple|4.1|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-13|<tuple|4.2|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-14|<tuple|4.3|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-15|<tuple|4.4|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-16|<tuple|4.5|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-17|<tuple|6|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-18|<tuple|6.1|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-19|<tuple|6.2|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-2|<tuple|1.1|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-20|<tuple|7|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-21|<tuple|7.1|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-22|<tuple|7.2|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-23|<tuple|7.3|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-24|<tuple|8|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-25|<tuple|8.1|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-26|<tuple|8.2|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-27|<tuple|9|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-28|<tuple|9.1|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-29|<tuple|9.2|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-3|<tuple|1.2|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-30|<tuple|10|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-31|<tuple|10.1|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-32|<tuple|10.2|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-33|<tuple|11|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-34|<tuple|11.1|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-35|<tuple|11.2|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-36|<tuple|11.3|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-37|<tuple|12|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-38|<tuple|12.1|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-39|<tuple|12.2|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-4|<tuple|2|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-5|<tuple|2.1|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-6|<tuple|2.2|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-7|<tuple|3|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-8|<tuple|3.1|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-9|<tuple|3.2|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Exponentiation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>