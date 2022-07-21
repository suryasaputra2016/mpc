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

  Also for <math|f<around*|(|x|)>=x<rsup|r>> where <math|r> is rational then
  <math|f> is continuous since ___

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
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|?>>
    <associate|auto-4|<tuple|3.1|?>>
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
    </associate>
  </collection>
</auxiliary>