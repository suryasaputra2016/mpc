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

  \;

  \;

  \ 
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
    <associate|auto-3|<tuple|3|?>>
    <associate|auto-4|<tuple|4|?>>
    <associate|auto-5|<tuple|5|?>>
    <associate|auto-6|<tuple|5.1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Cartesian
      Geometry> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>