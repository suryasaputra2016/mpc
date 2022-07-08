<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs|maxima>>

<\body>
  <doc-data|<doc-title|Application of Integral>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <section|Area between two graphs>

  For two functions <math|f> and <math|g> such that
  <math|f<around*|(|x|)>\<less\>g<around*|(|x|)>> for <math|x\<in\>
  <around*|[|a,b|]>> we can define the area <math|S> between the functions
  that is <math|<around*|(|x,y|)>> such that
  <math|a\<leqslant\>x\<leqslant\>b>, <math|f<around*|(|x|)>\<leqslant\>y\<leqslant\>g<around*|(|x|)>>
  can be calculated using the following.

  <\equation*>
    a<around*|(|S|)>=<big|int><rsub|a><rsup|b><around*|(|g<around*|(|x|)>-f<around*|(|x|)>|)>d*x
  </equation*>

  We can prove the formula above using <math|a<around*|(|S|)>=a<around*|(|G|)>-a<around*|(|F|)>>
  where <math|G> and <math|F> are ordinate set of <math|f> and <math|G> above
  <math|<around*|[|a,b|]>>. It is straight forward if both functions are
  nonnegative but if not then we can choose <math|f+c> and <math|g+c> instead
  of <math|f> and <math|g> such that both are nonnegative, the calculation
  nof area of <math|S> are the same.

  We can use it to calculate the area between <math|x<around*|(|x-2|)>> and
  <math|x/2> on <math|<around*|[|0,2|]>>. But sometimes we need to flipr the
  role of the two funtions on some subinterval as in calculating are between
  <math|x> and <math|x<rsup|3>/4> on <math|<around*|[|-1,2|]>> where we need
  to divide the interval into <math|<around*|[|-1,0|]>> and
  <math|<around*|[|0,2|]>>. In other words we calculate

  <\equation*>
    a<around*|(|S|)>=<big|int><rsub|a><rsup|b><around*|\||g<around*|(|x|)>-f<around*|(|x|)>|\|>d*x
  </equation*>

  The area of a circle with radius <math|r> <math|C<rsub|r> >can be
  calculated as area between <math|\<pm\><sqrt|r<rsup|2>-x<rsup|2>>> on
  <math|<around*|[|-r,r|]>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|a<around*|(|C<rsub|r>|)>>|<cell|=>|<cell|<big|int><rsub|-r><rsup|r><around*|(|<sqrt|r<rsup|2>-x<rsup|2>>-<around*|(|-<sqrt|r<rsup|2>-x<rsup|2>>|)>|)>d*x>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsub|-r><rsup|r>2<sqrt|r<rsup|2>-x<rsup|2>>d*x>>|<row|<cell|>|<cell|=>|<cell|r<big|int><rsub|-1><rsup|1>2<sqrt|r<rsup|2>-<around*|(|r*x|)><rsup|2>>d*x>>|<row|<cell|>|<cell|=>|<cell|r<rsup|2><big|int><rsub|-r><rsup|r>2<sqrt|1-x<rsup|2>>d*x>>|<row|<cell|>|<cell|=>|<cell|r<rsup|2>*a<around*|(|C<rsub|1>|)>>>|<row|<cell|>|<cell|\<equiv\>>|<cell|r<rsup|2>\<mathpi\>>>>>
  </eqnarray*>

  Above we define <math|\<mathpi\>> as area of a unit circle.

  The process above can be counted as contraction or expansion the
  transformation from <math|S> to <math|k*S> (where every point is multiplied
  by <math|k>) is called similarity transformation. If
  <math|0\<less\>k\<less\>1> it is called shrinking and if <math|k\<gtr\>1>
  it is called stretching.

  We see how area transform under similarity transformation.
  <math|g<around*|(|x|)>=k*f<around*|(|x/k|)>>.\ 

  <\equation*>
    a<around*|(|k*S|)>=<big|int><rsub|k*a><rsup|k*b>g<around*|(|x|)>d*x=k*<big|int><rsub|k*a><rsup|k*b>f<around*|(|x/k|)>*d*x=k<rsup|2><big|int><rsub|a><rsup|b>f<around*|(|x|)>*d*x=k<rsup|2>*a<around*|(|S|)>
  </equation*>

  We can calculate integral using our knowledge of are, for example say
  <math|S> is area under the curve <math|x<rsup|1/2> > on
  <math|<around*|[|0,a|]>>, and <math|U> is the rectangle below graph
  <math|g<around*|(|x|)>=a<rsup|1/2>> on <math|<around*|[|0,a|]>> and <math|T
  > is <math|U-S>. Therefore we have.

  <\eqnarray*>
    <tformat|<table|<row|<cell|a<around*|(|S|)>>|<cell|=>|<cell|a<around*|(|U|)>-a<around*|(|T|)>>>|<row|<cell|>|<cell|=>|<cell|a\<cdot\>a<rsup|1/2>-<big|int><rsub|0><rsup|a<rsup|1/2>>y<rsup|2>d*y>>|<row|<cell|>|<cell|=>|<cell|a<rsup|3/2>-<frac|a<rsup|3/2>|3>>>|<row|<cell|>|<cell|=>|<cell|2*a<rsup|3/2>/3>>>>
  </eqnarray*>

  Using the same procedure as before we have

  <\equation*>
    <big|int><rsub|a><rsup|b>x<rsup|1/2>d*x=<frac|2|3><around*|(|b<rsup|3/2>-a<rsup|3/2>|)>
  </equation*>

  In general we can show that for <math|a,b\<gtr\>0> and <math|n\<in\>
  \<bbb-Z\><rsup|+>>, the proof is similar to the previous example.

  <\equation*>
    <big|int><rsub|a><rsup|b>x<rsup|1/n>d*x=<dfrac|b<rsup|1+1/n>-a<rsup|1+1/n>|1+1/n>
  </equation*>

  <section|Trigonometric function>

  <subsection|The trigonometric function>

  All trigonometric function has period of <math|2\<mathpi\>>, A function has
  period <math|p> of for all <math|x> <math|f<around*|(|x+p|)>=f<around*|(|x|)>>.
  Here are the<nbsp>properties of sine and cosine.

  <\enumerate>
    <item>Domain: sine and cosine is defined for all real numbers

    <item>Special value: <math|cos 0=sin <frac|\<mathpi\>|2>=1> and <math|cos
    \<mathpi\>=-1>

    <item>Cosine of difference: <math|cos<around*|(|y-x|)>=cos y*cos x+sin
    y*sin x>

    <item>Fundamental inequality: <math|0\<less\>x\<less\><frac|\<mathpi\>|2>>then
    <math|0\<less\>cos x\<less\><dfrac|sin x|x>\<less\><dfrac|1|cos x>>
  </enumerate>

  From those 4 we can deduc all properties of trigonometry important for
  calculus. However, here we skip the proof of existence of this kind of
  function.

  We can prove the following

  <\enumerate>
    <item>Pythagorean: <math|sin<rsup|2> x+cos<rsup|2>x=1>

    Cosine of difference: <math|cos<around*|(|x-x|)>=cos x*cos x+sin x*sin x>

    Special value of <math|cos 0>: <math|1=cos<rsup|2>x+sin<rsup|2>x>

    <item>Special value: <math|sin 0=cos <frac|\<mathpi\>|2>=sin
    \<mathpi\>=0>

    Cosine of difference: <math|cos<around*|(|0-0|)>=cos 0*cos 0+sin 0*sin 0>

    Special value of <math|cos 0>: <math|1=1+sin<rsup|2>0> then <math|sin
    0=0>

    <item>Even-odd properties: <math|cos<around*|(|-x|)>=cos x>, <math|sin
    <around*|(|-x|)>=-sin x>

    <math|cos<around*|(|0-x|)>=cos 0*cos x+sin 0*sin x>

    <math|cos<around*|(|-x|)>=*cos x>

    \;

    <math|cos<around*|(|<frac|\<mathpi\>|2>-x|)>=cos <frac|\<mathpi\>|2>*cos
    x+sin <frac|\<mathpi\>|2>*sin x>

    <math|cos<around*|(|<frac|\<mathpi\>|2>-x|)>=*sin x>

    <math|sin<around*|(|-x|)>=cos<around*|(|<frac|\<mathpi\>|2>+x|)>=><math|cos
    <frac|\<mathpi\>|2>*cos x-sin <frac|\<mathpi\>|2>*sin x=-sin x>

    <item>Co-relations: <math|sin<around*|(|<frac|\<mathpi\>|2>+x|)>=cos x>,
    <math|cos<around*|(|<frac|\<mathpi\>|2>+x|)>=-sin x>

    <math|sin<around*|(|<frac|\<mathpi\>|2>+x|)>=cos
    <around*|(|<frac|\<mathpi\>|2>-<around*|(|<frac|\<mathpi\>|2>+x|)>|)>=cos<around*|(|-x|)>=cos
    x>

    -

    <math|cos<around*|(|<frac|\<mathpi\>|2>+x|)>=cos<around*|(|<frac|\<mathpi\>|2>-<around*|(|-x|)>|)>=cos
    <frac|\<mathpi\>|2>*cos <around*|(|-x|)>+sin <frac|\<mathpi\>|2>*sin
    <around*|(|-x|)>=-sin x>

    <item>Periodicity: <math|sin<around*|(|x+2\<mathpi\>|)>=sin x>,
    <math|cos<around*|(|x+2\<mathpi\>|)>=cos x>

    <math|><math|sin<around*|(|x+2\<mathpi\>|)>=cos<around*|(|x+<frac|3\<mathpi\>|2>|)>=-sin<around*|(|x+\<mathpi\>|)>=-cos<around*|(|x+<frac|\<mathpi\>|2>|)>=sin<around*|(|x|)>>

    <math|cos<around*|(|x+2\<mathpi\>|)>=-sin<around*|(|x+<frac|3\<mathpi\>|2>|)>=-cos<around*|(|x+\<mathpi\>|)>=sin<around*|(|x+<frac|\<mathpi\>|2>|)>=cos<around*|(|x|)>>

    <item>Addition formula: <math|cos<around*|(|x+y|)>=cos x*cos y-sin x*sin
    y>, <math|sin<around*|(|x+y|)>=sin x*cos y+cos x*sin y>

    <math|cos<around*|(|x+y|)>=cos<around*|(|x-<around*|(|-y|)>|)>=cos x*cos
    <around*|(|-y|)>-sin x*sin <around*|(|-y|)>=cos x*cos y-sin x*sin y>

    <math|sin<around*|(|x+y|)>=cos<around*|(|x+y-<frac|\<mathpi\>|2>|)>=cos
    x*cos<around*|(|y-<frac|\<mathpi\>|2>|)>-sin
    x*sin<around*|(|y-<frac|\<mathpi\>|2>|)>=cos x sin y+sin x**cos y>

    <item>Difference formula: <math|sin a-sin
    b=2*sin<frac|a-b|2>*cos<frac|a+b|2>>, <math|cos a-cos
    b=-2*sin<frac|a-b|2>sin<tfrac|a+b|2>>

    Let <math|<frac|a-b|2>=x,><math|<frac|a+b|2>=y> then <math|a=y+x,b=y-x>

    <\eqnarray*>
      <tformat|<table|<row|<cell|sin a-sin
      b>|<cell|=>|<cell|sin<around*|(|y+x|)>-sin<around*|(|y-x|)>>>|<row|<cell|>|<cell|=>|<cell|cos
      x*sin y+sin x*cos y-cos y sin<around*|(|-x|)>-sin
      y*cos<around*|(|-x|)>>>|<row|<cell|>|<cell|=>|<cell|2*sin x*cos
      y>>|<row|<cell|>|<cell|=>|<cell|2*sin<frac|a-b|2>*cos<frac|a+b|2>>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|cos a-cos b>|<cell|=>|<cell|cos
      <around*|(|y+x|)>-cos <around*|(|y-x|)>>>|<row|<cell|>|<cell|=>|<cell|cos
      y*cos x-sin y*sin x-cos y*cos x-sin y*sin
      x>>|<row|<cell|>|<cell|=>|<cell|-2*sin y*sin
      x>>|<row|<cell|>|<cell|=>|<cell|-2*sin<frac|a-b|2>sin<tfrac|a+b|2>>>>>
    </eqnarray*>

    <item>Sine is strictly increasing and cosine is strictly decreasing on
    <math|<around*|[|0,<dfrac|\<mathpi\>|2>|]>>

    Use number 7 for <math|0\<leqslant\>b\<less\>a\<leqslant\><frac|\<mathpi\>|2>>
    also<math|><math|<frac|a-b|2>,<frac|a+b|2>\<gtr\>0> from fundamental
    inequality, sine and cose on the interval is positive\ 

    Then <math|sin a-sin b\<gtr\>0> and <math|cos a-cos b\<less\>0>.\ 
  </enumerate>

  <subsection|Integration of sine and cosine>

  Sine and cosine are piecewise monotonic because they are piecewise
  monotonic by the above property 8 and co-relation property 4. Therefore
  they are integrable.

  Now here an important theorem we shall prove. For
  <math|0\<less\>a\<leqslant\><frac|\<mathpi\>|2>> and <math|n\<in\>
  \<bbb-Z\><rsup|+>>

  <\equation*>
    <dfrac|a|n><big|sum><rsub|k=1><rsup|n>cos<frac|k*a|n>\<less\>sin
    a\<less\><dfrac|a|n><big|sum><rsub|k=0><rsup|n-1>cos<frac|k*a|n>
  </equation*>

  \;

  \;

  \;

  \;

  \ 

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
    <associate|auto-3|<tuple|2.1|?>>
    <associate|auto-4|<tuple|2.2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Area
      between two graphs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>