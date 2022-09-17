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

  <section|Axiom of Real Number>

  <subsection|The field axioms>

  Along with the set of real number <math|\<bbb-R\>> we have two operations,
  addition <math|+> and multiplication <math|\<cdot\>> that form the sum and
  product of two real numbers which are also real numbers.

  <\enumerate>
    <item>Commutativity for addition and multiplication

    <\wide-tabular>
      <tformat|<cwith|1|1|1|-1|cell-halign|c>|<table|<row|<\cell>
        <math|a+b=b+a>
      </cell>|<\cell>
        <math|a\<cdot\>b=b\<cdot\>a>
      </cell>>>>
    </wide-tabular>

    <item>Associativity for addition and multiplication

    <\wide-tabular>
      <tformat|<cwith|1|1|1|-1|cell-halign|c>|<table|<row|<\cell>
        <math|a+<around*|(|b+c|)>=<around*|(|a+b|)>+c>
      </cell>|<\cell>
        <math|a\<cdot\><around*|(|b\<cdot\>c|)>=<around*|(|a\<cdot\>b|)>\<cdot\>c>
      </cell>>>>
    </wide-tabular>

    <item>Distributivity

    <\equation*>
      a\<cdot\><around*|(|b+c|)>=a\<cdot\>b+a\<cdot\>c
    </equation*>

    <item>Additional and Multiplicative identity 0 and 1.

    <\wide-tabular>
      <tformat|<cwith|1|1|1|-1|cell-halign|c>|<table|<row|<\cell>
        <math|a+0=0+a=a>
      </cell>|<\cell>
        <math|a\<cdot\>1=1\<cdot\>a=a>
      </cell>>>>
    </wide-tabular>

    <item>Existence of negative and reciprocal for all numbers and nonzero
    numbers

    <\wide-tabular>
      <tformat|<cwith|1|1|1|-1|cell-halign|c>|<table|<row|<\cell>
        <math|a+<around*|(|-a|)>=0>
      </cell>|<\cell>
        <math|a\<cdot\>a<rsup|-1>=1>
      </cell>>>>
    </wide-tabular>
  </enumerate>

  From the axiom above, we can derive many properties including the
  following.

  <\enumerate>
    <item>cancellation law for addition

    <item>subtraction: <math|a-b=a+<around*|(|-b|)>>

    <item><math|-<around*|(|-a|)>=a>

    <item><math|a*<around*|(|b+c|)>=a*b+a*c>

    <item><math|0\<cdot\>a=a\<cdot\>0=0>

    <item>cancellation law for multiplicati^on

    <item>division <math|a/b=a\<cdot\>b<rsup|-1> > for <math|b\<neq\>0>

    <item><math|<around*|(|a<rsup|-1>|)><rsup|-1>=a>

    <item><math|a\<cdot\>b=0\<Rightarrow\>a=0\<vee\>b=0>

    <item><math|<around*|(|-a|)>\<cdot\>b=-<around*|(|a\<cdot\>b|)>>,
    <math|<around*|(|-a|)>\<cdot\><around*|(|-b|)>=a\<cdot\>b>

    <item><math|<around*|(|a/b|)>+<around*|(|c/d|)>=<around*|(|a*d+b*c|)>/<around*|(|b*d|)>>
    for <math|b\<neq\>0>, <math|d\<neq\>0>

    <item><math|<around*|(|a/b|)>*<around*|(|c/d|)>=<around*|(|a*d|)>/<around*|(|b*c|)>>

    <item><math|-0=0>

    <item><math|1<rsup|-1>=1>

    <item><math|-<around*|(|a+b|)>=-a-b>

    <item><math|-<around*|(|a-b|)>=-a+b>

    <item><math|<around*|(|a*b|)><rsup|-1>=a<rsup|-1>*b<rsup|-1>>
  </enumerate>

  <subsection|The order axioms>

  There exists a set of positive numbers <math|P\<subset\>\<bbb-R\>> such
  that\ 

  <\enumerate>
    <item>Trichotomy: for all real numbers <math|x> exactly one of the
    following applies

    <\enumerate>
      <item><math|x\<in\> P>

      <item><math|x=0>

      <item><math|-x\<in\> P>
    </enumerate>

    <item>Closure under<nbsp>addition and multiplication

    For <math|a,b\<in\> P> then <math|a+b\<in\> P> and <math|a\<cdot\>b\<in\>
    P>
  </enumerate>

  Some definition.

  <\enumerate>
    <item><math|x\<less\>y> means <math|y-x\<in\> P>

    <item><math|x\<gtr\>y> means <math|y\<less\>x>

    <item><math|x\<leqslant\>y> means <math|x\<less\>y> or <math|x=y>

    <item><math|x\<geqslant\>y> means <math|x\<gtr\>y> or <math|x=y>
  </enumerate>

  Using the additional axioms we can prove the following properties.

  <\enumerate>
    <item>For two number <math|a,b> one of the following applies,
    <math|a\<gtr\>b>, <math|a=b>, <math|a\<less\>b>

    <item><math|a\<less\>b>, <math|b\<less\>c> then <math|a\<less\>c>

    <item><math|a\<less\>b> then <math|a+c\<less\>b+c>

    <item><math|a\<less\>b> and <math|c\<gtr\>0> then <math|a*c\<less\>b*c>

    <item><math|a\<less\>b> and <math|c\<less\>0> then <math|a*c\<gtr\>b*c>

    <item><math|a\<neq\>0> then <math|a<rsup|2>\<gtr\>0> in particular
    <math|1\<gtr\>0>

    <item><math|a\<less\>b> then <math|-a\<less\>-b> in particular
    <math|0\<less\>a> then <math|-a\<less\>0>

    <item><math|a*b\<gtr\>0> then both positive or both negative

    <item><math|a\<less\>c> and <math|b\<less\>d> then <math|a+b\<less\>c+d>

    <item>No real number <math|x> such that <math|x<rsup|2>+1=0>

    <item>sum of two negatives is negative

    <item><math|a\<gtr\>0> then <math|a<rsup|-1>\<gtr\>0> and if
    <math|a\<less\>0> then <math|a<rsup|-1>\<less\>0>

    <item><math|0\<less\>a\<less\>b> then
    <math|0\<less\>b<rsup|-1>\<less\>a<rsup|-1>>

    <item><math|a\<leqslant\>b>, <math|b\<leqslant\>c> and <math|a=c> then
    <math|b=a=c>

    <item>There is no maximum real number

    <item><math|0\<leqslant\>x\<less\>h> for all real number <math|h> then
    <math|x=0>
  </enumerate>

  <subsection|Integer, rational numbers, etc>

  A subset of real number called natural numbers <math|\<bbb-N\>> starts from
  <math|1>, which is guaranted by axiom, and then <math|1+1=2>, then
  <math|1+2 =3>, etc. <math|\<bbb-N\>=<around*|{|1,2,3\<ldots\>|}>>. The
  precise definition is as follows.

  First, we call a set inductive if it contains 1 and if it contains <math|x>
  it also contains <math|x+1>. Now natural numbers are intersections of all
  inductive sets in the real numbers.

  Integer, the negative of integers and zero form a set of numbers called
  integers <math|\<bbb-Z\>>, <math|\<bbb-Z\>=<around*|{|\<ldots\>,-2,-1,0,1,2,\<ldots\>|}>>.
  It's closed under addition, subtraction, and multiplication, but not
  division. Closed means the result of operation of two numbers in the set is
  also includes in the set

  The quetient of integers are called rational numbers <math|\<bbb-Q\>>.
  <math|\<bbb-Q\>=<around*|{|<dfrac|a|b>\|a,b\<in\> \<bbb-Z\>,b\<neq\>0|}>>.
  Rational numbers is closed under four mathematics operations. Because it
  satisfies all field and order axioms, it is called ordered field. Also, it
  includes integers in it. Real numbers not in <math|\<bbb-Q\>> is called
  irrational.

  Real numers can be represented in the real line.

  <with|gr-mode|<tuple|group-edit|move>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-arrow-begin|\<less\>|gr-line-width|2ln|gr-auto-crop|true|<graphics||<with|line-width|2ln|arrow-end|\<gtr\>|arrow-begin|\<less\>|<line|<point|-7|0>|<point|7.0|0.0>>>|<point|0|0>|<point|2|0>|<point|4|0>|<point|6|0>|<point|-2|0>|<point|-4|0>|<point|-6|0>|<math-at|0|<point|-0.182431538563302|-0.413665828813335>>|<math-at|1|<point|2.00000661463156|-0.400009921947347>>|<math-at|2|<point|4.00000992194735|-0.400009921947347>>|<math-at|3|<point|6.00000992194735|-0.400009921947347>>|<math-at|-1|<point|-2.19999007805265|-0.400009921947347>>|<math-at|-2|<point|-4.19999007805265|-0.400009921947347>>|<math-at|-3|<point|-6.2|-0.4>>>>

  On the line, 0 and 1 determines the scale and direction of the line. Each
  real numbers corresponds to a point on this line. the greatear the number
  the more on the right the number is. The line is helpful but not to be used
  in a proof.

  Upper bound <math|B> of a set <math|S> is a number such that for all
  <math|x\<in\> S>, <math|x\<leqslant\>B>. Here <math|S> is said to be
  bounded above by <math|B>, and if <math|B> is also in <math|S> then
  <math|B> is the maximum element or <math|B=max <around*|(|S|)>>.

  Least upper bound or supremum of set <math|S>, <math|sup <around*|(|S|)>>
  is an upperbound of <math|S> but no other upperbound of <math|S> is less
  than <math|sup <around*|(|S|)>>. If <math|S> has maximum element then it is
  the least upper bound, if it doesn't one have but bounded above it still
  have least upper bound. We can prove that least upperbound of a set is
  unique.

  \ Here the last axiom of real numbers.

  <\enumerate>
    <item>Every nonempty bounded above subset of real numbers have supremum.
  </enumerate>

  We can also define the greatest lower bound or infimum of a set <math|S>,
  <math|inf <around*|(|S|)>>, which is a lower bound of the set but no other
  lower bound is greater than it.

  From the axiom we can prove the followings.

  <\enumerate>
    <item>Every nonempty bounded below subset of real numbers have infimum.

    <item>Set of all numbers of the form <math|<around*|(|1+1/n|)><rsup|n>>
    for natural number <math|n> has supremum.
  </enumerate>

  We can prove that the set of natural numbers is unbounded above. Because
  say we have upper bound for the set, let <math|B> the least upper bound
  then <math|B-1> is not an upper bound so there is a natural number
  <math|n\<gtr\>B-1> but then <math|n+1> is also a natural number and it is
  greater than <math|B>. We have a contradiction.

  Thus for every real number <math|x> there is a natural number
  <math|n\<gtr\>x>. In particular for <math|x\<gtr\>0> and <math|y> arbitrary
  real number, there is a natural number <math|n>, such that
  <math|n*x\<gtr\>y>. It is called the archimedean property of real number.

  We can use the property to prove that for <math|a,x,y\<in\> \<bbb-R\>> and
  we have for all natural number <math|n>

  <\equation*>
    a\<leqslant\>x\<leqslant\>a+<dfrac|y|n>
  </equation*>

  then <math|x=a>. Since if <math|x\<gtr\>a> we have
  <math|n*<around*|(|x-a|)>\<leqslant\>y> for all <math|n> violating the
  archimedean principle.

  Below is some properties regarding supremum and infimum.

  <\enumerate>
    <item>For <math|S> nonempty, bounded above, there is <math|x\<in\> S>
    such that <math|x\<gtr\>sup<around*|(|S|)>-h>

    <item>For <math|S> nonempty, bounded below, there is <math|x\<in\> S>
    such that <math|x\<less\>inf<around*|(|S|)>+h>

    <item>For <math|C=<around*|{|a+b\|a\<in\> A,b\<in\> B|}>> we have
    <math|sup <around*|(|C|)>=sup <around*|(|A|)>+sup <around*|(|B|)>>

    For all <math|a,b> <math|sup <around*|(|A|)>+sup
    <around*|(|B|)>\<geqslant\>a+b> therefore <math|sup <around*|(|A|)>+sup
    <around*|(|B|)>> is an upperbound for <math|C> hence <math|sup
    <around*|(|A|)>+sup <around*|(|B|)>\<geqslant\>sup <around*|(|C|)>>.

    There is <math|a,b> such for any integer <math|n\<gtr\>0> such that
    <math|sup<around*|(|A|)>-<frac|1|n>\<less\>a> and <math|sup
    <around*|(|B|)>-<frac|1|n>\<less\>b> then <math|sup
    <around*|(|A|)>+sup<around*|(|B|)>\<less\>a+b+<frac|2|n>\<leqslant\>sup<around*|(|C|)>+<frac|2|n>>,
    therefore <math|sup<around*|(|C|)>\<leqslant\>sup <around*|(|A|)>+sup
    <around*|(|B|)>\<leqslant\>sup <around*|(|C|)>+<frac|2|n>>for all
    <math|n>. Hence <math|sup <around*|(|C|)>=sup <around*|(|A|)>+sup
    <around*|(|B|)>>.

    <item>For <math|C=<around*|{|a+b\|a\<in\> A,b\<in\> B|}>> we have
    <math|inf <around*|(|C|)>=inf <around*|(|A|)>+inf <around*|(|B|)>>

    <item>For two nonempty set <math|S,T> so that for every
    <math|s\<in\>S,t\<in\> T> we have <math|s\<leqslant\>t> then <math|sup
    <around*|(|s|)>\<leqslant\>inf <around*|(|t|)>>

    <math|t>'s are upperbounds for <math|S>, so <math|sup
    <around*|(|S|)>\<leqslant\>t> for all <math|t>, hence <math|sup
    <around*|(|S|)>> is a lower bound for <math|t>, therefore <math|sup
    <around*|(|S|)>\<leqslant\>inf <around*|(|T|)>>

    \ <item>For two real numbers <math|x\<less\>y> there is <math|z> such
    that <math|x\<less\>z\<less\>y>.

    <item>For arbitrary real numbers <math|x> there is two integers
    <math|m,n> such that <math|m\<less\>x\<less\>n>

    <item>For <math|x\<gtr\>0> there is natural numbers <math|n> such that
    <math|1/n\<less\>x>

    <item>For arbitrary real number <math|x>, there is integer <math|n> such
    that <math|n\<leqslant\>x\<less\>n+1>, <math|n > is called the greatest
    integer in <math|x> and written as <math|<around*|\<lfloor\>|x|\<rfloor\>>>.

    Consider the set of integers greater than <math|x>, it is non empty since
    integers are unbounded above. Then it has the minimum element, let's call
    it <math|n+1>, therefore we have <math|n\<less\>x\<less\>n+1>.

    <item>For two arbitrary real numbers <math|x\<less\>y> there is rational
    number <math|r> such that <math|x\<less\>r\<less\>y>.

    First, we show that if <math|y<rprime|'>-x<rprime|'>>\<gtr\>1 then there
    is an integer <math|p> such that <math|x<rprime|'>\<less\>p\<less\>y<rprime|'>>.
    First consider set of integer greater than <math|x<rprime|'>>. It's
    nonempty, so let's call it's minimum <math|p>, then
    <math|x<rprime|'>\<less\>p> and \ <math|p-1\<less\>x<rprime|'>> hence
    <math|p\<less\>x<rprime|'>+1\<less\>y<rprime|'>>. Therefore
    <math|x<rprime|'>\<less\>p\<less\>y<rprime|'>>.

    Next, we have <math|y-x\<gtr\>0> hence by Archimedean property there is a
    natural number <math|q> such that <math|q*<around*|(|y-x|)>=q*y-q*x\<gtr\>1>.
    Thus there is an integer <math|p> such that
    <math|q*x\<less\>p\<less\>q*y>.therefore
    <math|x\<less\><dfrac|p|q>\<less\>y>.

    <item>For two arbitrary real numbers <math|x\<less\>y> there is
    irrational number <math|z> such that <math|x\<less\>z\<less\>y>.

    Define <math|x<rprime|'>=x+<sqrt|2>> and <math|y<rprime|'>=y+<sqrt|2>>.
    Then by the previous number there is rational numbers between
    <math|x<rprime|'>> and <math|y'> let's call it <math|m>. Thus,
    <math|m+<sqrt|2> >is irrational numbers between <math|x> and <math|y>.

    <item>Rational numbers satifes archimedean property of number

    for <math|r>, <math|p\<gtr\>0> rational numbers there is a natural number
    <math|n> such that <math|n*p\<gtr\>r.> Proof. say there is no natural
    number then for all natural number <math|n>, we have
    <math|n\<leqslant\>r/p>. But natural number is unbounded from above,
    therefore we have contradiction.
  </enumerate>

  <subsection|Root>

  We see that <math|x<rsup|2>=2> has no solution in rational numbers. But in
  real numbers equation of the form <math|x<rsup|2>=a> has a solution as long
  as <math|a\<geqslant\>0>. If <math|a=0> then <math|x=0>, if
  <math|a\<gtr\>0> then there are two solution, because if <math|y<rsup|2>=a>
  then <math|x<rsup|2>=y<rsup|2>\<Rightarrow\>x<rsup|2>-y<rsup|2>=0\<Rightarrow\><around*|(|x+y|)>*<around*|(|x-y|)>=0>.
  That is both <math|y> and <math|-y> is the root of <math|a>.

  Every nonnegative real number <math|a> has a unique nonnegative squareroot
  that we write as <math|<sqrt|a>>. Let's see the proof.

  If <math|a=0\<Rightarrow\><sqrt|a>=0>.

  If <math|a\<gtr\>0> then define <math|A=<around*|{|x\|x<rsup|2>\<less\>a|}>>.
  The set <math|A> is bounded from above by <math|1+a> since
  <math|<around*|(|1+a|)><rsup|2>\<gtr\>a>. Also, <math|A> is nonempty
  because <math|a/<around*|(|1+a|)>> is in <math|A>, see that
  <math|<around*|(|1+a|)><rsup|2>\<gtr\>a> hence
  <math|<around*|(|1+a|)><rsup|2>*a\<gtr\>a<rsup|2>> therefore
  <math|a\<gtr\><around*|(|a/<around*|(|1+a|)>|)><rsup|2>>. Therefore
  <math|A> has supremum <math|b>

  Next we prove that <math|b<rsup|2>=a>. If <math|b<rsup|2>\<gtr\>a> then let
  <math|c=b-<around*|(|b<rsup|2>-a|)>/<around*|(|2b|)>>. Then
  <math|c\<less\>b> but <math|c<rsup|2>\<gtr\>a> hence <math|c\<gtr\>x> for
  all <math|x\<in\> A>. <math|b > is not the least upper bound. If
  <math|b<rsup|2>\<less\>a>, let <math|c\<less\>b> and
  <math|c\<less\><around*|(|a-b<rsup|2>|)>/<around*|(|3b|)>>. Then
  <math|<around*|(|b+c|)><rsup|2>\<less\>a> so <math|b\<less\>b+c\<in\>A >.
  <math|b> is not an upper bound. Thus <math|b<rsup|2>=a> and
  <math|<sqrt|a>\<equiv\>b>. End of proof.

  The least upper bound axiom can also be used to proof the existence of
  higher order root. For <math|n> odd for example for all <math|x> real
  numbers, there is one real number <math|y> such that <math|y<rsup|n>=x>.
  For <math|n> even then <math|x> must be nonnegative and if it is it has the
  positive roots and negative roots <math|y> and <math|-y>, because
  <math|y<rsup|n>=<around*|(|-y|)><rsup|n>=x>. We<space|1em>define
  <math|<sqrt|x|n>> as positive real roots for even <math|n>. As additional
  information <math|a<rsup|<frac|m|n>>=<sqrt|a<rsup|m>|n>> and
  <math|a<rsup|-n>=1/a<rsup|m>>.

  <subsection|Decimals>

  Real number <math|r> can be written as <math|r=a<rsub|0>.a<rsub|1>a<rsub|2>a<rsub|3>\<ldots\>a<rsub|n>>
  where <math|0\<leqslant\>a<rsub|i>\<leqslant\>9> and <math|a<rsub|i>\<in\>
  \<bbb-Z\>>. The value is equivalent to the following.

  <\equation*>
    r=a<rsub|0>+<dfrac|a<rsub|1>|10>+<dfrac|a<rsub|2>|10<rsup|2>>+\<cdots\>+<dfrac|a<rsub|n>|10<rsup|n>>
  </equation*>

  The form is called finite decimal representation, and examples includes
  0.5, 0.02, 7.25. All numbers of this form is rational. But some rational
  like <math|1/3> cannot be written in this form.\ 

  But any real number can be approximated uisng this form and the accuracy
  can be tweaked by choosing <math|n>. Any number <math|x> is located between
  two consecutive integers <math|a<rsub|0>\<less\>x\<less\>a<rsub|0>+1>. We
  then subdivide the segment into 10 equal parts and the integer is inside
  one of the segment <math|a<rsub|0>+<dfrac|a<rsub|1>|10>\<less\>x\<less\>a<rsub|0>+<dfrac|a<rsub|1>+1|10>>.
  We can repeat the process <math|n> times and get the following.

  <\equation*>
    a<rsub|0>+<dfrac|a<rsub|1>|10>+<dfrac|a<rsub|2>|10<rsup|2>>+\<cdots\>+<dfrac|a<rsub|n>|10<rsup|n>>\<leqslant\>x\<leqslant\>a<rsub|0>+<dfrac|a<rsub|1>|10>+<dfrac|a<rsub|2>|10<rsup|2>>+\<cdots\>+<dfrac|a<rsub|n>+1|10<rsup|n>>
  </equation*>

  The length of the interval is <math|10<rsup|-n>>, so if <math|n> is large
  enough we can be as accurate as possible. Using that we actually have
  <math|1/3=0.3333\<ldots\>> and all ral numbers can be said to have infinite
  decimal representations. The process is also called the sequence of nested
  intervals.

  The decimal expansion is actually defined by the axiom of least upper
  bound. Now consider the set <math|S=<around*|{|a<rsub|0>,a<rsub|0>.a<rsub|1>,a<rsub|0>.a<rsub|1>a<rsub|2>,\<ldots\>|}>>
  with the condition above. Then <math|x> is actually the supremum of
  <math|S>. For example if <math|x=1/8> then <math|x=0.12500\<ldots\>>. If we
  change the inequalities with strict inequality we get
  <math|x=0.124999\<ldots\>> But <math|x> is still the supremum of <math|S>.
  Hence a real number can have two different decimal representation.

  <section|Mathematical Induction>

  Principle of Mathematical Induction. Let <math|S> be a subset of natural
  number that

  <\enumerate>
    <item><math|a\<in\> S>

    <item>if <math|k\<in\> S> then <math|k+1\<in\> S>
  </enumerate>

  Well orderding principle. Nonempty subset of natural number contains the
  least element. Well ordering principle can be derived from mathematical
  induction. Also vice versa. But first let's proof the followings using well
  ordering principle.

  <\equation*>
    1<rsup|2>+2<rsup|2>+\<cdots\>+<around*|(|n-1|)><rsup|2>\<leqslant\><dfrac|n<rsup|3>|3>\<leqslant\>1<rsup|2>+2<rsup|2>+\<cdots\>+n<rsup|2>
  </equation*>

  Define <math|S> the set of natural number that don't satisfy the
  inequality. Note that 1 is not in <math|S> since it satisfies the
  inequality, we can check. Say <math|S > is nonempty this it has its
  smallest member <math|k>. Hence <math|k-1> satisfies the inequality since
  it's not in <math|S>. But if <math|k-1> satisfies the inequality <math|k>
  also satisfies the inequality, the proof is skipped. Hence we have a
  contradiction. <math|S> is empty and the inequality applies for all natural
  numbers.

  Let's proof the following using induction

  <\enumerate>
    <item><math|1-4+9-16+\<cdots\>\<pm\>n<rsup|2>=<around*|(|-1|)><rsup|n+1>*<around*|(|1+2+\<cdots\>+n|)>>

    Base case: <math|1=<around*|(|-1|)><rsup|2>*1>

    Assume <math|1-\<cdots\>-<around*|(|2k|)><rsup|2>=-<around*|(|1+\<cdots\>+2k|)>>

    Then <math|1-\<cdots\>-<around*|(|2k|)><rsup|2>+<around*|(|2k+1|)><rsup|2>=-<around*|(|1+\<cdots\>+2k|)>+<around*|(|2k+1|)><rsup|2>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|1-\<cdots\>-<around*|(|2k|)><rsup|2>+<around*|(|2k+1|)><rsup|2>>|<cell|=>|<cell|-<around*|(|1+\<cdots\>+2k|)>+<around*|(|2k+1|)><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|-<dfrac|2k*<around*|(|2k+1|)>|2>+<around*|(|2k+1|)>*<around*|(|2k|)>+2k+1>>|<row|<cell|>|<cell|=>|<cell|<dfrac|2k*<around*|(|2k+1|)>|2>+<around*|(|2k+1|)>>>|<row|<cell|>|<cell|=>|<cell|1+2+\<cdots\>+<around*|(|2k+1|)>>>>>
    </eqnarray*>

    It also works for <math|2k+1>.

    <item><math|1+<frac|1|2>+\<cdots\>+<frac|1|2<rsup|n>>=2-<frac|1|2<rsup|n>>>

    <item><math|<around*|(|1-<frac|1|2>|)>*<around*|(|1-<frac|1|3>|)>*\<cdots\>**<around*|(|1-<frac|1|n>|)>=<frac|1|n>>

    <item><math|<around*|(|1-<frac|1|4>|)>*<around*|(|1-<frac|1|9>|)>*\<cdots\>**<around*|(|1-<frac|1|n<rsup|2>>|)>=<dfrac|n+1|2n>>

    <item><math|(1+x)<rsup|n>\<gtr\>1+n*x+n*x<rsup|2>> for <math|x\<gtr\>0>,
    <math|n\<geqslant\>3>
  </enumerate>

  <section|Summation>

  We can write summation notation using sigma.

  <\equation*>
    <big|sum><rsup|n><rsub|i=1>a<rsub|i>=a<rsub|1>+a<rsub|2>+\<cdots\>+a<rsub|n>
  </equation*>

  The notation can be defined more formally using recursion.

  <\enumerate>
    <item><math|<big|sum><rsub|i=1><rsup|1>a<rsub|i>=a<rsub|1>>

    <item><math|<big|sum><rsub|i=1><rsup|k+1>a<rsub|i>=<big|sum><rsub|i=1><rsup|k>a<rsub|i>+a<rsub|k+1>>
  </enumerate>

  Summation is additive, homogeneous and telescoping.

  <\enumerate>
    <item><math|<big|sum><around*|(|a<rsub|i>+b<rsub|i>|)>=<big|sum>a<rsub|i>+<big|sum>b<rsub|i>>

    <item><math|<big|sum>c*a<rsub|i>=c*<big|sum>c<rsub|i>>

    <item><math|<big|sum><rsub|i=1><rsup|n>a<rsub|i>=a<rsub|n>-a<rsub|0>>
  </enumerate>

  Let's prove the formula

  <\enumerate>
    <item><math|<big|sum><rsub|k=1><rsup|2n><around*|(|-1|)><rsup|k>*<around*|(|2k+1|)>=2n>

    <item><math|<big|sum><rsub|k=n+1><rsup|2n><dfrac|1|k>=<big|sum><rsub|m=1><rsup|2n><dfrac|<around*|(|-1|)><rsup|m+1>|m>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|k=n+2><rsup|2n+2><dfrac|1|k>-<big|sum><rsub|k=n+1><rsup|2n><dfrac|1|k>>|<cell|=>|<cell|<dfrac|1|2n+2>+<dfrac|1|2n+1>-<dfrac|1|n+1>>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|m=1><rsup|2n+2><dfrac|<around*|(|-1|)><rsup|m+1>|m>-<big|sum><rsub|m=1><rsup|2n><dfrac|<around*|(|-1|)><rsup|m+1>|m>>|<cell|=>|<cell|-<dfrac|1|2n+2>+<dfrac|1|2n+1>>>>>
    </eqnarray*>

    <item><math|2*<around*|(|<sqrt|n+1>-<sqrt|n>|)>\<less\><dfrac|1|<sqrt|n>>\<less\>2*<around*|(|<sqrt|n>-<sqrt|n-1>|)>>for
    <math|n\<geqslant\>1>

    The right inequality (from bottom to top)

    <\eqnarray*>
      <tformat|<table|<row|<cell|<dfrac|1|<sqrt|n>>>|<cell|\<less\>>|<cell|2*<around*|(|<sqrt|n>-<sqrt|n-1>|)>>>|<row|<cell|1>|<cell|\<less\>>|<cell|2*<around*|(|n-<sqrt|n><sqrt|n-1>|)>>>|<row|<cell|2<sqrt|n><sqrt|n-1>>|<cell|\<less\>>|<cell|2n-1>>|<row|<cell|2n<around*|(|n-1|)>>|<cell|\<less\>>|<cell|4n<rsup|2>-4n+1>>|<row|<cell|2n<rsup|2>-2n>|<cell|\<less\>>|<cell|4n<rsup|2>-4n+1>>|<row|<cell|0>|<cell|\<less\>>|<cell|2n<rsup|2>-2n+1>>|<row|<cell|0>|<cell|\<less\>>|<cell|2<around*|(|n<rsup|2>-n+0.25|)>+0.5>>|<row|<cell|0>|<cell|\<less\>>|<cell|2<around*|(|n-0.5|)><rsup|2>+0.5>>>>
    </eqnarray*>

    The left inequality (from bottom to top)

    <\eqnarray*>
      <tformat|<table|<row|<cell|2*<around*|(|<sqrt|n+1>-<sqrt|n>|)>>|<cell|\<less\>>|<cell|<dfrac|1|<sqrt|n>>>>|<row|<cell|2<around*|(|<sqrt|n><sqrt|n+1>-n|)>>|<cell|\<less\>>|<cell|1>>|<row|<cell|2<sqrt|n><sqrt|n+1>>|<cell|\<less\>>|<cell|1+2n>>|<row|<cell|2n<around*|(|n+1|)>>|<cell|\<less\>>|<cell|4n<rsup|2>+4n+1>>|<row|<cell|2n<rsup|2>+2n>|<cell|\<less\>>|<cell|4n<rsup|2>+4n+1>>|<row|<cell|0>|<cell|\<less\>>|<cell|2n<rsup|2>+2n+1>>|<row|<cell|0>|<cell|\<less\>>|<cell|2<around*|(|n<rsup|2>+n+0.25|)>+0.5>>|<row|<cell|0>|<cell|\<less\>>|<cell|2<around*|(|n+0.5|)><rsup|2>+0.5>>>>
    </eqnarray*>

    <item><math|2<sqrt|m>-2\<less\><big|sum><rsub|n=1><rsup|m><dfrac|1|<sqrt|n>>\<less\>2<sqrt|m>-1>
  </enumerate>

  <section|Absolute Value>

  Here's the definition of absolute value <math|<around*|\||x|\|>>.

  <\equation*>
    <around*|\||x|\|>=<around*|{|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|x>|<cell|for
    x\<geqslant\>0>>|<row|<cell|-x>|<cell|for x\<less\>0>>>>>|\<nobracket\>>
  </equation*>

  Note that <math|-<around*|\||x|\|>\<leqslant\>x\<leqslant\><around*|\||x|\|>>.

  For <math|a\<gtr\>0>, <math|<around*|\||x|\|>\<less\>a\<Leftrightarrow\>-a\<leqslant\>x\<leqslant\>a>.

  And for two numbers <math|<around*|\||x+y|\|>\<leqslant\><around*|\||x|\|>+<around*|\||y|\|>>

  For arbitrary numbers <math|<around*|\||<big|sum>a<rsub|i>|\|>\<leqslant\><big|sum><around*|\||a<rsub|i>|\|>>

  The Cauchy-Schwarz Inequality

  <\equation*>
    <around*|(|<big|sum>a<rsub|i>b<rsub|i>|)><rsup|2>\<leqslant\><around*|(|<big|sum>a<rsub|i><rsup|2>|)>*<around*|(|<big|sum>b<rsub|i><rsup|2>|)>
  </equation*>

  Let's prove it and find the condition of equality.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<big|sum><around*|(|a<rsub|i>x+b<rsub|i>|)><rsup|2>>|<cell|\<geqslant\>>|<cell|0>>|<row|<cell|<around*|(|<big|sum>a<rsub|i><rsup|2>|)>x<rsup|2>+2<around*|(|<big|sum>a<rsub|i>*b<rsub|i>|)>x+<around*|(|<big|sum>b<rsub|i><rsup|2>|)>>|<cell|\<geqslant\>>|<cell|0>>|<row|<cell|<around*|[|2<around*|(|<big|sum>a<rsub|i>*b<rsub|i>|)>|]><rsup|2>>|<cell|\<leqslant\>>|<cell|4<around*|(|<big|sum>a<rsub|i><rsup|2>|)><around*|(|<big|sum>b<rsub|i><rsup|2>|)>>>|<row|<cell|<around*|(|<big|sum>a<rsub|i>*b<rsub|i>|)><rsup|2>>|<cell|\<leqslant\>>|<cell|<around*|(|<big|sum>a<rsub|i><rsup|2>|)><around*|(|<big|sum>b<rsub|i><rsup|2>|)>>>>>
  </eqnarray*>

  Equality occurs when the first expression equals 0. that is
  <math|x=b<rsub|i>/a<rsub|i>> for all <math|i>'s.

  <section|Some exercise>

  Let's prove the followings

  <\enumerate>
    <item><math|<around*|(|1+<dfrac|1|n>|)><rsup|n>=1+<big|sum><rsub|k=1><rsup|n><around*|{|<dfrac|1|k!><big|prod><rsub|r=0><rsup|k-1><around*|(|1-<dfrac|r|n>|)>|}>>

    <item><math|2\<less\><around*|(|1+<dfrac|1|n>|)><rsup|n>\<less\>1+><math|<big|sum><rsub|k=1><rsup|n><dfrac|1|k!>>\<less\>3

    <item><math|n<rsup|p>\<less\><dfrac|<around*|(|n+1|)><rsup|p+1>-n<rsup|p+1>|p+1>\<less\><around*|(|n+1|)><rsup|p>>

    <item><math|<big|sum><rsub|k=1><rsup|n-1>k<rsup|p>\<less\><dfrac|n<rsup|p+1>|p+1>\<less\><big|sum><rsub|k=1><rsup|n>k<rsup|p>>

    <item><math|<big|prod><around*|(|1+a<rsub|i>|)>\<geqslant\>1+<big|sum>a<rsub|i>>
    for <math|a<rsub|i>\<gtr\>-1>

    <item><math|<around*|(|1+x|)><rsup|n>\<geqslant\>1+n*x> for
    <math|n\<gtr\>1>, equality occurs only at <math|x=0>.

    <item>p-th power mean <math|M<rsub|p>=<around*|(|<dfrac|x<rsub|1><rsup|p>+\<cdots\>+x<rsub|n><rsup|p>|n>|)><rsup|1/p>>,
    <math|M<rsub|1>>is mean, <math|M<rsub|2>> is root mean square,
    <math|M<rsub|-1>>is harmonic mean. For <math|p\<gtr\>0>,
    <math|M<rsub|p>\<less\>M<rsub|2p>> (use Cauchy Schwarz)

    <item><math|a<rsup|2>+b<rsup|2>+c<rsup|2>=8> then
    <math|a<rsup|4>+b<rsup|4>+c<rsup|4>\<geqslant\><frac|64|3>>

    <item><math|a<rsub|1>, a<rsub|2>,\<ldots\>a<rsub|n>> are positive real
    numebrs whose product is 1. Then <math|<big|sum>a<rsub|i>\<geqslant\>n>
    equality occurs only when all <math|a<rsub|i><rprime|'>s> equal to one.

    <item><math|G=<sqrt|a<rsub|1>*a<rsub|2>*\<cdots\>*a<rsub|n>|n>\<leqslant\><dfrac|a<rsub|1>+a<rsub|2>+\<cdots\>+a<rsub|n>|n>>,
    equality occurs only when all <math|a<rsub|i>>'s are identical.

    <item>for <math|q\<less\>0\<less\>p> then
    <math|M<rsub|q>\<less\>G\<less\>M<rsub|p>> when the <math|a<rsub|i>>'s
    are not all equal.

    <item><math|a*b*c=8> then <math|a+b+c\<geqslant\>6> and
    <math|a*b+b*c+a*c\<geqslant\>12>

    <item><math|a+b+c=1> then <math|<around*|(|1-a|)>*<around*|(|1-b|)>*<around*|(|1-c|)>\<geqslant\>8*a*b*c>
  </enumerate>

  \;

  \;

  \;

  \;

  \ \ 

  \ 

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
    <associate|auto-10|<tuple|5|10>>
    <associate|auto-11|<tuple|6|11>>
    <associate|auto-12|<tuple|7|11>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|3.1|4>>
    <associate|auto-5|<tuple|3.2|5>>
    <associate|auto-6|<tuple|3.3|6>>
    <associate|auto-7|<tuple|3.4|8>>
    <associate|auto-8|<tuple|3.5|8>>
    <associate|auto-9|<tuple|4|9>>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Axiom
      of Real Number> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>The field axioms
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>The order axioms
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Integer, rational numbers,
      etc <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>Root
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|3.5<space|2spc>Decimals
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Mathematical
      Induction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Summation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Absolute
      Value> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Some
      exercise> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>