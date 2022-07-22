<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs|maxima>>

<\body>
  <doc-data|<doc-title|Continuous Functions>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <section|Continuity, Informal Definition>

  A function <math|f> is continuous at <math|p> if for every nearby point
  <math|x> from <math|p>, <math|f<around*|(|x|)>> is close to
  <math|f<around*|(|p|)>>, or as <math|x> move closer to <math|p> then
  <math|f<around*|(|x|)>> move closer to <math|f<around*|(|p|)>>, no sudden
  jumps. <math|f<around*|(|x|)>=x-<around*|\<lfloor\>|x|\<rfloor\>>> has jump
  discontinuity at every integer. For example <math|f<around*|(|2|)>=0> but a
  we approach <math|2> from left <math|f<around*|(|x|)>> approach 1. It is
  discontinuous at <math|2> from left. But it is continuous from right as you
  may try. But for <math|f> to be continuous on <math|2> it must be
  continuous on both sides. So it's not continuous at <math|2>.

  \ 

  <section|Limit of a function>

  Let <math|f> function defined on an open integral containing <math|p> but
  it doesn't have to be defined at <math|p>. The limit of <math|f> as
  <math|x> approach <math|p> is\ 

  <\equation*>
    lim<rsub|x\<rightarrow\>p>f<around*|(|x|)>=A
  </equation*>

  Then as <math|x> approach <math|p> <math|f<around*|(|x|)>> approach
  <math|A>.

  A neighborhood of a point of <math|p> <math|N<around*|(|p|)>> is an open
  interval with <math|p> in its midpoint. <math|x\<in\> N<around*|(|p|)>> if
  <math|p-r\<less\>x\<less\>p+r> or <math|<around*|\||x-p|\|>\<less\>r> for
  some positive <math|r>. Here, <math|r> is called radius and the
  neightborhood can also be written as <math|N<around*|(|p;r|)>>.

  Now the formal definition of a limit. Here <math|A\<in\> \<bbb-R\>> and
  <math|f> is defined at open interval containing <math|p> except may be at
  <math|p>.

  So, <math|lim<rsub|x\<rightarrow\>p>f<around*|(|x|)>=A> means for any
  neighborhood of <math|A>, <math|N<around*|(|A|)> >there is a neighborhood
  of <math|p> <math|N<around*|(|p|)>> such that <math|x\<in\>
  N<around*|(|p|)>> and <math|x\<neq\>p> then <math|f<around*|(|x|)>\<in\>
  N<around*|(|A|)>>.

  \ Using radius notation, <math|lim<rsub|x\<rightarrow\>p>f<around*|(|x|)>=A>
  means for every epsilon <math|\<epsilon\>\<gtr\>0>, there is
  <math|\<delta\>\<gtr\>0> such that <math|0\<less\><around*|\||x-p|\|>\<less\>\<delta\>\<Rightarrow\><around*|\||f<around*|(|x|)>-A|\|>\<less\>\<epsilon\>>.

  Notice that these are the same equations

  <\equation*>
    lim<rsub|x\<rightarrow\>p>f<around*|(|x|)>=A,lim<rsub|x\<rightarrow\>p><around*|(|f<around*|(|x|)>-A|)>=0,lim<rsub|x\<rightarrow\>p><around*|\||f<around*|(|x|)>-A|\|>=0,lim<rsub|h\<rightarrow\>0>f<around*|(|x+h|)>=A
  </equation*>

  Some limits

  <\enumerate>
    <item> For <math|f<around*|(|x|)>=c> a constant function for all <math|x>
    <math|lim<rsub|x\<rightarrow\>x> f<around*|(|x|)>=lim<rsub|x\<rightarrow\>x>
    c=c>

    <item>For <math|f<around*|(|x|)>=x> \ <math|lim<rsub|x\<rightarrow\>p>
    f<around*|(|x|)>=lim<rsub|x\<rightarrow\>p> x=p>
  </enumerate>

  We also define one sided limit. Right hand limit
  <math|lim<rsub|x\<rightarrow\>p<rsup|+>>f<around*|(|x|)>=A> means that for
  any neighborhood <math|N<around*|(|A|)>> there is a neighborhood
  <math|N<around*|(|p|)>> such that if <math|x\<in\> N<around*|(|p|)>> and
  <math|x\<gtr\>p> then <math|f<around*|(|x|)>\<in\> N<around*|(|A|)>>.
  Similarly, left hand limit <math|lim<rsub|x\<rightarrow\>p<rsup|->>f<around*|(|x|)>=A>
  means that for any neighborhood <math|N<around*|(|A|)>> there is a
  neighborhood <math|N<around*|(|p|)>> such that if <math|x\<in\>
  N<around*|(|p|)>> and <math|x\<less\>p> then <math|f<around*|(|x|)>\<in\>
  N<around*|(|A|)>>.

  For example for <math|f<around*|(|x|)>=<around*|\<lfloor\>|x|\<rfloor\>>>,
  for any integer <math|p> we have left-hand side limit
  <math|lim<rsub|x\<rightarrow\>p<rsup|->>f<around*|(|x|)>=p-1> and right
  hand side limit <math|lim<rsub|x\<rightarrow\>p<rsup|+>>f<around*|(|x|)>=p>.
  Since left and right hand side limit are not equal it doesn't have limit at
  <math|p>.

  <\enumerate>
    <item>Let <math|f<around*|(|x|)>=1/x<rsup|2>> for <math|x\<neq\>0> and
    <math|f<around*|(|0|)>=0>. It has no right hand or left hand side limit
    at <math|0>.

    Say the right hand side limit is exists and it equals <math|A\<gtr\>0>.
    Then let choose a neighborhood of <math|A>, <math|N<around*|(|A;1|)>>.
    Then there is no neighborhood around 0, <math|N(0;r)> such that
    x<math|\<in\> N<around*|(|0;r|)>>, <math|x\<gtr\>0> then
    <math|f<around*|(|x|)>> is in <math|N<around*|(|A,1|)>>. Say there is
    such a neighborhood then let <math|x=min<around*|(|<frac|r|2>,<frac|1|A+1>|)>>
    in <math|N<around*|(|0;r|)>>.

    Then if <math|<frac|r|2>\<less\><frac|1|A+1>> then
    <math|f<around*|(|x|)>=<frac|4|r<rsup|2>>\<gtr\><around*|(|A+1|)><rsup|2><neg|\<in\>>N<around*|(|A;1|)>>,
    else <math|f<around*|(|x|)>=<around*|(|A+1|)><rsup|2><neg|\<in\>>
    N<around*|(|A;1|)>>

    <item>Let <math|f<around*|(|x|)>=1> for <math|x\<neq\>0> and
    <math|f<around*|(|0|)>=0> then the right hand side and left hand side
    limit of <math|f> at 0 is 1, hence the limit exists which is
    <math|lim<rsub|x\<rightarrow\>0>f<around*|(|x|)>=1> however
    <math|f<around*|(|0|)>=0>.
  </enumerate>

  <section|Continuity of Functions>

  A function <math|f> is continuous at <math|p> if its limit at <math|p>
  exists and <math|lim <rsub|x\<rightarrow\>p>f<around*|(|x|)>=f<around*|(|p|)>>
  or for <math|N<around*|(|f<around*|(|p|)>|)>> there is
  <math|N<around*|(|p|)>> such that <math|x\<in\> N<around*|(|p|)>> then
  <math|f<around*|(|x|)>\<in\> N<around*|(|f<around*|(|p|)>|)>> or for every
  <math|\<epsilon\>\<gtr\>0> there is <math|\<delta\>\<gtr\>0> such that
  <math|<around*|\||x-p|\|>\<less\>\<delta\>> then
  <math|<around*|\||f<around*|(|x|)>-f<around*|(|p|)>|\|>\<less\>\<epsilon\>>.

  Examples of continuous function

  <\enumerate>
    <item>Constant function is continuous everywhere

    <item>identity function<space|1em>is continuous everywhere

    <item>Function <math|f<around*|(|x|)>=<around*|\<lfloor\>|x|\<rfloor\>>>
    is continuous except at <math|x\<in\> \<bbb-Z\>> where it only continuous
    from the right, here it has jump discontinuity because the value of limit
    from left to right doesn't equal.

    <item>Function <math|f<around*|(|x|)>=<dfrac|1|x>>is continuous except at
    <math|x=0> where it has infinite discontinuity because the value near the
    point is unbounded

    <item>Funciton <math|f<around*|(|x|)>=1> for <math|x\<neq\>0> and
    <math|f<around*|(|0|)>=0> has removeable continuty because we can remove
    the continuty by redefining the function in several point.
  </enumerate>

  <subsection|Theorem of Limits>

  Let <math|f> and <math|g> be functions that <math|lim
  <rsub|x\<rightarrow\>p>f<around*|(|x|)>=A> and <math|lim
  <rsub|x\<rightarrow\>p>g<around*|(|x|)>=B>. Then we have

  <\enumerate>
    <item><math|lim <rsub|x\<rightarrow\>p><around*|[|f<around*|(|x|)>+g<around*|(|x|)>|]>=A+B>

    <item><math|lim <rsub|x\<rightarrow\>p><around*|[|f<around*|(|x|)>-g<around*|(|x|)>|]>=A-B>

    <item><math|lim <rsub|x\<rightarrow\>p><around*|[|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>|]>=A\<cdot\>B>

    <item><math|lim <rsub|x\<rightarrow\>p><around*|[|f<around*|(|x|)>/g<around*|(|x|)>|]>=A/B>
    if <math|B\<neq\>0>
  </enumerate>

  We can use the theorems above to prove the followings. <math|If f> and
  <math|g> are continuous then <math|f+g>, <math|f-g>, <math|f\<cdot\>g> and
  <math|f/g> for <math|g\<neq\>0> is also continuous. Also plynomial
  functions are continuous, rational function are continuous for which the
  denominator is nonzero.\ 

  If we have a function squeesed between two others such as
  <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>\<leqslant\>h<around*|(|x|)>>
  for <math|x\<neq\>p> and <math|>

  <\equation*>
    lim<rsub|x\<rightarrow\>p>f<around*|(|x|)>=lim<rsub|x\<rightarrow\>p>h<around*|(|x|)>=A
  </equation*>

  then <math|lim<rsub|x\<rightarrow\>p>g<around*|(|x|)>=A>.

  Let <math|H<around*|(|x|)>=h<around*|(|x|)>-f<around*|(|x|)>> and
  <math|G<around*|(|x|)>=g<around*|(|x|)>-f<around*|(|x|)>> so that
  <math|0\<leqslant\>G<around*|(|x|)>\<leqslant\>H<around*|(|x|)>> and
  <math|lim<rsub|x\<rightarrow\>p>H<around*|(|x|)>=0>. Say we're given
  neighborhood around <math|N<around*|(|0|)>> such that we then can find
  neighborhood <math|N<rsub|2><around*|(|p|)>> such that when <math|x\<in\>
  N<rsub|2><around*|(|p|)>> then <math|H<around*|(|x|)>\<in\>
  N<around*|(|0|)>> since the limit of <math|H> in <math|p> is <math|0> but
  then <math|G(x)> is also in <math|N<around*|(|0|)>> since
  <math|0\<leqslant\>G<around*|(|x|)>\<leqslant\>H<around*|(|x|)>> thus,
  <math|lim<rsub|x\<rightarrow\>p>G<around*|(|x|)>=0> and
  <math|lim<rsub|x\<rightarrow\>p>g<around*|(|x|)>=A>.

  Say we have <math|f> integrable on <math|<around*|[|a,x|]>> for
  <math|x\<in\> <around*|[|a,b|]>> then <math|A(x)=<big|int><rsub|a><rsup|x>f<around*|(|t|)>d*t>
  is continuous on <math|<around*|(|a,b|)>> and has one-sided continuity on
  <math|a> and <math|b>. Consider <math|A<around*|(|x|)>-A<around*|(|p|)>>,
  <math|x\<gtr\>p>. Then since <math|f> is integrable hence bounded there is
  a number <math|M> such that <math|-M<around*|(|x-p|)>\<leqslant\>A<around*|(|x|)>-A<around*|(|p|)>\<leqslant\>M<around*|(|x-p|)>>.
  The limit of the squeezing function as <math|x> goes to <math|p> is zero
  hence so does <math|A<around*|(|x|)>-A<around*|(|p|)>>. Therefore
  <math|lim<rsub|x\<rightarrow\>p>A<around*|(|x|)>=A<around*|(|p|)>> the
  limit exists and equals to the function. (for <math|x\<less\>p> we can
  reverse the subtraction)

  Now, since sine and cosine can be written as integral both are continuous.
  Also since <math|cos x\<less\><dfrac|sin x|x>\<less\><dfrac|1|cos x>> and
  since cosine is continous hence the limit at 0 is the same as
  <math|cos<around*|(|0|)>> which is 1, we have
  <math|lim<rsub|x\<rightarrow\>0><dfrac|sin x|x>=1>.

  Also for <math|f<around*|(|x|)>=x<rsup|r>> where <math|r> is rational and
  <math|x\<gtr\>0> then <math|f> is continuous since it can be written as
  integral.

  \ Exercise

  <\equation*>
    lim<rsub|x\<rightarrow\>a><dfrac|sin x-sin
    a|x-a>=lim<rsub|x\<rightarrow\>a><dfrac|2*sin
    <around*|(|<frac|x-a|2>|)>cos<around*|(|<frac|x+a|2>|)>|x-a>=lim<rsub|x\<rightarrow\>a>cos<around*|(|<frac|x+a|2>|)>=cos
    a
  </equation*>

  <\equation*>
    lim<rsub|x\<rightarrow\>0><dfrac|1-cos
    x|x<rsup|2>>=lim<rsub|x\<rightarrow\>0><dfrac|2*sin<rsup|2><around*|(|<frac|x|2>|)>|x<rsup|2>>=lim<rsub|x\<rightarrow\>0><dfrac|*sin<rsup|2><around*|(|<frac|x|2>|)>|2<around*|(|<frac|x|2>|)><rsup|2>>=<frac|1|2>
  </equation*>

  <\equation*>
    lim<rsub|x\<rightarrow\>0><dfrac|1-<sqrt|1-x<rsup|2>>|x<rsup|2>>=lim<rsub|x\<rightarrow\>0><dfrac|1-<sqrt|1-x<rsup|2>>|x<rsup|2>><around*|(|<dfrac|1+<sqrt|1-x<rsup|2>>|1+<sqrt|1-x<rsup|2>>>|)>=lim<rsub|x\<rightarrow\>0><dfrac|x<rsup|2>|x<rsup|2><around*|(|1+<sqrt|1-x<rsup|2>>|)>>=<dfrac|1|2>
  </equation*>

  <section|Composite functions and continuity>

  Given two function <math|u<around*|(|x|)>> and <math|v<around*|(|x|)>> we
  can compose the two into new function <math|f<around*|(|x|)>=v<around*|[|u<around*|(|x|)>|]>>
  or <math|f<around*|(|x|)>=v*\<circ\>u<around*|(|x|)>> in which we apply
  <math|u> on <math|x> then the we apply <math|v> on the result of
  <math|u<around*|(|x|)>>. For example, if
  <math|u<around*|(|x|)>=1-x<rsup|2>> and <math|v<around*|(|x|)>=<sqrt|x>>
  then <math|f<around*|(|x|)>=<sqrt|1-x<rsup|2>>>. Notice that the domain of
  <math|v> must be compatible with the range of <math|u>. That is in our
  example since <math|v> only defined for <math|x\<gtr\>0>, then the domain
  of <math|u> must be defined so that <math|1-x<rsup|2>\<gtr\>0>.

  We can compose a composition (also applies for higer number of composition)
  and it has associative property, <math|u\<circ\><around*|(|v\<circ\>w|)>=<around*|(|u\<circ\>v|)>\<circ\>w>.
  However, composition is generally not commutative
  <math|u\<circ\>v\<neq\>v\<circ\>u>.

  If <math|u> and <math|v> are both continuous at <math|p> and
  <math|v<around*|(|p|)>> respectively then <math|u\<circ\>v> is also
  continuous at <math|p>. Hence <math|sin<around*|(|x<rsup|2>|)>> is
  continuous.

  <section|Bolzano Theorem>

  Sign preserving property: For <math|f> coninuous at <math|c> then there is
  an interval <math|<around*|(|c-\<delta\>,c+\<delta\>|)>> that <math|f> has
  the same sign as <math|f<around*|(|c|)>>. For let
  <math|f<around*|(|c|)>\<gtr\>0> then for
  <math|N<rsub|1><around*|(|f<around*|(|c|)>,\<epsilon\>|)>> there is
  <math|N<rsub|2><around*|(|c,\<delta\>|)>> such that <math|x\<in\>
  N<rsub|2>> then <math|f<around*|(|x|)>\<in\> N<rsub|1>>. Now we choose
  <math|\<epsilon\>=f<around*|(|c|)>/2>. Then for <math|x\<in\> \ N<rsub|2>>
  that is <math|x\<in\> <around*|(|c-\<delta\>,c+\<delta\>|)>> we have
  <math|f<around*|(|c|)>/2\<less\>f<around*|(|x|)>\<less\>3f<around*|(|c|)>/2>
  hence <math|f<around*|(|x|)>\<gtr\>0>, it has the same sign with
  <math|f<around*|(|c|)>>. We can do similar thing for
  <math|f<around*|(|c|)>\<less\>0>

  Bolzano theorem: For <math|f> continuous function on
  <math|<around*|[|a,b|]>> if <math|f<around*|(|a|)>> and
  <math|f<around*|(|b|)>> have different signs then there exists at least one
  <math|c\<in\> <around*|[|a,b|]>> such that <math|f<around*|(|c|)>=0>.
  Because, let <math|f<around*|(|a|)>\<less\>0> and
  <math|f<around*|(|b|)>\<gtr\>0>, and define <math|S> containing
  <math|x\<in\> <around*|[|a,b|]>> such that
  <math|f<around*|(|x|)>\<less\>0>, then it is nonempty since <math|a\<in\>
  S> and it is bounded by definition of <math|x>. Therefore we have
  <math|c=sup<around*|(|S|)>>.\ 

  Now, <math|c=0>, since if <math|c\<less\>0> then by sign preserving
  property there is <math|c<rprime|'>\<in\>
  <around*|(|c-\<delta\>,c+\<delta\>|)>> such that
  <math|f<around*|(|c<rprime|'>|)>\<less\>0> and we can choose
  <math|c<rprime|'>\<gtr\>c> therefore <math|c<rprime|'>\<in\> S> hence
  <math|c> is not upperbound of <math|S>. Now, if <math|c\<gtr\>0> then again
  by sign preserving property we can have <math|c<rprime|''>\<less\>c> and
  <math|f<around*|(|c<rprime|''>|)>\<less\>0> then <math|c> is not the least
  upper bound of <math|S> hence <math|c=0>.

  <section|Intermediate Value Theorem>

  Intermediate Value Theorem. Lef <math|f> be continuous on
  <math|<around*|[|a,b|]>> choose <math|x<rsub|1>\<less\>x<rsub|2>>, both on
  <math|<around*|[|a,b|]>> such that <math|f<around*|(|x<rsub|1>|)>\<neq\>f<around*|(|x<rsub|2>|)>>
  then <math|f> takes all value between <math|f<around*|(|x<rsub|1>|)>> and
  <math|f<around*|(|x<rsub|2>|)>>. Because let
  <math|f<around*|(|x<rsub|1>|)>\<less\>f<around*|(|x<rsub|2>|)>>, <math|k>
  be any value between <math|f<around*|(|x<rsub|1>|)><infix-and>f<around*|(|x<rsub|2>|)>>,
  and <math|g<around*|(|x|)>=f<around*|(|x|)>-k>. Then <math|g> is continuous
  on <math|<around*|[|a,b|]>> and <math|g<around*|(|x<rsub|1>|)>\<less\>0\<less\>g<around*|(|x<rsub|2>|)>>
  therefore there is <math|c> such that <math|g<around*|(|c|)>=0> hence
  <math|f<around*|(|c|)>=k>.

  Every positive numbers has one positive n-th root. That is for
  <math|a\<gtr\>0> and <math|n\<in\> \<bbb-Z\><rsup|+>> then there is exactly
  one <math|b\<gtr\>0> such that <math|b<rsup|n>=a>. Because choose
  <math|c\<gtr\>max<around*|(|a,1|)>> then
  <math|f<around*|(|0|)>=0\<less\>a\<less\>c\<less\>f<around*|(|c|)>=c<rsup|n>>
  then there is <math|b\<in\> <around*|[|0,c|]>> such that
  <math|f<around*|(|b|)>=b<rsup|n>=a>, so <math|b> exists. And since
  <math|f<around*|(|x|)>=x<rsup|n>> is increasing on <math|[0,c> only one
  such <math|b> satisfies the condition.

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
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|3.1|2>>
    <associate|auto-5|<tuple|4|?>>
    <associate|auto-6|<tuple|5|?>>
    <associate|auto-7|<tuple|6|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Continuity,
      Informal Definition> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Limit
      of a function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Continuity
      of Functions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Theorem of Limits
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>
    </associate>
  </collection>
</auxiliary>