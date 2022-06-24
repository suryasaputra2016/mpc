<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Introduction>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <section|History>

  Calculus revolve around two concepts, integral calculus that deals with an
  area under a curve and differential calculus which is about the steepnes of
  line tangent to a curve.

  <with|gr-mode|<tuple|edit|cline>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-auto-crop|true|<graphics||<spline|<point|-0.4|1.6>|<point|1.3|3.8>|<point|3.6|2.3>|<point|5.7|2.7>|<point|6.6|4.2>>|<line|<point|0.273755|2.7>|<point|0.3|0.0>>|<line|<point|4.0049|2.1>|<point|4.0|0.0>>|<line|<point|7|4.2>|<point|4.4|1.2>>>>

  Integral calculus was born from method of exhaustion, a method of
  approximating area of a shape using series of polygon with more and more
  sides.

  <with|gr-mode|<tuple|group-edit|edit-props>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-auto-crop|true|<graphics||<carc|<point|-2|0>|<point|2.0|0.0>|<point|0.0|2.0>>|<carc|<point|-7|0>|<point|-3.0|0.0>|<point|-5.0|2.0>>|<carc|<point|3|0>|<point|7.0|0.0>|<point|5.0|2.0>>|<with|fill-color|#aaf|opacity|50%|<cline|<point|-6.4|1.42829>|<point|-6.4|-1.4>|<point|-3.6|-1.4>|<point|-3.6|1.42828568570857>>>|<with|fill-color|#aaf|opacity|50%|<cline|<point|0|2>|<point|-1.7|1.0>|<point|-1.7|-1.0>|<point|0.0|-2.0>|<point|1.73205080756888|-1.0>|<point|1.73205080756888|1.0>>>|<with|fill-color|#aaf|opacity|50%|<cline|<point|5|2>|<point|4.0|1.7>|<point|3.3|1.0>|<point|3.0|0.0>|<point|3.3|-1.05356537528528>|<point|4.1|-1.78605710994917>|<point|5.0|-2.0>|<point|6.0|-1.7>|<point|6.73205080756888|-1.0>|<point|7.0|0.0>|<point|6.73205080756888|1.0>|<point|6.0|1.73205080756888>>>>>

  Let's use it to calculate area under the parabola <math|x<rsup|2>> from
  <math|0> to <math|b>. We do that by slicing the area vertically into
  <math|n> rectangles. There are two ways to do that, one from below to get
  inner rectangles and one from above to get outer rectangles.\ 

  <with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|18140tmpt|0.039998gh>>|gr-geometry|<tuple|geometry|0.453335par|0.540003par|center>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-transformation|<tuple|<tuple|0.877582561890373|-0.186697098503681|-0.441580163137155|0.0>|<tuple|0.0|0.921060994002885|-0.38941834230865|0.0>|<tuple|0.479425538604202|0.341746746490327|0.808307066774345|0.0>|<tuple|0.0|0.0|0.0|1.0>>|<graphics||<spline|<point|0|0>|<point|4.0|2.0>|<point|6.0|7.0>>|<with|fill-color|#aaf|opacity|50%|<cline|<point|1|0>|<point|1.0|0.169697220176729>|<point|2.0|0.2>|<point|2.0|0.0>>>|<with|fill-color|#aaf|opacity|50%|<cline|<point|3|0>|<point|2.0|0.0>|<point|2.0|0.5>|<point|3.0|0.5>>>|<with|fill-color|#aaf|opacity|50%|<cline|<point|4|0>|<point|4.0|2.0>|<point|5.0|2.0>|<point|5.0|0.0>>>|<with|fill-color|#aaf|opacity|50%|<cline|<point|6|0>|<point|5.0|0.0>|<point|5.0|3.6>|<point|6.0|3.6>>>|<math-at|b|<point|6.00000661463156|-0.3>>|<math-at|0|<point|-0.2|-0.3>>>><with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|18140tmpt|0.039998gh>>|gr-geometry|<tuple|geometry|0.453335par|0.540003par|center>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-transformation|<tuple|<tuple|0.877582561890373|-0.186697098503681|-0.441580163137155|0.0>|<tuple|0.0|0.921060994002885|-0.38941834230865|0.0>|<tuple|0.479425538604202|0.341746746490327|0.808307066774345|0.0>|<tuple|0.0|0.0|0.0|1.0>>|gr-snap|<tuple|control
  point|grid curve point|curve-grid intersection|curve point|curve-curve
  intersection|text border point|text border>|gr-fill-color|#aaf|gr-opacity|50%|<graphics||<spline|<point|0|0>|<point|4.0|2.0>|<point|6.0|7.0>>|<with|fill-color|#aaf|opacity|50%|<cline|<point|6.00632|7>|<point|4.98833001786162|7.0>|<point|5.01375163790203|0.0>|<point|6.0|0.0088289388249042>>>|<with|fill-color|#aaf|opacity|50%|<cline|<point|5.01375|0>|<point|5.00083216150494|3.55745757492552>|<point|4.0|3.56556318602965>|<point|4.0|0.0076119580246623>>>|<with|fill-color|#aaf|opacity|50%|<cline|<point|3|0.00740124>|<point|3.0|1.0777948981441>|<point|2.0|1.06430091962015>|<point|2.0|0.0145366671445573>>>|<with|fill-color|#aaf|opacity|50%|<cline|<point|2|0.0145367>|<point|2.0|0.507577497529462>|<point|1.0|0.485090666834301>|<point|1.00906434134259|0.0>>>|<with|fill-color|#aaf|opacity|50%|<cline|<point|1.01576|0>|<point|1.00586640947973|0.171141712476601>|<point|0.0|0.152919413769615>|<point|-0.00834123152514449|0.0>>>|<with|opacity|50%|<math-at|0|<point|-0.205925|-0.3>>>|<with|opacity|50%|<math-at|b|<point|6.06871|-0.3>>>>>

  We can improve the approximation by slicing more thinly getting more
  rectangle.

  Here are the subdivision on the graph, which is also the lower corner of
  the rectangles.

  <\equation*>
    0,<dfrac|b|n>,<dfrac|2*b|n>,\<ldots\>,<dfrac|<around*|(|n-1|)>*b|n>,b
  </equation*>

  Then we can write the total are of the inner and outer rectangles as
  <math|s<rsub|n>> and <math|S<rsub|n>>.

  <\equation*>
    s<rsub|n>=<dfrac|b<rsup|3>|n<rsup|3>>*<around*|(|1<rsup|2>+2<rsup|2>+\<cdots\>+<around*|(|n-1|)><rsup|2>|)>
  </equation*>

  <\equation*>
    S<rsub|n>=<dfrac|b<rsup|3>|n<rsup|3>>*<around*|(|1<rsup|2>+2<rsup|2>+\<cdots\>+n<rsup|2>|)>
  </equation*>

  To simplify the expressions above we use the following equations for cube
  series .

  <\equation*>
    1<rsup|2>+2<rsup|2>+\<cdots\>+n<rsup|2>=<dfrac|n<rsup|3>|3>+<dfrac|n<rsup|2>|2>+<dfrac|n|6>
  </equation*>

  Which we can prove as follows

  <\equation*>
    3k<rsup|2>+3k+1=<around*|(|k+1|)><rsup|3>-k<rsup|3>
  </equation*>

  We can substitute <math|k> in the equation above with <math|1> up to
  <math|n> and then add them up. And since the right hand side is telescoping
  we get the followings.

  <\eqnarray*>
    <tformat|<table|<row|<cell|3*<around*|(|1<rsup|2>+2<rsup|2>+\<cdots\>+n<rsup|2>|)>+3*<around*|(|1+2+\<cdots\>+n|)>+<around*|(|1<rsub|1>+1<rsub|2>+\<cdots\>+1<rsub|n>|)>>|<cell|=>|<cell|<around*|(|n+1|)><rsup|3>-1<rsup|3>>>|<row|<cell|3*<around*|(|1<rsup|2>+2<rsup|2>+\<cdots\>+n<rsup|2>|)>+3*<dfrac|n<rsup|2>+n|2>+n>|<cell|=>|<cell|n<rsup|3>+3*n<rsup|2>+3n>>|<row|<cell|<around*|(|1<rsup|2>+2<rsup|2>+\<cdots\>+n<rsup|2>|)>+<dfrac|n<rsup|2>+n|2>+<dfrac|n|3>>|<cell|=>|<cell|<dfrac|n<rsup|3>|3>+n<rsup|2>+n>>|<row|<cell|1<rsup|2>+2<rsup|2>+\<cdots\>+n<rsup|2>>|<cell|=>|<cell|<dfrac|n<rsup|3>|3>+<dfrac|n<rsup|2>|2>+<dfrac|n|6>>>>>
  </eqnarray*>

  The equation can also be applied for cube series up to <math|n-1>. \ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|1<rsup|2>+2<rsup|2>+\<cdots\>+<around*|(|n-1|)><rsup|2>>|<cell|=>|<cell|<dfrac|<around*|(|n-1|)><rsup|3>|3>+<dfrac|<around*|(|n-1|)><rsup|2>|2>+<dfrac|<around*|(|n-1|)>|6>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|n<rsup|3>-3n<rsup|2>+3n-1|3>+<dfrac|n<rsup|2>-2n+1|2>+<dfrac|n-1|6>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|n<rsup|3>|3>-<dfrac|n<rsup|2>|2>+<dfrac|n|6>>>>>
  </eqnarray*>

  Then we can use the equations above for the following inequalites.

  <\equation*>
    1<rsup|2>+2<rsup|2>+\<cdots\>+<around*|(|n-1|)><rsup|2>\<leqslant\><dfrac|n<rsup|3>|3>\<leqslant\>1<rsup|2>+2<rsup|2>+\<cdots\>+n<rsup|2>
  </equation*>

  When we multiply all the expression by <math|<dfrac|b<rsup|3>|n<rsup|3>><rsup|>>
  we get the following for all <math|n>.

  <\equation*>
    s<rsub|n>\<leqslant\><dfrac|b<rsup|3>|3>\<leqslant\>S<rsub|n>
  </equation*>

  We can prove that the only number between the two sum of rectangles is
  <math|<dfrac|b<rsup|3>|3>>. Here's the proof. Say the number between the
  sum is <math|<dfrac|b<rsup|3>|3>+x> for some number <math|x>.

  <\equation*>
    s<rsub|n>\<leqslant\><dfrac|b<rsup|3>|3>+x\<leqslant\>S<rsub|n>
  </equation*>

  Since <math|S<rsub|n>-s<rsub|n>=<dfrac|b<rsup|3>|n>> then
  <math|<around*|(|<dfrac|b<rsup|3>|3>+x|)>-<dfrac|b<rsup|3>|3>=x\<leqslant\><dfrac|b<rsup|3>|n>>
  for all <math|n> then <math|x=0>. because say if <math|x\<neq\>0> then for
  we can choos a large number <math|n\<gtr\><dfrac|b<rsup|3>|x>> that the
  inequality is violated. Thus, the number between the sum must be
  <math|<dfrac|b<rsup|3>|3>>.

  Now the area under the curve is also between <math|S<rsub|n>> and
  <math|S<rsub|n>> therefore the area is <math|<dfrac|b<rsup|3>|3>>.

  Here, we actually come up with the integral of <math|x<rsup|2>> from
  <math|0> to <math|b>.

  <\equation*>
    <big|int><rsub|0><rsup|b>x<rsup|2>*d*x=<dfrac|b<rsup|3>|3>
  </equation*>

  Which actually a more general definition than area of arbitrary figures.We
  can think of it as summation of very thin rectangles with height
  <math|x<rsup|2>> and width <math|d*x> from <math|x=0> to <math|x=b>.

  <section|Set>

  Sets are well defined collection of things. Things in the set is called the
  element of a set. Element of a set can be anything but we don't
  particularly care about the type of element in the set. We call it abstract
  set.

  If x in a set S we write it as <math|x\<in\> S>. If <math|y> is not in the
  set <math|S> we write <math|y<neg|\<in\> >S>. We can write a set as its
  member inside a curly brace, <math|T=<around*|{|1,2,3|}>> is the set of the
  first three counting numbers. Two sets are equal if they have the same
  members.

  A set <math|A> is a subset of <math|B> if all element in <math|A> is also
  an element of <math|B>, we write it as <math|A\<subseteq\> B>. See that
  <math|A> can be the same set as <math|B>, if not then it's a proper set of
  <math|B>, <math|A\<subset\> B>. if <math|A\<subseteq\>B> and
  <math|B\<subseteq\>A> then <math|A=B.>

  Given a set we can form subset from it by defining extra properties on the
  elements. <math|B=<around*|{|x\|x\<in\> A,P <around*|(|x|)>|}>>, there we
  define <math|B> subset of <math|A> whose elements have property of
  <math|P>. Here <math|A> is also called universal set. If clear, the
  universal set can be omitted <math|B=<around*|{|x\|P <around*|(|x|)>|}>>.

  Set with no element is called empty set, <math|\<varnothing\> > or
  <math|<around*|{||}>>. It is a subset of all sets. Sets can be drawn in
  Venn Diagram (see below).

  Union of two sets <math|A> and <math|B> are a set <math|A\<cup\>B> whose
  elements are those that are either in <math|A> or in <math|B>. Intersection
  of the two sets <math|A\<cap\>B> is a set whose elements are in both
  <math|A> and <math|B>. If <math|A> and <math|B> doesn't have common
  element, <math|A\<cap\>B=\<varnothing\>>, then they are called disjoint.
  Difference of set <math|A-B> contains those which are in <math|A> but not
  in <math|B>.\ 

  Union and intersection of two sets are commutative and associative. They
  are also distributive to each other.

  <with|gr-mode|<tuple|group-edit|move>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-auto-crop|true|<graphics||<carc|<point|-6|2>|<point|-4.0|2.0>|<point|-5.0|3.0>>|<carc|<point|-5|3>|<point|-3.0|3.0>|<point|-4.0|4.0>>|<carc|<point|-2|2>|<point|0.0|2.0>|<point|-1.0|3.0>>|<carc|<point|-1|3>|<point|1.0|3.0>|<point|0.0|4.0>>|<carc|<point|2|2>|<point|4.0|2.0>|<point|3.0|3.0>>|<carc|<point|3|3>|<point|5.0|3.0>|<point|4.0|4.0>>|<math-at|A\<cup\>B|<point|-3.79998677073687|1.60001322926313>>|<math-at|A\<cap\>B|<point|9.92194734697471e-6|1.50000992194735>>|<math-at|A-B|<point|4.00000661463156|1.60000992194735>>|<math-at|A|<point|-5.79998677073688|3.00000661463156>>|<math-at|B|<point|-3.1|3.84421>>|<math-at|A|<point|-1.7|3.0>>|<math-at|A|<point|2.20000992194735|3.0>>|<math-at|B|<point|0.7|3.80000992194735>>|<math-at|B|<point|5.0|3.80000330731578>>>>

  If <math|\<frak-F\>> is a collection of sets then
  <math|<big|cup><rsub|A\<in\> \<frak-F\>>>A is a set whose elements is an
  element of one of the set in the collection. if
  <math|\<frak-F\>=<around*|{|A<rsub|1>,A<rsub|2>,\<ldots\>,A<rsub|n>|}>>
  then <math|<big|cup><rsub|A\<in\> \<frak-F\>>A=A<rsub|1>\<cup\>A<rsub|2>\<cup\>\<cdots\>\<cup\>A<rsub|n>>.
  We can also define the intersection of all sets in \<frak-F\>,
  <math|<big|cap><rsub|A\<in\> \<frak-F\>>A>.

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
    <associate|auto-2|<tuple|2|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>History>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Set>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>