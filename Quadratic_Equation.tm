<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Quadratic Equation>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <section|Quadratic Equation>

  In linear equations, the terms are either constant term of term containing
  <math|x> with possible coefficient, called linear term.

  <subsection|Definition>

  In quadratic equation, the terms are either constant term, linear term, or
  another term containing <math|x<rsup|2>> with possible coefficient. In
  general the form of quadratic equations is as follows.

  <\equation*>
    a*x<rsup|2>+b*x+c=0
  </equation*>

  In the equation above, <math|a>, <math|b>, <math|c> stands for known
  numbers, while <math|x> is the variable\<gtr\> Also note that
  <math|a\<neq\>0>, because if it is then, the equation is linear. Any
  equation that is in this form, or equivalent to this form is called
  quadratic equation.

  These are some examples of quadratic equation.

  <\equation*>
    2x<rsup|2>\<longminus\>18x+40=0
  </equation*>

  <\equation*>
    x<rsup|2>+2x=-1
  </equation*>

  Now, the symbol \ <math|a>, <math|b>, <math|c> are called quadratic
  coefficient, linear coefficient, and constant term. In solving quadratic
  equation we first change it to the general form above, and then solve it
  which can be done using the methods below

  <subsection|Solving degenerate case, <math|c=0>>

  Now in a quadratic equation <math|a> cannot be zero. But <math|b> or
  <math|c> can. And when this occurs, the equation is easier to solve. Let's
  first see the case for <math|c> equals zero.

  <\equation*>
    a*x<rsup|2>+b*x=0
  </equation*>

  First we factorize <math|x> from two terms on the left.

  <\equation*>
    x*<around*|(|a*x+b|)>=0
  </equation*>

  Then, we use a little observation. See that if we have two factors, say
  <math|p> and <math|q>. And then we multiply v my them and get zero,
  <math|p*q=0>. Then at least one of them must be zero. The same thing also
  applies for the equation above. It's either <math|x=0>, or <math|a*x+b=0>.
  The first alternative is clear, it's done. For the second one, we can solve
  for <math|x>

  <\eqnarray*>
    <tformat|<table|<row|<cell|a*x+b>|<cell|=>|<cell|0>>|<row|<cell|a*x+b-b>|<cell|=>|<cell|0-b>>|<row|<cell|a*x>|<cell|=>|<cell|-b>>|<row|<cell|<cfrac|a*x|a>>|<cell|=>|<cell|<cfrac|-b|a>>>|<row|<cell|x>|<cell|=>|<cell|-<cfrac|b|a>>>>>
  </eqnarray*>

  Therefore we have two solution here, it's <math|x=0>, and
  <math|x=-<frac*|b|a>>.

  <subsection|Degenerate case, <math|b=0>>

  If <math|b=0>, then we have equation of the following form.

  <\equation*>
    a*x<rsup|2>+c=0
  </equation*>

  To solve it, we first solve for <math|x<rsup|2>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|a*x<rsup|2>+c>|<cell|=>|<cell|0>>|<row|<cell|a*x<rsup|2>+c-c>|<cell|=>|<cell|0-c>>|<row|<cell|a*x<rsup|2>>|<cell|=>|<cell|-c>>|<row|<cell|<cfrac|a*x<rsup|2>|a>>|<cell|=>|<cell|-<cfrac|
    c|a>>>|<row|<cell|x<rsup|2>>|<cell|=>|<cell|-<frac|c|a>>>>>
  </eqnarray*>

  Since the left hand side has an even exponent, to have a real solution, the
  left hand side must be positive. Therefore <math|a> and <math|c> must have
  opposite sign. If that's the case, then the solution is either plus or
  minus the square root of the left hand side.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x<rsup|2>>|<cell|=>|<cell|-<frac|c|a>>>|<row|<cell|x>|<cell|=>|<cell|\<pm\>
    <sqrt|-<frac|c|a>>>>>>
  </eqnarray*>

  Again, here we get two anser, it's either plus or minus the root.

  <subsection|Perfect square>

  Before we do the general case, let's see another special form of quadratic
  equation. The form is as follow.

  <\equation*>
    a*<around*|(|x+p|)><rsup|2>+c=0
  </equation*>

  The form is similar except that here we don't have the linear term, and
  there is additinal term <math|p> inside the square. Why this form? Well,
  because it's easy to solve it. And actually, a quadratic equation in the
  general form can be rewritten into this form.

  First, to solve it, we just need to first simplify for the square factor.

  <\eqnarray*>
    <tformat|<table|<row|<cell|a*<around*|(|x+p|)><rsup|2>+c>|<cell|=>|<cell|0>>|<row|<cell|a*<around*|(|x+p|)><rsup|2>+c-c>|<cell|=>|<cell|0-c>>|<row|<cell|<frac|a*<around*|(|x+p|)><rsup|2>|a>>|<cell|=>|<cell|<frac|-c|a>>>|<row|<cell|<around*|(|x+p|)><rsup|2>>|<cell|=>|<cell|-<cfrac|
    c|a>>>>>
  </eqnarray*>

  Next we take the square root on both sides, don't forget the plus minus
  sign.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|x+p|)><rsup|2>>|<cell|=>|<cell|-<cfrac|
    c|a>>>|<row|<cell|x+p>|<cell|=>|<cell|\<pm\>
    <sqrt|-<frac|c|a>>>>|<row|<cell|x+p-p>|<cell|=>|<cell|\<pm\>
    <sqrt|-<frac|c|a>>-p>>|<row|<cell|x>|<cell|=>|<cell|-p\<pm\>
    <sqrt|-<frac|c|a>>>>>>
  </eqnarray*>

  A little more complex, but notice that here we have two solutions. Of
  course if the term insdie the root is nonnegative.

  <subsection|Perfecting the Square>

  Now we learn how to change a general form of quadratic equation to perfect
  square. This way we can solve any quadratic equation.

  To do that we use the ollowing identity.

  <\equation*>
    <around*|(|x+p|)><rsup|2>=x<rsup|2>+2p+p<rsup|2>
  </equation*>

  Let's start with the general equation.

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|a*x<rsup|2>+b*x+c=0>>>>>
  </equation*>

  Then, since <math|a> is not zero we divide both sides by <math|a>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|a*x<rsup|2>+b*x+c<rsup|>>|<cell|=>|<cell|0>>|<row|<cell|<cfrac|a*x<rsup|2>+b*x+c|a>>|<cell|=>|<cell|<cfrac|0|a>>>|<row|<cell|<cfrac|a*x<rsup|2>|a>+<cfrac|b*x|a>+<cfrac|c|a>>|<cell|=>|<cell|0>>|<row|<cell|x<rsup|2>+<around*|(|<cfrac|b|a>|)>x+<cfrac|c|a>>|<cell|=>|<cell|0<text|>>>>>
  </eqnarray*>

  Next, we force the equation so that the left hand side is in the form of
  right hand side of the identity we use: <math|x<rsup|2>+2p+p<rsup|2>>. It's
  called the perfect square form. So first we introduce 2 divided by 2 into
  the coefficient of <math|x>. Which doesn't change anything.

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|x<rsup|2>+2<around*|(|<cfrac|b|2a>|)>x+<cfrac|c|a>>|<cell|=>|<cell|0<text|>>>>>>
  </equation*>

  And then we add both sides by <math|<around*|(|<cfrac|b|2a>|)><rsup|2>-<cfrac|c|a>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<table|<row|<cell|x<rsup|2>+2<around*|(|<cfrac|b|2a>|)>x+<cfrac|c|a>+<around*|(|<cfrac|b|2a>|)><rsup|2>-<cfrac|c|a>>|<cell|=>|<cell|<around*|(|<cfrac|b|2a>|)><rsup|2>-<cfrac|c|a><text|>>>|<row|<cell|x<rsup|2>+2<around*|(|<cfrac|b|2a>|)>x+<around*|(|<cfrac|b|2a>|)><rsup|2>+<cfrac|c|a>-<cfrac|c|a>>|<cell|=>|<cell|<around*|(|<cfrac|b|2a>|)><rsup|2>-<cfrac|c|a><text|>>>|<row|<cell|x<rsup|2>+2<around*|(|<cfrac|b|2a>|)>x+<around*|(|<cfrac|b|2a>|)><rsup|2>>|<cell|=>|<cell|<around*|(|<cfrac|b|2a>|)><rsup|2>-<cfrac|c|a>>>>>>>|<cell|>|<cell|>>>>
  </eqnarray*>

  Let's first combine the division on the right.

  <\eqnarray*>
    <tformat|<cwith|1|1|1|1|cell-halign|r>|<cwith|2|2|1|1|cell-halign|r>|<cwith|3|3|1|1|cell-halign|r>|<cwith|4|4|1|1|cell-halign|r>|<table|<row|<cell|x<rsup|2>+2<around*|(|<cfrac|b|2a>|)>x+<around*|(|<cfrac|b|2a>|)><rsup|2>>|<cell|=>|<cell|<around*|(|<cfrac|b|2a>|)><rsup|2>-<cfrac|c|a>>>|<row|<cell|x<rsup|2>+2<around*|(|<cfrac|b|2a>|)>x+<around*|(|<cfrac|b|2a>|)><rsup|2>>|<cell|=>|<cell|<cfrac|b<rsup|2>|<around*|(|2*a|)><rsup|2>>-<cfrac|4*c*a|4*a<rsup|2>>>>|<row|<cell|x<rsup|2>+2<around*|(|<cfrac|b|2a>|)>x+<around*|(|<cfrac|b|2a>|)><rsup|2>>|<cell|=>|<cell|<cfrac|b<rsup|2>|<around*|(|2*a|)><rsup|2>>-<cfrac|4*a*c|<around*|(|2*a|)><rsup|2>>>>|<row|<cell|x<rsup|2>+2<around*|(|<cfrac|b|2a>|)>x+<around*|(|<cfrac|b|2a>|)><rsup|2>>|<cell|=>|<cell|<cfrac|b<rsup|2>-4*a*c|<around*|(|2*a|)><rsup|2>>>>>>
  </eqnarray*>

  Notice that the left hand side is a perfect square form, so that we can
  change it using the identity.

  <\eqnarray*>
    <tformat|<cwith|1|1|1|1|cell-halign|r>|<table|<row|<cell|x<rsup|2>+2<around*|(|<cfrac|b|2a>|)>x+<around*|(|<cfrac|b|2a>|)><rsup|2>>|<cell|=>|<cell|<cfrac|b<rsup|2>-4*a*c|<around*|(|2*a|)><rsup|2>>>>|<row|<cell|<around*|(|x+<cfrac|b|2a>|)><rsup|2>>|<cell|=>|<cell|<cfrac|b<rsup|2>-4*a*c|<around*|(|2*a|)><rsup|2>>>>>>
  </eqnarray*>

  Then, we take the squareroot of both sides, and simplify for <math|x>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|x+<cfrac|b|2a>|)><rsup|2>>|<cell|=>|<cell|<cfrac|b<rsup|2>-4*a*c|<around*|(|2*a|)><rsup|2>>>>|<row|<cell|x+<cfrac|b|2a><rsup|>>|<cell|=>|<cell|\<pm\><sqrt|<cfrac|b<rsup|2>-4*a*c|<around*|(|2*a|)><rsup|2>>>>>|<row|<cell|x>|<cell|=>|<cell|-<cfrac|b|2a>\<pm\>
    <rsup|><cfrac|<sqrt|b<rsup|2>-4*a*c>|2*a>>>|<row|<cell|x>|<cell|=>|<cell|<cfrac|-b\<pm\>
    <sqrt|b<rsup|2>-4*a*c>|2*a>>>>>
  </eqnarray*>

  Notice again that here we have two solutions, again if the expression
  inside the squareroot is nonnegative.

  <subsection|The ABC Formula>

  By the way, the last equation is a formula to solve quadratic equation in
  the general form. Therefore to know what <math|x> is we just need to change
  the form into the general form, recognize the <math|a>, <math|b>, and
  <math|c>, and then use the above formula which is also called the ABC
  formula.

  For a quadratic equation with the form <math|a*x<rsup|2>+b*x+c=0> and
  <math|a\<neq\>0>, we have.

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|x<rsub|1,2>>|<cell|=>|<cell|<cfrac|-b\<pm\>
    <sqrt|b<rsup|2>-4*a*c>|2*a>>>>>>
  </equation*>

  Notice that in a quadratic equation, it's possible to not have a real
  solution, but if we have real solution it comes in pair, if you also count
  twin solutions as a pair.

  <subsection|Factorization Method>

  This is another method to solve the general case of quadratic equation. It
  uses the following identities.

  <\equation*>
    <around*|(|x-p|)>*<around*|(|x-q|)>=x<rsup|2>-<around*|(|p+q|)>x+p*q
  </equation*>

  If we see the right hand side it's almost the same with general quadratic
  equation, except that the quadratic coefficient is one. But that's not a
  problem since we can always change any quadratic equation into that form.\ 

  Moreover see that in the equation above <math|p> and <math|q> is the two
  solutions we are going to solve. Just substitute one of them to <math|x>,
  you will get zero.

  Let's see, we first start with general form and then divide both sides by
  <math|a>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|a*x<rsup|2>+b*x+c>|<cell|=>|<cell|0>>|<row|<cell|<cfrac|a*x<rsup|2>+b*x+c|a>>|<cell|=>|<cell|<cfrac|0|a>>>|<row|<cell|<cfrac|a|a>*x<rsup|2>+<cfrac|b|a>*x+<cfrac|c|a>>|<cell|=>|<cell|0>>|<row|<cell|x<rsup|2>+<cfrac|b|a>x+<cfrac|c|a>>|<cell|=>|<cell|0>>>>
  </eqnarray*>

  Now, see that <math|p+q=-<cfrac|b|a>> and <math|p*q=<cfrac|c|a>>. To find
  <math|p> and <math|q>, we write them as <math|p=-<cfrac|b|2a>+D> and
  <math|q=-<cfrac|b|2a>-D> which we can do, since <math|>their sum is
  <math|-<cfrac|b|a>>. Now we can find <math|D> and from it we can find the
  solutions.

  To find D, we multiply the solutions.

  <\eqnarray*>
    <tformat|<table|<row|<cell|p*q>|<cell|=>|<cell|<cfrac|c|a>>>|<row|<cell|<around*|(|-<cfrac|b|2*a>+D|)><around*|(|-<cfrac|b|2*a>-D|)>*<rsub|>>|<cell|=>|<cell|<cfrac|c|a>>>|<row|<cell|<around*|(|-<cfrac|b|2*a>|)><rsup|2>-D<rsup|2>*<rsub|>>|<cell|=>|<cell|<cfrac|c|a>>>|<row|<cell|<cfrac|b<rsup|2>|4*a>-D<rsup|2>>|<cell|=>|<cell|<cfrac|c|a>>>|<row|<cell|-D<rsup|2>>|<cell|=>|<cell|<cfrac|c|a>-<cfrac|b<rsup|2>|4*a>>>|<row|<cell|D<rsup|2>>|<cell|=>|<cell|<cfrac|b<rsup|2>|4
    a>-<cfrac|c|a>>>|<row|<cell|D<rsup|2>>|<cell|=>|<cell|<cfrac|b<rsup|2>-4*a*c|4*a<rsup|<rsup|2>>>>>|<row|<cell|D>|<cell|=>|<cell|\<pm\><sqrt|<cfrac|b<rsup|2>-4*a*c|4*a<rsup|<rsup|2>>>>>>>>
  </eqnarray*>

  Then our two solutions. <math|p> and <math|q>, has the following form.

  \;

  <\equation*>
    <tabular*|<tformat|<table|<row|<cell|x>|<cell|=>|<cell|<cfrac|-b\<pm\>
    <sqrt|b<rsup|2>-4*a*c>|2*a>>>>>>
  </equation*>

  \ It's the same with the previous form.

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
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|2>>
    <associate|auto-6|<tuple|1.5|3>>
    <associate|auto-7|<tuple|1.6|4>>
    <associate|auto-8|<tuple|1.7|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Quadratic
      Equation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Definition
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Solving degenerate case,
      <with|mode|<quote|math>|c=0> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Degenerate case,
      <with|mode|<quote|math>|b=0> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Perfect square
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Perfecting the Square
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>The ABC Formula
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Factorization Method
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>
    </associate>
  </collection>
</auxiliary>