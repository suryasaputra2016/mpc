<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs|maxima>>

<\body>
  <doc-data|<doc-title|Integral>>

  <section|Cartesian Geometry>

  Cartesian coordinate is a tool to draw figures. It uses a horizontal
  x-axis, a vertical y axis. The two intersect at a point called origin. And
  on both axes a scale is chosen to represent unit distance so we can use a
  pair of numbers to represent point on the plane. For example
  <math|<around*|(|3,2|)>> is a point that is three unit to the right and two
  units above from the origin. The first number is called x-coordinate, the
  second y-coordinate, and both are called coordinate. The coordinate tell
  where the point is.

  Coordinate is also called ordered pair that is if
  <math|<around*|(|a,b|)>=<around*|(|c,d|)>> then <math|a=c> and <math|b=d>.
  If in a coordinate <math|x,y\<gtr\>0> then the point is in the first
  quadrant if only <math|x\<less\>0> then it's in the second quadrant, if
  both <math|x,y\<less\>0> then it's in the third quadrant and if only
  <math|y\<less\>0> then it's in the fourth quadrant.

  Later this coordinate system can be generalized into space using three
  numbers <math|<around*|(|x,y,z|)>>.

  Geometric figure can be drawn by stating some equations that are satisfied
  by the points in the figure. For example, a circle whose points are all
  have the same distance <math|r> to the origin \ has the following equation.

  <\equation*>
    x<rsup|2>+y<rsup|2>=r<rsup|2>
  </equation*>

  Only those on the circle obeys the equation. Therefore we change the
  problem of geometry into algebra.

  <section|Function, Informal Definition>

  Function is relation between things on a set. Or, it is a correspondence
  between all element of set <math|X> (the domain) with exactly one of
  element <math|Y>. Subset of <math|Y> whose elements corresponds to <math|X>
  is called range.

  Example 1. Force needed to stretch a string a distance <math|x> can be
  written as <math|F=k*x> where <math|k> is constant. It is force as a
  function of stretching distance.

  Example 2. Volume of a cube <math|V> is the cube of its sides <math|s>,
  <math|V=s<rsup|3>.>

  Example 3. For a given real number we can have the numbers of primes less
  than or equal to <math|x>.

  If <math|f> is a function and <math|x> is in the domain then
  <math|f<around*|(|x|)>> is the element in the range corresponds to
  <math|x>. Function can be depicted as arrows from two sests in Venn
  diagram, or as machine with input and output. In calculus we interested
  with function<space|1em>whose domain and range are real numbers, or
  real-valued function.

  We can draw a graph of function in cartesian coordiantes, we use x-axis to
  determine the domain and we plot all points <math|<around*|(|x,y|)>> with
  <math|x> in the domain and <math|y=f<around*|(|x|)>>.

  Example 4. Identity function, whose graph is straightline making equal
  angle to the axes growing from lower left to upper right.

  Example 5: absolute value function<math|<around*|\||x|\|>> whose graph
  makes a V figure. Some properties of <math|<around*|\||x|\|>> are
  <math|<around*|\||-x|\|>=<around*|\||x|\|>>,
  <math|<around*|\||x<rsup|2>|\|>=x<rsup|2>>,
  <math|<around*|\||x+y|\|>\<leqslant\><around*|\||x|\|>+<around*|\||y|\|>>,
  <math|<around*|\||<around*|(|<around*|\||x|\|>|)>|\|>=<around*|\||x|\|>>,
  <math|<around*|\||x|\|>=<sqrt|x<rsup|2>>>.

  Example 6. The prime number function from example 3, <math|\<pi\>
  <around*|(|x|)>> can be drawn as series of rising horizontal bar and
  included in a class function called step functions.

  Example 7. Factorial function which is more convenent to be displayed in
  table.

  So function has domain whose element has exactly one image and generates a
  set of pairs <math|(x,f (x))> that can be depicted in a graph.

  <section|Function, Formal Definition>

  Unlike set in which order doesn't matter
  <math|<around*|{|a,b|}>=<around*|{|b,a|}>> in an ordered pair order matter,
  in gnereal \ <math|<around*|(|a,b|)>\<neq\><around*|(|b,a|)>>. and
  <math|<around*|(|a,b|)>=<around*|(|c,d|)>\<Leftrightarrow\>a=c,b=d>.\ 

  Formal definition of function. A function is a set of ordered pair
  <math|<around*|(|x,y|)>> such that no two pairs have the same first member.
  The set of all first element <math|x> is called domain and the set of all
  second element <math|y> is called range. Since <math|y> is uniquely
  determined by <math|x> we can write <math|y=f <around*|(|x|)>>.

  Theorem. Two functions are equal if they have the same domain and for all
  <math|x> in the domain <math|f <around*|(|x|)>=g <around*|(|x|)>>.

  <section|More Examples of Function>

  <\enumerate>
    <item>Constant function <math|f <around*|(|x|)>=c> whose graph is a
    horizontal line

    <item>Linear function <math|f <around*|(|x|)>=a*x+b> whose graph is a
    slanted straight line

    <item>power function <math|f <around*|(|x|)>=x<rsup|n>>, for <math|n=1>
    it is linear function, for <math|n=2> it is parabola, for <math|n=3> it
    is cubic, etc.

    <item>Polynomial function <math|f <around*|(|x|)>=<big|sum><rsub|i=0><rsup|n>c<rsub|k>*x<rsup|k>>
    where <math|c<rsub|i>>'s are constant and it includes quadratic, cubic,
    quartic etc.

    <item>The circle <math|f <around*|(|x|)>=<sqrt|1-x<rsup|2>>> and
    <math|g<around*|(|x|)>=-<sqrt|1-x<rsup|2>>>since for one <math|x> we can
    only have one <math|y>, then we need to use to functions. In other words
    a function cannot have two points on the same vertical line.

    <item>We can also form a functions from preexisting one by adding,
    multiplying, dividing etc two functions with the same domain. <math|u
    <around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>>,
    <math|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>,
    <math|f<around*|(|x|)>/g<around*|(|x|)>> for
    <math|g<around*|(|x|)>\<neq\>0>.
  </enumerate>

  <section|Exercises>

  <\enumerate>
    <item>If <math|f<around*|(|x|)>> has domain <math|(a,b)> then
    <math|f<around*|(|n*x|)>> has domain <math|<around*|(|a/n,b/n|)>>

    If <math|f<around*|(|x|)>> has domain <math|(a,b)> then
    <math|f<around*|(|x-p|)>> has domain <math|<around*|(|a+p,b+p|)>>

    <item>Let <math|f<around*|(|x|)>=<big|sum><rsub|i=0><rsup|n>c<rsub|i>x<rsup|i>>
    be a polynomial of degree <math|n>.

    <\enumerate>
      <item>If <math|n\<geqslant\>1,f<around*|(|0|)>=0> then
      <math|f<around*|(|x|)>=x*g<around*|(|x|)>> for
      <math|g<around*|(|x|)>polynomial of degree ><math|n-1>

      If <math|f<around*|(|0|)>=0> then <math|c<rsub|0>=0> then
      <math|f<around*|(|x|)>=><math|<big|sum><rsub|i=1><rsup|n>c<rsub|i>x<rsup|i>=x<big|sum><rsub|i=0><rsup|n>c<rsub|i>x<rsup|i-1>=x*<big|sum><rsub|i=1><rsup|n-1>c<rsub|i>x<rsup|i>>,
      therefore we can define <math|g<around*|(|x|)>=*<big|sum><rsub|i=1><rsup|n-1>c<rsub|i>x<rsup|i>>
      a polynomial of degree <math|n-1>

      <item>For real <math|a><space|1em>we have
      <math|p<around*|(|x|)>=f<around*|(|x+a|)>> a polynomial of degree
      <math|n>.

      Check for <math|n=1>, then <math|p<around*|(|x|)>=c<rsub|0>+c<rsub|1><around*|(|x+a|)>=<around*|(|c<rsub|0>+a*c<rsub|1>|)>+c<rsub|1>*x>=<math|<big|sum><rsub|i=1><rsup|1>c<rsub|i><rprime|'>x<rsup|i>>,
      <math|p> is polynomial of degreee 1

      Assume it applies for polynomial of degree <math|k>, for degree
      <math|k+1> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|p<around*|(|x|)>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|k>c<rsub|i><around*|(|x+a|)><rsup|i>+c<rsub|k+1><around*|(|x+a|)><rsup|k+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|k>c<rsub|i><around*|(|x+a|)><rsup|i>+c<rsub|k+1><around*|(|<big|sum><rsub|i=0><rsup|k+1><around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|k+1>>|<row|<cell|i>>>>>|)>a<rsup|k+1-i>x<rsup|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|k>c<rsub|i><rprime|'>x<rsup|i>+<around*|(|<big|sum><rsub|i=0><rsup|k>c<rsub|k+1><around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|k+1>>|<row|<cell|i>>>>>|)>a<rsup|k+1-i>x<rsup|i>|)>+c<rsub|k+1>x<rsup|k+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|k><around*|(|c<rsub|i><rprime|'>+c<rsub|k+1><around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|k+1>>|<row|<cell|i>>>>>|)>a<rsup|k+1-i>|)>x<rsup|i>+c<rsub|k+1>x<rsup|k+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|k>c<rsub|i><rprime|''>x<rsup|i>+c<rsub|k+1>x<rsup|k+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|k+1>c<rsub|i><rprime|''>x<rsup|i>>>>>
      </eqnarray*>

      The expressio is a polynomial of degree <math|k+1,thus >function
      <math|p> is polynomial of degree <math|n>.

      <item>If <math|n\<geqslant\>1,f<around*|(|a|)>=0> then
      <math|f<around*|(|x|)>=<around*|(|x-a|)>*g<around*|(|x|)>> for
      <math|g<around*|(|x|)>polynomial of degree ><math|n-1>

      Define <math|p<around*|(|x|)>=f<around*|(|x+a|)>>then
      <math|p<around*|(|0|)>=f<around*|(|a|)>=0> therefore
      <math|p<around*|(|x|)>=x*g<rprime|'><around*|(|x|)>>for some polynomial
      <math|g<rprime|'>> of degree <math|n-1>. Therefore
      <math|f<around*|(|x|)>=p<around*|(|x-a|)>=><math|<around*|(|x-a|)>*g<rprime|'><around*|(|x-a|)>=<around*|(|x-a|)>*g<around*|(|x|)>>
      for some polynomial <math|g> of degree <math|n-1>.

      <item>If <math|f<around*|(|x|)>=0> for <math|n+1> distinct values of
      <math|x> then <math|c<rsub|i>>'s are all zero and
      <math|f<around*|(|x|)>=0> for all <math|x>.

      Check for <math|n=0>, then <math|f<around*|(|x|)>=c<rsub|0>> is zero
      for 1 value, thus <math|f<around*|(|x|)>=c<rsub|0>=0>

      Assume it applies for <math|n=k>. Now let see the case for
      <math|n=k+1>.

      Since <math|f<around*|(|x|)>=0> for <math|k+2> different value, say one
      of them is <math|a<rsub|0>>, <math|f<around*|(|x|)>=<around*|(|x-a<rsub|0>|)>*g<around*|(|x|)>>
      for <math|g<around*|(|x|)>> having degree of <math|k> and we also have
      <math|g<around*|(|x|)>=0> for <math|k+1> different value (now excluding
      <math|a<rsub|0>>) hence <math|g<around*|(|x|)>=0> thus
      <math|f<around*|(|x|)>=0>

      <item>Let <math|g> a polynomial of degree <math|m\<geqslant\>n> and
      <math|g<around*|(|x|)>=f<around*|(|x|)>> for <math|m+1> distinct value
      of <math|x> then <math|m=n> and <math|f=g>.

      <math|h<around*|(|x|)>=g<around*|(|x|)>-f<around*|(|x|)>> is a
      polynomial of degrere <math|max <around*|(|m,n|)>=m>. and
      <math|h<around*|(|x|)>=0> for <math|m+1> different values of <math|x>
      therefore <math|h=0> hence <math|g-f=0> and <math|f=g> which means
      degree of <math|f> equals degree of <math|g>, <math|n=m>.
    </enumerate>

    <item>Polynomial of degree <math|n\<leqslant\>2> that satisfies

    <\enumerate>
      <item><math|p<around*|(|0|)>=p<around*|(|1|)>=p<around*|(|2|)>=1>

      say <math|p<around*|(|x|)>=a+b*x+c*x<rsup|2>>

      Then <math|p<around*|(|0|)>=a=1>

      Also <math|p<around*|(|1|)>=a+b+c=1> thus <math|b+c=0> or <math|c=-b>

      Lastly, <math|p(2)=a+2b+4c=1> thus <math|b=c=0>

      Therefore <math|p<around*|(|x|)>=1>

      <item><math|p<around*|(|0|)>=p<around*|(|1|)>=1>,
      <math|p<around*|(|2|)>=2>

      From part a, we have <math|a=1> and <math|c=-b>

      And <math|p<around*|(|2|)>=a+2b+4c=2> thus <math|1-2b=2>, <math|b=-1/2>
      so <math|c=1/2>

      Thus, <math|p<around*|(|x|)>=1-<dfrac|x|2>+<dfrac|x<rsup|2>|2>>

      <item><math|p<around*|(|0|)>=p<around*|(|1|)>=1>

      From part a we have <math|p<around*|(|x|)>=1+b*x-b*x<rsup|2>>

      <item><math|p<around*|(|0|)>=p<around*|(|1|)>>

      We have <math|a=a+b+c> or <math|b=-c>, therefore
      <math|p<around*|(|x|)>=a+b*x-b*x<rsup|2>>
    </enumerate>

    <item>Polynomial of degree <math|n\<leqslant\>2> that satisfies

    <\enumerate>
      <item><math|p<around*|(|x|)>=p<around*|(|1-x|)>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|a+b*x+c*x<rsup|2>>|<cell|=>|<cell|a+b<around*|(|1-x|)>+c<around*|(|1-x|)><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a+b+c|)>+<around*|(|-b-2c|)>x+c*x<rsup|2>>>>>
      </eqnarray*>

      Therefore <math|a=a+b+c> then <math|b=-c>

      And <math|b=-b-2c> or <math|b=-c>

      Therefore <math|p<around*|(|x|)>=a+b*x-b*x<rsup|2>>

      <item><math|p<around*|(|x|)>=p<around*|(|1+x|)>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|a+b*x+c*x<rsup|2>>|<cell|=>|<cell|a+b<around*|(|1+x|)>+c<around*|(|1+x|)><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a+b+c|)>+<around*|(|b+2c|)>x+c*x<rsup|2>>>>>
      </eqnarray*>

      Therefore <math|a=a+b+c> then <math|b=-c>

      And <math|b=b+2c> or <math|c=0>, hence <math|b=0>

      Therefore <math|p<around*|(|x|)>=a<rsup|>>, a constant.

      <item><math|p<around*|(|2x|)>=2*p<around*|(|x|)>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|a+2b*x+4c*x<rsup|2>>|<cell|=>|<cell|2a+2b*x+2c*x<rsup|2>>>>>
      </eqnarray*>

      From the equality above we have <math|a=c=0>, then
      <math|p<around*|(|x|)>=b*x>

      <item><math|p<around*|(|3x|)>=p<around*|(|x+3|)>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|a+3b*x+9c*x<rsup|2>>|<cell|=>|<cell|a+b*<around*|(|x+3|)>+c*<around*|(|x+3|)><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a+3b+9c|)>+<around*|(|b+6c|)>x+c*x<rsup|2>>>>>
      </eqnarray*>

      From quadratic terms, we have <math|c=0>, therefore from linear terms
      we have <math|b=0>. Thus <math|p<around*|(|x|)>=a>, a constant.
    </enumerate>

    <item>The followings are polynomials

    <\enumerate>
      <item><math|(1+x)<rsup|2n>=<big|sum><rsub|i=0><rsup|2n><around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|2n>>|<row|<cell|i>>>>>|)>x<rsup|i>>

      <item><math|<dfrac|1-x<rsup|n+1>|1-x>=<big|sum><rsub|i=0><rsup|n>x<rsup|i>>

      <item><math|<big|prod><rsub|k=0><rsup|n><around*|(|1+x<rsup|2<rsup|k>>|)>=<dfrac|1-x<rsup|2<rsup|k=1>>|1-x>=<big|sum><rsub|i=0><rsup|2<rsup|k+1>>x<rsup|i>>
    </enumerate>
  </enumerate>

  <section|Area as Set Function>

  Area <math|a> is a function from a set <math|S> to a real number <math|S>.
  This kind of function is called set function.<nbsp>A set which area can be
  applied is called measurable and the set of all measurable set is
  <math|\<cal-M\>>. Some measurable sets are rectangles
  <math|<around*|{|<around*|(|x,y|)>\|0\<leqslant\>x\<leqslant\>h,0\<leqslant\>y\<leqslant\>k|}>>,
  step region which is the unions of finite rectangles with their base
  sitting on x-axis, and ordinate set which is region under graph of
  nonnegative function and above x-axis for some interval x whose area can be
  approximated by outer and inner step step regions.

  Axiom of area: there exists a class of measurable set <math|\<cal-M\>> and
  set function <math|a> with domain <math|\<cal-M\>> with the following
  properties.

  <\enumerate>
    <item>Nonnegativity: for all <math|S\<in\> \<cal-M\>> we have
    <math|a<around*|(|S|)>\<geqslant\>0>

    <item>Additive: for <math|S,T\<in\> \<cal-M\>>, then
    <math|S\<cup\>T,S\<cap\>T\<in\> \<cal-M\>> and
    <math|a<around*|(|S\<cup\>T|)>=a<around*|(|S|)>+a<around*|(|T|)>-a<around*|(|S\<cap\>T|)>>

    <item>Difference: for <math|S\<subseteq\>T\<in\> \<cal-M\>> then
    <math|T-S\<in\> \<cal-M\>> and <math|a<around*|(|T-S|)>=a<around*|(|T|)>-a<around*|(|S|)>>

    <item>Congruence invariance: if <math|S\<in\> \<cal-M\>> and <math|T>
    congruence* to <math|S> then <math|T\<in\> \<cal-M\>> and
    <math|a<around*|(|T|)>=a<around*|(|S|)>>

    <item>Choice of scale: for all rectangles <math|R> in <math|\<cal-M\>>
    <math|a<around*|(|R|)>=h*k>

    <item>Exhaustion: Let <math|Q> be a set enclosed between two step regions
    <math|S> and <math|T> such that <math|S\<subseteq\>Q\<subseteq\>T> and
    there is only one real number <math|c> such that
    <math|a<around*|(|S|)>\<leqslant\>c\<leqslant\>a<around*|(|T|)>> then
    <math|Q\<in\> \<cal-M\>> and <math|a<around*|(|Q|)>=c>.
  </enumerate>

  Above congruence means for every pair in the two sets there is one to one
  correspondence preserving distance\ 

  Axiom 3 implies that <math|\<varnothing\>\<in\> \<cal-M\>> and
  <math|a<around*|(|\<varnothing\> |)>=0> also monotone property
  <math|S\<subseteq\>T> then <math|a<around*|(|S|)>\<leqslant\>a<around*|(|T|)>>.
  Note that if we assign 0 to all area it still satisfies axiom 1 to 4. Axiom
  5 tells that line segment has area zero and by allso using axiom 2 we can
  calculate the area of step regions.

  <section|Exercises>

  <\enumerate>
    <item>single point has zero area (scale, <math|h=k=0>), finite
    collections of points also has zero areas (adding area of all the
    points), finite collection line segments has zero area (adding area of
    the line segment)

    <item>right triangle are measurable. The area of triangle is one half of
    its base and altitude

    it is measurable because it is intersection of two rectangle and by axiom
    5 and 2.

    <with|gr-mode|<tuple|group-edit|move>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-auto-crop|true|<graphics||<cline|<point|-6|3>|<point|-6.0|0.0>|<point|0.0|0.0>|<point|0.0|3.0>|<point|-6.0|3.0>>|<cline|<point|-4|3>|<point|-6.0|0.0>|<point|-4.0|0.0>>|<math-at|A|<point|-4.0|3.30001322926313>>|<math-at|B|<point|-6|-0.4>>|<math-at|C|<point|-4.0|-0.400006614631565>>|<math-at|D|<point|-0.282438153194867|-0.420518587114698>>|<math-at|E|<point|-5.99999338536844|3.30000992194735>>|<math-at|F|<point|-0.282434845879085|3.11755853948935>>|<cline|<point|-4|3>|<point|-4.0|0.0>|<point|0.0|0.0>>>>

    Triangle ABC is congruent to triangle BEA, also triangle ACD is congruent
    to triangle AFD.

    <\eqnarray*>
      <tformat|<table|<row|<cell|a<around*|(|ABC|)>+a<around*|(|BEA|)>>|<cell|=>|<cell|a<around*|(|AEBC|)>>>|<row|<cell|2*a<around*|(|ABC|)>>|<cell|=>|<cell|a<around*|(|AEBC|)>>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|a<around*|(|ACD|)>+a<around*|(|AFD|)>>|<cell|=>|<cell|a<around*|(|AFDC|)>>>|<row|<cell|2a<around*|(|ACD|)>>|<cell|=>|<cell|a<around*|(|AFDC|)>>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|a<around*|(|ABD|)>>|<cell|=>|<cell|a<around*|(|ABC|)>+a<around*|(|ACD|)>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|a<around*|(|AEBC|)>|2>+<dfrac|a<around*|(|AFDC|)>|2>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|1|2><around*|(|a<around*|(|AEBC|)>+a<around*|(|AFDC|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|1|2>a<around*|(|EBDF|)>>>>>
    </eqnarray*>

    <item>trapezoid and paralellogram are measurable and has the usual
    formula for area

    We can slice both of them into triangles and rectangles and add the areas

    <item>Point <math|<around*|(|x,y|)>>is lattice point if <math|x,y\<in\>
    \<bbb-Z\>>. Let <math|P> a polygon whose vertices are lattice points then
    the <math|A<around*|(|P|)>=Z+<dfrac|B|2>-1> where Z and <math|B> is the
    number of lattice point inside and in the boundary of <math|P>.

    <\enumerate>
      <item>the formula is valid for rectangle with sides horizontal and
      vertical

      For such rectangle with width and height of <math|m> and <math|n>
      then<space|1em><math|Z=<around*|(|m-1|)><around*|(|n-1|)>> and
      <math|B=2<around*|(|m+n|)>>. Therefore
      <math|A=<around*|(|m-1|)><around*|(|n-1|)>+<around*|(|m+n|)>-1=m*n>

      <item>the formula is valid for right triangle and parallellogram

      Right triangle can be obtained by slashing rectangle in part a with
      diagonal line. Say the diagonal lines passing trough <math|k+2> lattice
      point that are inside or in the boundary of initial rectangle. Then
      <math|Z=<frac|<around*|(|<around*|(|m-1|)><around*|(|n-1|)>-k|)>|2>>
      and <math|B=m+n+k+1>. Therefore <math|A=<frac|<around*|(|<around*|(|m-1|)><around*|(|n-1|)>-k|)>|2>+<frac|<around*|(|m+n+k+1|)>|2>-1=<frac|m*n|2>>.
      Paralellogram can be proven in part c.

      <item>the formula is also valid general polygon

      Let's see for the case of general triangle. A general triangle can be
      insribed into minimum square <math|s> in part a so that the square
      consists of four triangles, the initial one <math|a> and three right
      triangles <math|b>, <math|c>, <math|d>. Let <math|Z<rsub|a>> to
      <math|Z<rsub|d> > be the number of lattice points in the interior of
      the triangles, <math|B<rsub|c>> to <math|B<rsub|d> > be the number of
      lattice point in the boundaries of rectangle and triangles excluding
      the one on the vertices of the triangles, <math|k<rsub|b> > to
      <math|k<rsub|d>> be the number of lattice point on the boundaries
      between triangles excluding the vertex.

      <with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|<graphics||<cline|<point|-4|3>|<point|3.0|3.0>|<point|3.0|-1.0>|<point|-4.0|-1.0>>|<cline|<point|-4|3>|<point|-1.0|-1.0>|<point|3.0|1.0>>|<math-at|a|<point|-1|0.8>>|<math-at|b|<point|-3|0.3>>|<math-at|c|<point|1.5|2.2>>|<math-at|d|<point|1.7|-0.6>>>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|A<rsub|a>>|<cell|=>|<cell|A<rsub|s>-<around*|(|A<rsub|b>+A<rsub|c>+A<rsub|d>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|Z<rsub|a>+Z<rsub|b>+Z<rsub|c>+Z<rsub|d>|)>+<around*|(|k<rsub|b>+k<rsub|c>+k<rsub|d>|)>+<dfrac|B<rsub|b>+B<rsub|c>+B<rsub|d>+3|2>-1>>|<row|<cell|>|<cell|>|<cell|-<around*|(|Z<rsub|b>+<dfrac|B<rsub|b>+k<rsub|b>+2|2>-1|)>-<around*|(|Z<rsub|c>+<dfrac|B<rsub|c>+k<rsub|c>+2|2>-1|)>-<around*|(|Z<rsub|c>+<dfrac|B<rsub|c>+k<rsub|c>+2|2>-1|)>>>|<row|<cell|>|<cell|=>|<cell|Z<rsub|a>+<dfrac|k<rsub|b>+k<rsub|c>+k<rsub|d>+3|2>-1>>|<row|<cell|>|<cell|=>|<cell|Z<rsub|a>+<dfrac|B<rsub|a>|2>-1>>>>
      </eqnarray*>
    </enumerate>

    Above <math|B<rsub|a>> is the number of lattice point on the boundaries
    of <math|a>, hence it is proven.

    Now polygon can be formed by attaching many triangles two among them with
    a mutual side. So we only need to prove that "gluing" two triangles on a
    mutual side doesn't change the formula. Say we have two triangles
    <math|x> and <math|y> and the mutual sides contains <math|k+2> numbers of
    lattice points.

    <\eqnarray*>
      <tformat|<table|<row|<cell|A>|<cell|=>|<cell|A<rsub|x>+A<rsub|y>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|Z<rsub|x>+<dfrac|B<rsub|x>+k+2|2>-1|)>+<around*|(|Z<rsub|y>+<dfrac|B<rsub|y>+k+2|2>-1|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|Z<rsub|x>+Z<rsub|y>+k+<dfrac|B<rsub|x>+B<rsub|y>+2|2>-1|)>>>>>
    </eqnarray*>

    <item>Triangle whose vertex are lattice points cannot be equlateral
    because the area of equilateral triangle is <math|A=<frac|<sqrt|3>s|2>>
    where <math|s> is the edge of the triangle. The are is irrational. It is
    impossible for a shape with vertex at lattice points to have irrational
    by the formula.

    <item>Power set with cardinality as area satsifies the first three axioms
  </enumerate>

  <section|Intervals and Ordinate Sets>

  Some definitions of intervals. For <math|a\<less\>b> let
  <math|<around*|[|a,b|]>=<around*|{|x\|a\<leqslant\>x\<leqslant\>b|}>>,
  <math|<around*|(|a,b|)>=<around*|{|x\|a\<less\>x\<less\>b|}>>,
  <math|<around*|(|a,b|]>=<around*|{|x\|a\<less\>x\<leqslant\>b|}>>, and
  <math|<around*|[|a,b|)>=<around*|{|x\|a\<leqslant\>x\<less\>b|}>>.
  <math|<around*|[|a,b|]>> is called closed interval,
  <math|<around*|(|a,b|)>>open interval and <math|<around*|(|a,b|)>>is the
  interior of <math|<around*|[|a,b|]>>.

  The set of point <math|<around*|{|<around*|(|x,y|)>\|a\<leqslant\>x\<leqslant\>b,0\<leqslant\>y\<leqslant\>f<around*|(|x|)>|}>>is
  called an ordinate set of <math|f>. We'll find the way to calculate the
  area of ordinate set.

  <section|Partition and Step Functions>

  We can define a partition of a closed interval <math|<around*|[|a,b|]>>.
  That is we define <math|a=x<rsub|1>\<less\>x<rsub|2>\<less\>\<cdots\>\<less\>x<rsub|n-1>\<less\>x<rsub|n>=b>.
  Then the partition is <math|P=<around*|{|x<rsub|0>,x<rsub|1>,\<ldots\>,x<rsub|n>|}>>
  and it divides the interval into <math|n> closed subinterval
  <math|<around*|{|<around*|[|x<rsub|0>,x<rsub|1>|]>,<around*|[|x<rsub|1>,x<rsub|2>|]>,\<ldots\>,<around*|[|x<rsub|n-1>,x<rsub|n>|]>|}>>.
  We can also define open subinterval, in which k-th subinterval is
  <math|<around*|(|x<rsub|k-1>,x<rsub|k>|)>>.

  A function <math|s> with domain <math|<around*|[|a,b|]>> is a step function
  if there is a partition <math|P=<around*|{|x<rsub|0>,\<ldots\>,x<rsub|n>|}>>
  in the domain such that <math|s> is constant on each open subinterval. For
  <math|x<rsub|k-1>\<less\>x\<less\>x<rsub|k> > we have
  <math|s<around*|(|x|)>=s<rsub|k>>.

  at boundaries of the partition the function can have any well defined
  value. And step functions are also called piecewise constant functions.

  For a given partition <math|P> we can add more points and the new partition
  <math|P<rprime|'>> is called the refinement of <math|P>. If a function is
  constant on every subinterval of <math|P> then it is also constant on the
  subinterval of <math|P<rprime|'>>.

  <section|Sum and Product of Step Function>

  Addition of two step functions is also a step function. Say <math|f> and
  <math|g> are two step functions both defined on <math|<around*|[|a,b|]>>
  then <math|f+g> is also step function. Let <math|P> be partition on
  <math|<around*|[|a,b|]>> in which <math|f> is constant in all subinterval.
  And let <math|P<rprime|'>> be partition on <math|<around*|[|a,b|]>> in
  which <math|g> is constant. Then we define <math|P<rprime|''>> common
  refinement of both partitions containing the point on both <math|P> and
  <math|P<rprime|'>>. See that every subinterval defined in
  <math|P<rprime|''>> \ is subset of subinterval on both <math|P> and
  <math|P<rprime|'>> therefore <math|f+g> is constant in there.

  The case for multiplication of two functions is the same.

  <section|Excercises>

  Prove that

  <\enumerate>
    <item><math|<around*|\<lfloor\>|x+n|\<rfloor\>>=<around*|\<lfloor\>|x|\<rfloor\>>+n>
    for <math|n\<in\> \<bbb-Z\>>

    <math|<around*|\<lfloor\>|x|\<rfloor\>>\<leqslant\>x\<less\><around*|\<lfloor\>|x|\<rfloor\>>+1\<Leftrightarrow\><around*|\<lfloor\>|x|\<rfloor\>>+n\<leqslant\>x+n\<less\><around*|\<lfloor\>|x|\<rfloor\>>+1+n\<Leftrightarrow\><around*|\<lfloor\>|x+n|\<rfloor\>>=<around*|\<lfloor\>|x|\<rfloor\>>+n>

    <item><math|<around*|\<lfloor\>|-x|\<rfloor\>>=<around*|{|<tabular|<tformat|<table|<row|<cell|-<around*|\<lfloor\>|x|\<rfloor\>>>|<cell|if
    x\<in\> \<bbb-Z\>>>|<row|<cell|-<around*|\<lfloor\>|x|\<rfloor\>>-1>|<cell|otherwise>>>>>|\<nobracket\>>>

    if <math|x\<in\> \<bbb-Z\>> then <math|<around*|\<lfloor\>|x|\<rfloor\>>=x\<Leftrightarrow\><around*|\<lfloor\>|-x|\<rfloor\>>=-x=-<around*|\<lfloor\>|x|\<rfloor\>>>

    else <math|<around*|\<lfloor\>|x|\<rfloor\>>\<less\>x\<less\><around*|\<lfloor\>|x|\<rfloor\>>+1\<Leftrightarrow\>-<around*|\<lfloor\>|x|\<rfloor\>>-1\<less\>-x\<less\>-<around*|\<lfloor\>|x|\<rfloor\>>\<Leftrightarrow\><around*|\<lfloor\>|-x|\<rfloor\>>=-<around*|\<lfloor\>|x|\<rfloor\>>-1>

    <item><math|<around*|\<lfloor\>|x+y|\<rfloor\>>=<around*|{|<tabular|<tformat|<table|<row|<cell|<around*|\<lfloor\>|x|\<rfloor\>>+<around*|\<lfloor\>|y|\<rfloor\>>>>|<row|<cell|<around*|\<lfloor\>|x|\<rfloor\>>+<around*|\<lfloor\>|y|\<rfloor\>>+1>>>>>|\<nobracket\>>>

    <math|<around*|\<lfloor\>|x|\<rfloor\>>\<leqslant\>x\<less\><around*|\<lfloor\>|x|\<rfloor\>>+1,<around*|\<lfloor\>|y|\<rfloor\>>\<leqslant\>y\<less\><around*|\<lfloor\>|y|\<rfloor\>>+1>
    then <math|<around*|\<lfloor\>|x|\<rfloor\>>+<around*|\<lfloor\>|y|\<rfloor\>>\<leqslant\>x+y\<less\><around*|\<lfloor\>|x|\<rfloor\>>+<around*|\<lfloor\>|y|\<rfloor\>>+2>

    Therefore there are two possibilities

    <math|<around*|\<lfloor\>|x|\<rfloor\>>+<around*|\<lfloor\>|y|\<rfloor\>>\<leqslant\>x+y\<less\><around*|\<lfloor\>|x|\<rfloor\>>+<around*|\<lfloor\>|y|\<rfloor\>>+1>
    or <math|<around*|\<lfloor\>|x|\<rfloor\>>+<around*|\<lfloor\>|y|\<rfloor\>>+1\<leqslant\>x+y\<less\><around*|\<lfloor\>|x|\<rfloor\>>+<around*|\<lfloor\>|y|\<rfloor\>>+2>

    Therefore <math|><math|<around*|\<lfloor\>|x+y|\<rfloor\>>=><math|<around*|\<lfloor\>|x|\<rfloor\>>+<around*|\<lfloor\>|y|\<rfloor\>>>or
    <math|<around*|\<lfloor\>|x|\<rfloor\>>+<around*|\<lfloor\>|y|\<rfloor\>>+1>

    <item><math|<around*|\<lfloor\>|2x|\<rfloor\>>=<around*|\<lfloor\>|x|\<rfloor\>>+<around*|\<lfloor\>|x+<frac|1|2>|\<rfloor\>>>

    Below, no 6

    <item><math|<around*|\<lfloor\>|3x|\<rfloor\>>=<around*|\<lfloor\>|x|\<rfloor\>>+<around*|\<lfloor\>|x+<frac|1|3>|\<rfloor\>>+<around*|\<lfloor\>|x+<frac|2|3>|\<rfloor\>>>

    Below, no 6

    <item><math|<around*|\<lfloor\>|n*x|\<rfloor\>>=<big|sum><rsub|i=0><rsup|n-1><around*|\<lfloor\>|x+<frac|i|n>|\<rfloor\>>>

    <math|<around*|\<lfloor\>|x|\<rfloor\>>\<leqslant\>x\<less\><around*|\<lfloor\>|x|\<rfloor\>>+1>.
    Then <math|x> is in one of the subinteval
    <math|<around*|[|<around*|\<nobracket\>|<around*|\<lfloor\>|x|\<rfloor\>>+<frac|k|n>,<around*|\<lfloor\>|x|\<rfloor\>>+<frac|k+1|n>|)>|\<nobracket\>>>in
    that case then <math|<around*|\<lfloor\>|n*x|\<rfloor\>>=n*<around*|\<lfloor\>|x|\<rfloor\>>+k>.

    Consider<math|<big|sum><rsub|i=0><rsup|n-1><around*|\<lfloor\>|x+<frac|i|n>|\<rfloor\>>>
    and <math|x> is in the same interval as above
    then<math|<around*|\<lfloor\>|x+<frac|i|n>|\<rfloor\>>=<around*|{|<tabular|<tformat|<table|<row|<cell|<around*|\<lfloor\>|x|\<rfloor\>>>|<cell|i\<less\>n-k>>|<row|<cell|<around*|\<lfloor\>|x|\<rfloor\>>+1>|<cell|n-1\<geqslant\>i\<geqslant\>n-k>>>>>|\<nobracket\>>>
    therefore <math|<big|sum><rsub|i=0><rsup|n-1><around*|\<lfloor\>|x+<frac|i|n>|\<rfloor\>>=n*<around*|\<lfloor\>|x|\<rfloor\>>+k>

    <item>Number of lattice points <math|<around*|(|x,y|)>> satisfying
    <math|a\<leqslant\>x\<leqslant\>b>, <math|0\<less\>y\<leqslant\>f<around*|(|x|)>>
    for nonnegative function <math|f> and <math|a,b\<in\> \<bbb-Z\>> is\ 

    <\equation*>
      <big|sum><rsub|n=a><rsup|b><around*|\<lfloor\>|f<around*|(|n|)>|\<rfloor\>>
    </equation*>

    The number of the lattice point below <math|f<around*|(|n|)>> for
    <math|n\<in\> \<bbb-Z\>> is <math|<around*|\<lfloor\>|f<around*|(|n|)>|\<rfloor\>>>
    hence we just sum the lattice points from <math|n=a> up to <math|n=b>

    <item>The following formula applies where <math|a,b> are integers with no
    common factors

    <\equation*>
      <big|sum><rsup|b-1><rsub|n=1><around*|\<lfloor\>|<frac|n*a|b>|\<rfloor\>>=<frac|<around*|(|a-1|)>*<around*|(|b-1|)>|2>
    </equation*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsup|b-1><rsub|n=1><around*|\<lfloor\>|<frac|n*a|b>|\<rfloor\>>+<big|sum><rsup|b-1><rsub|n=1><around*|\<lfloor\>|<frac|<around*|(|b-n|)>a|b>|\<rfloor\>>>|<cell|=>|<cell|<big|sum><rsup|b-1><rsub|n=1><around*|\<lfloor\>|<frac|n*a|b>|\<rfloor\>>+<big|sum><rsup|b-1><rsub|n=1><around*|\<lfloor\>|a-<frac|n*a|b>|\<rfloor\>>>>|<row|<cell|2<big|sum><rsup|b-1><rsub|n=1><around*|\<lfloor\>|<frac|n*a|b>|\<rfloor\>>>|<cell|=>|<cell|<big|sum><rsup|b-1><rsub|n=1><around*|\<lfloor\>|<frac|n*a|b>|\<rfloor\>>+<big|sum><rsup|b-1><rsub|n=1><around*|\<lfloor\>|-<frac|n*a|b>|\<rfloor\>>+<big|sum><rsup|b-1><rsub|n=1>a>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsup|b-1><rsub|n=1><around*|(|<around*|\<lfloor\>|<frac|n*a|b>|\<rfloor\>>+<around*|\<lfloor\>|-<frac|n*a|b>|\<rfloor\>>|)>+<around*|(|b-1|)>*a>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsup|b-1><rsub|n=1><around*|(|-1|)>+<around*|(|b-1|)>*a>>|<row|<cell|2<big|sum><rsup|b-1><rsub|n=1><around*|\<lfloor\>|<frac|n*a|b>|\<rfloor\>>>|<cell|=>|<cell|<around*|(|b-1|)>*<around*|(|a-1|)>>>|<row|<cell|<big|sum><rsup|b-1><rsub|n=1><around*|\<lfloor\>|<frac|n*a|b>|\<rfloor\>>>|<cell|=>|<cell|<frac|<around*|(|a-1|)>*<around*|(|b-1|)>|2>>>>>
    </eqnarray*>

    Or geometrically we can count the number of lattice points as in number
    7. and get half of <math|<around*|(|a-1|)>*<around*|(|b-1|)>>

    <item>A characteristic function <math|\<chi\><rsub|S> <around*|(|x|)>> is
    either 1 or 0 depending <math|x> is in <math|S> or not. Let <math|f> is a
    step function with constant value <math|c<rsub|k>> on k-th open
    subinterval <math|I<rsub|k>> of interval
    <math|<around*|[|a,b|]>=I<rsub|1>\<cup\>I<rsub|2>\<cup\>\<ldots\>\<cup\>I<rsub|n>.
    >Then

    <\equation*>
      f<around*|(|x|)>=<big|sum><rsub|k=1><rsup|n>c<rsub|k>*\<chi\><rsub|I<rsub|k>><around*|(|x|)>
    </equation*>
  </enumerate>

  <section|Integral of step functions>

  Let <math|s<around*|(|x|)>> be a step function defined on
  <math|<around*|[|a,b|]>>with value <math|s<rsub|k> > for
  <math|x<rsub|k-1>\<less\>x\<less\>x<rsub|k>> subinterval of
  <math|<around*|[|a,b|]>> with partition
  <math|P=<around*|{|a=x<rsub|0>,x<rsub|1>,\<ldots\>,x<rsub|n-1>,x<rsub|n>=b|}>.
  > Then the integral of <math|s> from <math|a> to <math|b> is as follows.

  <\equation*>
    <big|int><rsub|a><rsup|b><rsub|>s<around*|(|x|)>=<big|sum><rsub|k=1><rsup|n>s<rsub|k>*<around*|(|x<rsub|k>-x<rsub|k-1>|)>
  </equation*>

  See that if <math|s> is constant say <math|s<around*|(|x|)>=c> then the
  integral is <math|c<around*|(|b-a|)>>. Also see that the value of <math|s>
  at subinterval boundary doesn't affect the integral. Lastly for nonnegative
  <math|s> the integral is equal to the area of the ordinate set of <math|s>.

  Also, the value of integral is independent of partition <math|P> as long as
  the function is constant in each subinterval. Thus we can refine the
  partition and still get the same result.

  Some properties of integral of step functions (and integral in general).

  <\enumerate>
    <item>Additive property <math|<big|int><rsub|a><rsup|b><around*|[|s<around*|(|x|)>+t<around*|(|x|)>|]>d*x=<big|int><rsub|a><rsup|b>s<around*|(|x|)>d*x+<big|int><rsub|a><rsup|b>t<around*|(|x|)>d*x>

    <item>homogeneous property <math|<big|int><rsub|a><rsup|b>c*s<around*|(|x|)>d*x=c*<big|int><rsub|a><rsup|b>s<around*|(|x|)>d*x>

    <item>The above two can be combined into linearity property

    <item>comparison theorem: if <math|s<around*|(|x|)>\<less\>t<around*|(|x|)>>
    for all <math|x> in <math|<around*|[|a,b|]>>:
    <math|<big|int><rsub|a><rsup|b>s<around*|(|x|)>d*x\<less\><big|int><rsub|a><rsup|b>t<around*|(|x|)>d*x>

    <item>Interval additivity: <math|<big|int><rsub|a><rsup|c>s<around*|(|x|)>d*x=<big|int><rsub|a><rsup|b>s<around*|(|x|)>d*x+<big|int><rsub|b><rsup|c>s<around*|(|x|)>d*x>
    for <math|a\<less\>b\<less\>c>

    <item>Translation invariance: <math|<big|int><rsub|a><rsup|b>s<around*|(|x|)>d*x=<big|int><rsub|a+c><rsup|b+c>s<around*|(|x-c|)>d*x>

    <item>Expansion/contraction: <math|<big|int><rsub|k*a><rsup|k*b>s<around*|(|<frac|x|k>|)>d*x>=<math|k<big|int><rsub|a><rsup|b>s<around*|(|x|)>d*x>
    for all <math|k\<gtr\>0>
  </enumerate>

  By definining <math|<big|int><rsub|a><rsup|b>s<around*|(|x|)>d*x=-<big|int><rsub|b><rsup|a>s<around*|(|x|)>d*x>
  for <math|a\<gtr\>b> and <math|<big|int><rsub|a><rsup|a>s<around*|(|x|)>d*x=0>
  we can generalize property 5 so that <math|b> doesn't have to be between
  <math|a> and <math|c>. Also, property 5 can be defined for
  <math|k\<less\>0> to get reflection property.

  <\equation*>
    <big|int><rsub|a><rsup|b>s<around*|(|x|)>d*x=-<big|int><rsub|-a><rsup|-b>s<around*|(|-x|)>d*x=<big|int><rsub|-b><rsup|-a>s<around*|(|-x|)>d*x
  </equation*>

  The symbol <math|x> above is dummy and can be changed with other unused
  alphabet.

  <section|Integral of a more general function>

  For integral of a more general function<math|f> we are using step functions
  below and abovee <math|f> that is <math|s> and <math|t>. Since
  <math|s<around*|(|x|)>\<leqslant\>t<around*|(|x|)>>then <math|<big|int>
  s<around*|(|x|)>d*x\<leqslant\><big|int> t<around*|(|x|)>d*x> also we know
  that integral <math|f> is between those two and if there is only one number
  <math|I> satisfying <math|<big|int> s<around*|(|x|)>d*x\<leqslant\>I\<leqslant\><big|int>
  t<around*|(|x|)>d*x> then <math|I=<big|int> f<around*|(|x|)>d*x>.

  But not all functions we can find step function above it for example
  <math|f<around*|(|x|)>=<frac|1|x>>for <math|x\<neq\>0>
  <math|f<around*|(|x|)>=0> for <math|x=0>. So first we restrict <math|f> to
  bounded function that is those that there exists a number <math|M\<gtr\>0>
  such that <math|-M\<leqslant\>f<around*|(|x|)>\<leqslant\>M>. or
  <math|<around*|\||f<around*|(|x|)>|\|>\<leqslant\>M>.

  Integral of bounded function. let <math|f> be function bounded on
  <math|<around*|[|a,b|]>> and also let <math|s> and <math|t> step functions
  on <math|<around*|[|a,b|]>> such that <math|s<around*|(|x|)>\<leqslant\>f<around*|(|x|)>\<leqslant\>t<around*|(|x|)>>
  for all <math|x> in <math|<around*|[|a,b|]>> and there is onlly one number
  <math|I> such that <math|<big|int> s<around*|(|x|)>d*x\<leqslant\>I\<leqslant\><big|int>
  t<around*|(|x|)>d*x>. Then <math|f> is integrable on
  <math|<around*|[|a,b|]>> and the integral of <math|f> from <math|a> to
  <math|b> is <math|I>.

  Also, <math|f> is called integrand, <math|a> and <math|b> is lower and
  upper limit of integration, and <math|<around*|[|a,b|]>> is called interval
  of integration. If <math|a\<gtr\>b> <math|<big|int>
  <rsub|a><rsup|b>f<around*|(|x|)>d*x=-<big|int><rsub|b><rsup|a>f<around*|(|x|)>d*x
  >also <math|<big|int> <rsub|a><rsup|a>f<around*|(|x|)>d*x=0>.

  <section|Upper and Lower Integral>

  For bounded function <math|f> on <math|<around*|[|a,b|]>> then there are
  step function <math|s> and <math|t> on <math|<around*|[|a,b|]>> such that
  <math|s\<leqslant\>f\<leqslant\>t> for all <math|x> on the interval. Then
  we can define <math|S=<around*|{|<big|int><rsub|a><rsup|b>s<around*|(|x|)>d*x\|s\<leqslant\>f|}>>
  and <math|T=<around*|{|<big|int><rsub|a><rsup|b>t<around*|(|x|)>d*x\|t\<geqslant\>f
  |}>>. Then since <math|f> is bounded both cets are nonempty and all element
  of <math|S> is less than or equal to all element of <math|T>. So we can
  define <math|sup<around*|(|S|)>> and <math|inf<around*|(|T|)>> such that

  <\equation*>
    <big|int><rsub|a><rsup|b>s<around*|(|x|)>d*x\<leqslant\>sup<around*|(|S|)>\<leqslant\>inf<around*|(|T|)>\<leqslant\><big|int><rsub|a><rsup|b>t<around*|(|x|)>d*x
    <rsub|>
  </equation*>

  then <math|sup<around*|(|S|)>> is defined as the lower integral of <math|f>
  and <math|inf<around*|(|t|)>> is defined as the upper integral of <math|f>.

  <\equation*>
    <wide*|I|\<bar\>><around*|(|f|)>=sup<around*|{|<big|int><rsub|a><rsup|b>s<around*|(|x|)>d*x\|s\<leqslant\>f|}>
  </equation*>

  <\equation*>
    <wide|I|\<bar\>><around*|(|f|)>=inf<around*|{|<big|int><rsub|a><rsup|b>t<around*|(|x|)>d*x\|t\<geqslant\>f|}>
  </equation*>

  Then we can say that every function <math|f> bounded on
  <math|<around*|[|a,b|]>> has upper and lower integral. And if the upper and
  lower integral are equal then <math|f> is integrable and
  <math|<big|int><rsub|a><rsup|b>f<around*|(|x|)>
  d<around*|(|x|)>=<wide*|I|\<bar\>><around*|(|f|)>=<wide|I|\<bar\>><around*|(|f|)>>.

  <section|Area of ordinate set as integral>

  Let <math|f> be a nonnegative function integrable on
  <math|<around*|[|a,b|]>> and <math|Q> is the ordinate set of <math|f> over
  <math|<around*|[|a,b|]>>. Then <math|Q> is measurable and its area
  <math|a<around*|(|Q|)>=<big|int><rsub|a><rsup|b>f<around*|(|x|)>d*x >.

  We can prove above by squeezing <math|Q> by two step regions each
  corresponds to step function below and above <math|f>. Then since <math|f>
  is integrable so there is only one number <math|I> between the upper and
  lower integral and we can use exhaustion property of area to show that
  <math|a<around*|(|Q|)>=I>.

  while <math|Q> is set of <math|<around*|(|x,y|)>> for
  <math|a\<leqslant\>x\<leqslant\>b> and <math|0\<leqslant\>y\<leqslant\>f<around*|(|x|)>.
  >Let's define <math|Q<rprime|'>> as a set of \ <math|<around*|(|x,y|)>> for
  <math|a\<leqslant\>x\<leqslant\>b> and <math|0\<leqslant\>y\<less\>f<around*|(|x|)>>.
  Then by the same argument we get <math|a<around*|(|Q<rprime|'>|)>=I>
  therefore <math|a<around*|(|Q-Q<rprime|'>|)>=0>. in other
  words<nbsp><math|<around*|{|<around*|(|x,y|)>\|a\<leqslant\>x\<leqslant\>b,y=f<around*|(|x|)>|}>>
  has zero area.

  <section|Monotonic and Piecewise Monotonic Function>

  A function <math|f> is increasing on <math|S> if for <math|x\<less\>y> both
  on <math|S> then <math|f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>> if the
  equality part is removed <math|f> is called strictly increasing Decreasing
  and strictly decreasing function can be defined in a similar way. A
  function that is either increasing or decreasing is called monotonic, and
  if it's either strictly decreasing and strictly increasing it is called
  strictly monotonic.

  A piecewise monotpnic function on <math|<around*|[|a,b|]> > are those who
  are monotonic if there is a partition on <math|<around*|[|a,b|]>> in which
  the function is monotonic on each subinterval.
  <math|f<around*|(|x|)>=x<rsup|p>> is monotonic function for <math|p> odd
  and piecewise monotonic for <math|p> even. <math|f<around*|(|x|)>=<sqrt|x>
  >strictly increasing on positive x-axis. Also
  <math|f<around*|(|x|)>=<sqrt|r<rsup|2>-x<rsup|2>>> is strictly increasing
  on <math|<around*|(|-r,0|]>> and strictly decreasing on
  <math|<around*|[|o,r|)>>.

  <section|Integrability of bounded monotonic function>

  Bounded monotonic function <math|f> on <math|<around*|[|a,b|]>> is
  integrable over <math|<around*|[|a,b|]>>. The proof is the following.

  \ First let's make partition <math|P=<around*|{|a=x<rsub|0>,x<rsub|1>,\<ldots\>,x<rsub|n>=b|}>>,
  the length of each subinterval <math|k>
  <math|<around*|(|x<rsub|k-1>,x<rsub|k>|)>> is equal which is
  <math|<around*|(|b-a|)>/n>.

  Second, define step functions for each subinterval <math|k> where
  <math|x<rsub|k-1>\<leqslant\>x\<leqslant\>x<rsub|k>> we have
  <math|s<rsub|n><around*|(|x|)>=f<around*|(|x<rsub|k-1>|)>> and
  <math|t<rsub|n><around*|(|x|)>=f<around*|(|x<rsub|k>|)>>. Therefore

  <\eqnarray*>
    <tformat|<table|<row|<cell|<big|int><rsub|a><rsup|b>t<rsub|n>-<big|int><rsub|a><rsup|b>s<rsub|n>>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n>f<around*|(|x<rsub|k>|)><around*|(|x<rsub|k>-x<rsub|k-1>|)>-<big|sum><rsub|k=1><rsup|n>f<around*|(|x<rsub|k-1>|)><around*|(|x<rsub|k>-x<rsub|k-1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsup|n><rsub|k=1><around*|(|f<around*|(|x<rsub|k>|)>-f<around*|(|x<rsub|k-1>|)>|)><around*|(|x<rsub|k>-x<rsub|k-1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsup|n><rsub|k=1><around*|(|f<around*|(|x<rsub|k>|)>-f<around*|(|x<rsub|k-1>|)>|)><frac|b-a|n>>>|<row|<cell|>|<cell|=>|<cell|<frac|b-a|n><around*|(|f<around*|(|x<rsub|n>|)>-f<around*|(|x<rsub|0>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|b-a|n><around*|(|f<around*|(|b|)>-f<around*|(|a|)>|)>>>|<row|<cell|>|<cell|\<equiv\>>|<cell|<frac|C|n>>>>>
  </eqnarray*>

  Therefore we have <math|0\<leqslant\>><math|<wide|I|\<bar\>><around*|(|f|)>-<wide*|I|\<bar\>><around*|(|f|)>\<leqslant\><frac|C|n>>
  for all <math|n\<in\> \<bbb-Z\>> therefore
  <math|<wide|I|\<bar\>><around*|(|f|)>=<wide*|I|\<bar\>><around*|(|f|)>>

  <section|Calculation of of bounded monotonic function>

  If <math|f> is increasing on interval <math|<around*|[|a,b|]>> and let
  <math|x<rsub|k>=a+<frac|b-a|n>k> for <math|k=0,1,\<ldots\>,n> if <math|I>
  satisfies the followings.

  <\equation*>
    <frac|b-a|n><big|sum><rsub|k=0><rsup|n-1>f<around*|(|x<rsub|k>|)>\<leqslant\>I\<leqslant\><frac|b-a|n><big|sum><rsub|k=1><rsup|n>f<around*|(|x<rsub|k>|)>
  </equation*>

  for every <math|n\<in\> \<bbb-Z\>>. Then
  <math|I=<big|int><rsub|a><rsup|b>f<around*|(|x|)>d*x .>

  See that the summation on the left and right is the integral of upper and
  lower step functions hence the integral and <math|I> are both between them,
  and using the result of previous part we get.

  <\equation*>
    0\<leqslant\><around*|\||I-<big|int><rsub|a><rsup|b>f<around*|(|x|)>d*x
    |\|>\<leqslant\><frac|C|n>
  </equation*>

  for all <math|n\<in\> \<bbb-Z\>> therefore it is proven. We can also prove
  the similar case for decreasing function.

  <subsection|Integration for <math|<big|int><rsub|a><rsup|b>x<rsup|p>d*x
  >for positive integer <math|p>>

  We can show that for <math|b\<gtr\>0> and <math|p\<in\> \<bbb-Z\><rsup|+>>

  <\equation*>
    <big|int><rsub|0><rsup|b>x<rsup|p> d*x=<frac|b<rsup|p+1>|p+1>
  </equation*>

  First use the following inequality

  <\eqnarray*>
    <tformat|<table|<row|<cell|<big|sum><rsup|n-1><rsub|k=1>k<rsup|p>\<leqslant\>>|<cell|<dfrac|n<rsup|p+1>|p+1>>|<cell|\<leqslant\><big|sum><rsub|k=1><rsup|n>k<rsup|p>>>|<row|<cell|<dfrac|b|n><big|sum><rsup|n-1><rsub|k=0><around*|(|<frac|k*b|n>|)><rsup|p>\<leqslant\>>|<cell|<dfrac|b<rsup|p+1>|p+1>>|<cell|\<leqslant\><dfrac|b|n><big|sum><rsup|n-1><rsub|k=1><around*|(|<frac|k*b|n>|)><rsup|p>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|<dfrac|b|n><big|sum><rsup|n-1><rsub|k=0>f<around*|(|x<rsub|k>|)>\<leqslant\>>|<cell|<dfrac|b<rsup|p+1>|p+1>>|<cell|\<leqslant\><dfrac|b|n><big|sum><rsup|n-1><rsub|k=1>f<around*|(|x<rsub|k>|)>>>>>
  </eqnarray*>

  For all <math|n> positive integers. Then for
  <math|f<around*|(|x|)>=x<rsup|p>> we have
  <math|I=<frac*|b<rsup|p+1>|><around*|(|p+1|)>>.

  Here are some properties of integral

  <\enumerate>
    <item>Integrand lienarity: if <math|f> and <math|g> are integrable then
    so is their linear combination also <math|<big|int><rsub|a><rsup|b><around*|(|c<rsub|1>*f<around*|(|x|)>+c<rsub|2>g<around*|(|x|)>|)>d*x=c<rsub|1><big|int><rsub|a><rsup|b>f<around*|(|x|)>d*x+c<rsub|2><big|int><rsub|a><rsup|b>g<around*|(|x|)>d*x
    \ >

    And the property can be generalized to linear combinations of many
    integrand.

    <item>Interval additivity: if the first two integral exists so does the
    third one and <math|<big|int><rsub|a><rsup|b>f<around*|(|x|)>d*x+<big|int><rsub|b><rsup|c>f<around*|(|x|)>d*x=<big|int><rsub|a><rsup|c>f<around*|(|x|)>d*x>

    <item>Translation<space|1em>invariance: for <math|f> integrable on
    <math|<around*|[|a,b|]> > then for number <math|c> we have
    <math|<big|int><rsub|a><rsup|b>f<around*|(|x|)>d*x=<big|int><rsub|a+c><rsup|b+c>f<around*|(|x-c|)>d*x>.

    <item>Expansion or contraction: if <math|f> is integrable on
    <math|<around*|[|a,b|]>> then for <math|k\<neq\>0>
    <math|<big|int><rsub|a><rsup|b>f<around*|(|x|)>d*x=<frac|1|k><big|int><rsub|k*a><rsup|k*b>
    f<around*|(|<frac|x|k>|)>d*x>

    <item>Comparison: for <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>>
    for all <math|x\<in\> <around*|[|a,b|]>> and both integrable on the
    domain then <math|<big|int><rsub|a><rsup|b>f<around*|(|x|)>d*x\<leqslant\><big|int><rsub|a><rsup|b>g<around*|(|x|)>d*x
    >.

    if <math|f=0> then a nonnegative function will have a nonnegative
    integral.
  </enumerate>

  <subsection|Integration of Polynomials>

  We can generalized the integration of <math|x<rsup|p> > for
  <math|-b\<less\>0>

  <\equation*>
    <big|int><rsub|0><rsup|-b>x<rsup|p> d*x=-<big|int><rsub|0><rsup|b><around*|(|-x|)><rsup|p>
    d*x=<dfrac|<around*|(|-b|)><rsup|p+1>|p+1>
  </equation*>

  And using <math|<big|int><rsub|a><rsup|b>=<big|int><rsub|a><rsup|0>+<big|int><rsub|0><rsup|b>=<big|int><rsub|0><rsup|b>-<big|int><rsub|0><rsup|a>
  > we have

  <\equation*>
    <big|int><rsub|a><rsup|b>x<rsup|p>d*x=<dfrac|b<rsup|p+1>-a<rsup|p+1>|p+1>\<equiv\><dfrac|x<rsup|p+1>|p+1><mid|\|><rsub|b><rsup|a>
  </equation*>

  The formula above along plus linearity of integrand property can be used to
  compute integral of polynomials

  <\equation*>
    <big|int><rsub|a><rsup|b><big|sum><rsub|k=0><rsup|n>c<rsub|k>*x<rsup|k>*d*x=<big|sum><rsub|k=0><rsup|n>c<rsub|k><big|int><rsub|a><rsup|b>*x<rsup|k>*d*x=<big|sum><rsub|k=0><rsup|n>c<rsub|k><dfrac|b<rsup|k+1>-a<rsup|k+1>|k+1>
  </equation*>

  Also we can integrate polynomial involving absolute value by dividing the
  domain corresponds to different case for the absolute value functions and
  add them using interval additivity.

  <section|Exercise>

  Proof the following theorem using the theorem above

  <\enumerate>
    <item><math|<big|int><rsub|a><rsup|b>f<around*|(|x|)>d*x=<around*|(|b-a|)><big|int><rsub|0><rsup|1>f<around*|(|a+<around*|(|b-a|)>x|)>d*x
    >

    <item><math|<big|int><rsub|a><rsup|b>f<around*|(|A*x+B|)>d*x=<frac|1|A><big|int><rsub|A*a+B><rsup|A*b+B>f<around*|(|x|)>d*x
    >

    <item><math|<big|int><rsub|a><rsup|b>f<around*|(|c-x|)>d*x=<big|int><rsub|c-b><rsup|c-a>f<around*|(|x|)>d*x
    <rsub|>>\ 
  </enumerate>

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
    <associate|auto-10|<tuple|10|8>>
    <associate|auto-11|<tuple|11|8>>
    <associate|auto-12|<tuple|12|10>>
    <associate|auto-13|<tuple|13|10>>
    <associate|auto-14|<tuple|14|11>>
    <associate|auto-15|<tuple|15|11>>
    <associate|auto-16|<tuple|16|11>>
    <associate|auto-17|<tuple|17|12>>
    <associate|auto-18|<tuple|18|12>>
    <associate|auto-19|<tuple|18.1|12>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-20|<tuple|18.2|13>>
    <associate|auto-21|<tuple|19|?>>
    <associate|auto-22|<tuple|1|?>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|2>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|7>>
    <associate|auto-9|<tuple|9|8>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Cartesian
      Geometry> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Function,
      Informal Definition> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Function,
      Formal Definition> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>More
      Examples of Function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Exercises>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Area
      as Set Function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Exercises>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Intervals
      and Ordinate Sets> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Partition
      and Step Functions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Sum
      and Product of Step Function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Excercises>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Integral
      of step functions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|13<space|2spc>Integral
      of a more general function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|14<space|2spc>Upper
      and Lower Integral> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|15<space|2spc>Area
      of ordinate set as integral> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|16<space|2spc>Monotonic
      and Piecewise Monotonic Function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|17<space|2spc>Integrability
      of bounded monotonic function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|18<space|2spc>Calculation
      of of bounded monotonic function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>

      <with|par-left|<quote|1tab>|18.1<space|2spc>Integration for
      <with|mode|<quote|math>|<big|int><rsub|a><rsup|b>x<rsup|p>d*x >for
      positive integer <with|mode|<quote|math>|p>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|18.2<space|2spc>Integration of Polynomials
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>
    </associate>
  </collection>
</auxiliary>