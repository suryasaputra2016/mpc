<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Basic Properties of
  Numbers>|<doc-author|<author-data|<author-name|Surya Saputra>>>>

  The four basic math operations, equations, inequalitieas, are assumed to be
  familiar. We'll condense many properties of numbers into 12. One more
  property and it explains the whole properties numbers that we know.\ 

  <section|Addition>

  Additions between two numbers <math|a+b> exists, and we extends additions
  of many numbers <math|a<rsub|1>+a<rsub|2>+\<ldots\>+a<rsub|n> >as the tree
  of additions of two numbers. Additions of three numbers <math|a+b+c> for
  example, can be regarded as <math|a+<around*|(|b+c|)>> or
  <math|<around*|(|a+b|)>+c>. The first property tell them that they have the
  same result so we can ommit the parentheses.

  <\axiom>
    If <math|a>, <math|b>, <math|c> numbers, <math|a+(b+c)=(a+b)+c>\ 
  </axiom>

  \ We can use this axiom to prove that additions of any length are
  independent of the order of operation. For example, for 4 numbers we have
  all the following equal. To see it, you can treat an addition of two
  numbers as a number.

  <\eqnarray*>
    <tformat|<table|<row|<cell|a+b+c+d>|<cell|=>|<cell|<around*|(|<around*|(|a+b|)>+c|)>+d>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a+<around*|(|b+c|)>|)>+d>>|<row|<cell|>|<cell|=>|<cell|a+<around*|(|<around*|(|b+c|)>+d|)>>>|<row|<cell|>|<cell|=>|<cell|a+<around*|(|b+<around*|(|c+d|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a+b|)>+<around*|(|c+d|)>>>>>
  </eqnarray*>

  Here are the properties special number called additive identity or
  <math|0>, and the negative of a number.

  <\axiom>
    There is a number <math|0> that for all numbers <math|a>,
    <math|a+0=>0+a=a
  </axiom>

  <\axiom>
    For all numbers <math|a> there is a number <math|-a> such that
    <math|a+<around*|(|-a|)>=<around*|(|-a|)>+a=0>
  </axiom>

  By the three properties we can say that for any number <math|x>, and
  <math|a> if <math|a+x=a>, then <math|x=0>, in other words, additive
  identity is unique.

  <\eqnarray*>
    <tformat|<table|<row|<cell|a+x>|<cell|=>|<cell|a>>|<row|<cell|<around*|(|-a|)>+<around*|(|a+x|)>>|<cell|=>|<cell|<around*|(|-a|)>+a>>|<row|<cell|<around*|(|<around*|(|-a|)>+a|)>+x>|<cell|=>|<cell|0>>|<row|<cell|0+x>|<cell|=>|<cell|0>>|<row|<cell|x>|<cell|=>|<cell|0>>>>
  </eqnarray*>

  We define subtraction as addition with inverse.

  <\definition*>
    For two numbers <math|a> and <math|b>, <math|a-b=a+<around*|(|-b|)>>
  </definition*>

  Now, we can solve a linear equation with coefficient one.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x+6>|<cell|=>|<cell|8>>|<row|<cell|<around*|(|x+6|)>+<around*|(|-6|)>>|<cell|=>|<cell|8+<around*|(|-6|)>>>|<row|<cell|x+<around*|(|6+<around*|(|-6|)>|)>>|<cell|=>|<cell|8-6>>|<row|<cell|x+0>|<cell|=>|<cell|2>>|<row|<cell|x>|<cell|=>|<cell|2>>>>
  </eqnarray*>

  The fourth property is that additions commute, that additions doesn't
  depend on the order of numbers.

  <\axiom>
    For two numbers <math|a> and <math|b>, <math|a+b=b+a>.
  </axiom>

  Notice that subtraction is not commutative

  <section|Multiplication>

  The four properties of multiplication is similar with that of addition.

  <\axiom>
    If a, b, c numbers then <math|a\<cdot\><around*|(|b\<cdot\>c|)>=<around*|(|a\<cdot\>b|)>\<cdot\>c>.
  </axiom>

  <\axiom>
    There is a number <math|1> such that <math|a\<cdot\>1=1\<cdot\>a=a>.
  </axiom>

  <\axiom>
    For all numbers <math|a\<neq\>0> there is a number <math|a<rsup|-1>> such
    that <math|a\<cdot\>a<rsup|-1>=a<rsup|-1>\<cdot\>a=1>.
  </axiom>

  <\axiom>
    For two numbers <math|a> and <math|b>, <math|a\<cdot\>b=b\<cdot\>a>.
  </axiom>

  Above, 1 is called multiplicative inversea and <math|a<rsup|-1>> is the
  inverse of <math|a>. Also notice that <math|0> doesn't' have inverse.

  Division is defined as multiplication with inverse.

  <\definition*>
    For two numbers <math|a> and <math|b\<neq\>0>,
    <math|a/b=a\<cdot\>b<rsup|-1>>.
  </definition*>

  If we have <math|a\<cdot\>b=a\<cdot\>c> and <math|a\<neq\>0> then
  <math|b=c>.\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|a\<cdot\>b>|<cell|=>|<cell|a\<cdot\>c>>|<row|<cell|a<rsup|-1>\<cdot\><around*|(|a\<cdot\>b|)>>|<cell|=>|<cell|a<rsup|-1>\<cdot\><around*|(|a\<cdot\>c|)>>>|<row|<cell|<around*|(|a<rsup|-1>\<cdot\>a|)>\<cdot\>b>|<cell|=>|<cell|<around*|(|a<rsup|-1>\<cdot\>a|)>\<cdot\>c>>|<row|<cell|1\<cdot\>b>|<cell|=>|<cell|1\<cdot\>c>>|<row|<cell|b>|<cell|=>|<cell|c>>>>
  </eqnarray*>

  Also if <math|a\<cdot\>b=0> then at least one of the <math|a> and <math|b>
  must be zero (both of them can be zero), because if let say that <math|a>
  is not zero, we have <math|b=0>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|a\<cdot\>b>|<cell|=>|<cell|0>>|<row|<cell|a<rsup|-1>\<cdot\><around*|(|a\<cdot\>b|)>>|<cell|=>|<cell|a<rsup|-1>\<cdot\>0>>|<row|<cell|<around*|(|a<rsup|-1>\<cdot\>a|)>\<cdot\>b>|<cell|=>|<cell|0>>|<row|<cell|1\<cdot\>b>|<cell|=>|<cell|0>>|<row|<cell|b>|<cell|=>|<cell|0>>>>
  </eqnarray*>

  Now we can find the solution of the following equation.

  <\equation*>
    <around*|(|x-1|)>*<around*|(|x-2|)>=0
  </equation*>

  We see that either <math|x-1=0> or <math|x-2=0>, therefore <math|x=1> or
  <math|x=2>.

  <section|Addition and Multiplication>

  The distributive property of multiplication to addition.

  <\axiom>
    For numbers <math|a>, <math|b>, <math|c> we have
    <math|a\<cdot\><around*|(|b+c|)>=a\<cdot\>b+a\<cdot\>c>.
  </axiom>

  For all numers <math|a>, we have <math|a\<cdot\>0=0>

  <\eqnarray*>
    <tformat|<table|<row|<cell|a\<cdot\>0+a\<cdot\>0>|<cell|=>|<cell|a\<cdot\><around*|(|0+0|)>>>|<row|<cell|a\<cdot\>0+a\<cdot\>0>|<cell|=>|<cell|a\<cdot\>0>>|<row|<cell|-<around*|(|a\<cdot\>0|)>+<around*|(|a\<cdot\>0+a\<cdot\>0|)>>|<cell|=>|<cell|-<around*|(|a\<cdot\>0|)><rsup|>+a\<cdot\>0>>|<row|<cell|<around*|(|-<around*|(|a\<cdot\>0|)>+a\<cdot\>0|)>+a\<cdot\>0>|<cell|=>|<cell|0>>|<row|<cell|0+a\<cdot\>0>|<cell|=>|<cell|0>>|<row|<cell|a\<cdot\>0>|<cell|=>|<cell|0>>>>
  </eqnarray*>

  We have <math|<around*|(|-a|)>\<cdot\>b=-<around*|(|a\<cdot\>b|)>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|-a|)>\<cdot\>b+a\<cdot\>b>|<cell|=>|<cell|<around*|(|<around*|(|-a|)>+a|)>\<cdot\>b>>|<row|<cell|<around*|(|-a|)>\<cdot\>b+a\<cdot\>b>|<cell|=>|<cell|0\<cdot\>b>>|<row|<cell|<around*|(|-a|)>\<cdot\>b+a\<cdot\>b>|<cell|=>|<cell|0>>|<row|<cell|<around*|(|<around*|(|-a|)>\<cdot\>b+a\<cdot\>b|)>+<around*|(|-<around*|(|a\<cdot\>b|)>|)>>|<cell|=>|<cell|0+<around*|(|-<around*|(|a\<cdot\>b|)>|)>>>|<row|<cell|<around*|(|-a|)>\<cdot\>b+<around*|(|a\<cdot\>b+<around*|(|-<around*|(|a\<cdot\>b|)>|)>|)>>|<cell|=>|<cell|-<around*|(|a\<cdot\>b|)>>>|<row|<cell|<around*|(|-a|)>\<cdot\>b+0>|<cell|=>|<cell|-<around*|(|a\<cdot\>b|)>>>|<row|<cell|<around*|(|-a|)>\<cdot\>b>|<cell|=>|<cell|-<around*|(|a\<cdot\>b|)>>>>>
  </eqnarray*>

  Also, we have <math|<around*|(|-a|)>\<cdot\><around*|(|-b|)>=a\<cdot\>b>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|-a|)>\<cdot\><around*|(|-b|)>+<around*|(|-a|)>\<cdot\>b>|<cell|=>|<cell|<around*|(|-a|)>\<cdot\><around*|(|<around*|(|-b|)>+b|)>>>|<row|<cell|<around*|(|-a|)>\<cdot\><around*|(|-b|)>+<around*|(|-<around*|(|a\<cdot\>b|)>|)>>|<cell|=>|<cell|<around*|(|-a|)>\<cdot\>0>>|<row|<cell|<around*|(|-a|)>\<cdot\><around*|(|-b|)>+<around*|(|-<around*|(|a\<cdot\>b|)>|)>>|<cell|=>|<cell|0>>|<row|<cell|<around*|(|<around*|(|-a|)>\<cdot\><around*|(|-b|)>+<around*|(|-<around*|(|a\<cdot\>b|)>|)>|)>+a\<cdot\>b>|<cell|=>|<cell|0+a\<cdot\>b>>|<row|<cell|<around*|(|-a|)>\<cdot\><around*|(|-b|)>+<around*|(|-<around*|(|a\<cdot\>b|)>+a\<cdot\>b|)>>|<cell|=>|<cell|a\<cdot\>b>>|<row|<cell|<around*|(|-a|)>\<cdot\><around*|(|-b|)>+0>|<cell|=>|<cell|a\<cdot\>b>>|<row|<cell|<around*|(|-a|)>\<cdot\><around*|(|-b|)>>|<cell|=>|<cell|a\<cdot\>b>>>>
  </eqnarray*>

  The distributive property is used in factorization, and also multiplication
  of numbers with multiple digits.

  <\equation*>
    <around*|(|x+1<rsup|>|)>*<around*|(|x+2|)>=x<rsup|2>+3x+2
  </equation*>

  <section|Inequalities>

  For the next properties we consider <math|P> as collection of all positive
  numbers.

  <\axiom>
    For any number <math|a>, one of the following three applies.

    <\enumerate-numeric>
      <item><math|a=0>

      <item><math|a> is in <math|P>

      <item><math|-a> is in <math|P>
    </enumerate-numeric>
  </axiom>

  <\axiom>
    For <math|a> and <math|b> in <math|P> then <math|a+b> is also in
    <math|P>.
  </axiom>

  <\axiom>
    For <math|a> and <math|b> in <math|P> then <math|a\<cdot\>b> is also in
    <math|P>.
  </axiom>

  The three properties above are called trichotomy, closure under addition,
  and closure under multiplication.\ 

  <\definition*>
    Here are some definitions regarding inequalities symbols.

    <\enumerate-numeric>
      <item><math|>a\<gtr\>b if <math|a-b \<in\> P>

      <item><math|a\<less\>b> if <math|b\<gtr\>a>

      <item><math|a\<geqslant\>b> if <math|a\<gtr\>b> or <math|a=b>

      <item><math|a\<leqslant\>b> if <math|a\<less\>b> or <math|a=b>
    </enumerate-numeric>
  </definition*>

  See that <math|a\<gtr\>0> means <math|a\<in\> P>.

  We can recast the trichotomy proerties in terms of inequalities. For any
  numbers <math|a> and <math|b> then one of the following applies.

  <\enumerate-numeric>
    <item><math|a-b=0> hence <math|a=b>.

    <item><math|a-b \<in\> P> hence <math|a\<gtr\>b>

    <item><math|-<around*|(|a-b|)> \<in\> P> hence <math|b-a\<in\> P> thus
    <math|a\<less\>b>
  </enumerate-numeric>

  If we have <math|a\<less\>b> then <math|a+c\<less\>b+c>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|b-a>|<cell|\<in\>
    >|<cell|P>>|<row|<cell|<around*|(|b+c|)>-<around*|(|a+c|)>>|<cell|\<in\>
    >|<cell|P>>|<row|<cell|a-c>|<cell|\<less\>>|<cell|b+c>>>>
  </eqnarray*>

  Also, if we have <math|a\<less\>b> and <math|b\<less\>c> then
  <math|a\<less\>c>. Because <math|b-a\<in\> P> and <math|c-a\<in\> P>
  therefore <math|<around*|(|b-a|)>+<around*|(|c-b|)>\<in\> P> in other words
  <math|c-a\<in\> P> or <math|a\<less\>c>.

  Also, <math|a\<less\>0>, <math|b\<less\>0> then <math|a\<cdot\>b\<gtr\>0>.
  Because <math|0-a\<in\> P> and <math|0-b\<in\> P> means
  <math|<around*|(|0-a|)>*<around*|(|0-b|)>=<around*|(|-a|)>*<around*|(|-b|)>=a\<cdot\>b\<in\>
  P>. And as a special case <math|a<rsup|2>\<gtr\>0>, if <math|a\<neq\>0>.
  Hence <math|1\<gtr\>0> since <math|1=1<rsup|2>>.

  <section|Absolute Value Function>

  <\definition>
    Absolute value of . number <math|a> is defined as follows

    <\equation*>
      <around*|\||x|\|>=<around*|{|<tabular|<tformat|<table|<row|<cell|a>|<cell|if
      a\<geqslant\>0>>|<row|<cell|-a>|<cell|if a\<less\>0>>>>>|\<nobracket\>>
    </equation*>
  </definition>

  See that <math|<around*|\||a|\|>> <math|is always positive unless >
  <math|a=0>.

  <\theorem*>
    <dueto|Triangle Inequality>For numbers <math|a> and <math|b>,
    <math|<around*|\||a+b|\|>\<leqslant\><around*|\||a|\|>+<around*|\||b|\|>.>
  </theorem*>

  <\proof>
    We can prove it case by case. or using the following.

    See that <math|<around*|\||a|\|>=<sqrt|a>.>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||a+b|\|><rsup|2>>|<cell|=>|<cell|<around*|(|a+b|)><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|2>+2*a*b+b<rsup|2>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||a|\|><rsup|2>+2*<around*|\||a|\|>*<around*|\||b|\|>+<around*|\||b<rsup|>|\|><rsup|2>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|<around*|\||a|\|>+<around*|\||b|\|>|)><rsup|2>>>>>
    </eqnarray*>

    And since for nonnegative <math|x> and <math|y>,
    <math|x<rsup|2>\<less\>y<rsup|2>\<Rightarrow\>x\<less\>y>, we have
    <math|<around*|\||a+b|\|>\<leqslant\><around*|\||a|\|>+<around*|\||b|\|>>
  </proof>

  See that above, equality occurs if <math|a> and <math|b> both have the same
  sign, or at leasat one of them is zero.

  Notice that countng number are positive. We know that 1 is positive, hence
  <math|1+1=2> is also positive, and <math|1+2=3> is also positive and so on
  and so forth.

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
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
    <associate|auto-4|<tuple|4|?>>
    <associate|auto-5|<tuple|5|?>>
  </collection>
</references>