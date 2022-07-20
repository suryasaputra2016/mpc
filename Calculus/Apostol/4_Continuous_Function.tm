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
  <math|\<delta\>\<gtr\>0> such that <math|0\<less\><around*|\||x-p|\|>\<delta\>\<Rightarrow\><around*|\||f<around*|(|x|)>-A|\|>\<less\>\<epsilon\>>.

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

    Say the right hand side limit is exists and it equals <math|A>.\ 
  </enumerate>

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
    <associate|auto-2|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>