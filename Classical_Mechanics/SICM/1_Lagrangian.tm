<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Lagrangian Mechanics>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <section|Introduction>

  Description of motion of objects that gives the position of of every pieces
  at every moment is called configuration path.

  Not all conceivable motions happen, only realizable motion/path can occur.
  We want to know path distinguishing function that give some indications
  when a realizable path is its input. An example of suh a function is
  Newton's equation. But we'll use variational principle which gives
  stationary value on realizable path.

  Newtonian formulation describes a system with position, velocity,
  acceleration, and force on particles each time. Meanwhile Variational
  formulation describes the whole system and the whole motion at once.

  <section|Configuration Space>

  Extended bodies can be seen as composed of point particles or point masses.
  Each point maintain spacial constraint so the shape doesn't change. Thus
  only some configurations are possible, and the set of all possible
  configurations is called configuration space. The dimension of
  configuration space is the smallest number of parameters that can explain a
  configuration and generally equals to the equation's degrees of freedom.
  The motion of system can be described as path along a configuration space.

  An unconstrained particle has 3 dimension configuration space, and <math|k>
  unconstrained particles has <math|3*k> dimension configuration space. Two
  particles constrained in fixed distance to each other have 5 dimension
  configuration space. A juggling pin has 6 degrees of freedom, 3 for
  position and another 3 for direction.

  <section|Generalized Coordinate>

  Parameters used to describe configuration of a system is called generalized
  coordinates. An unconstrained particle can have its position
  <math|<around*|(|x,y,z|)>> as generalized coordinates. Planar double
  pendulum can have two angles of its two bar as the generalized coordinates.

  The number of generalized coordinates can be equal or more than<nbsp>the
  dimension of configuration space. We can use more parameters, but there
  will be constraints. For example, planar pendulum can use coordinates of
  the two masses as generalized coordinates. But we also have to take care
  the constraint between them.

  Configuration space is a space <math|M> with <math|n>-dimensions that can
  be parameterized into <math|n> tuple of real number through a function
  <math|\<chi\>> which is an <math|n> tuple of independent coordinate
  function <math|\<chi\><rsup|i>> for <math|i:0,1,2,\<ldots\>,n-1>. For a
  configuration <math|m>, <math|\<chi\> <rsup|i><around*|(|m|)>> is the
  generalized coordinate. There are various generalized coordinates, for
  example, an unconstrained particle can be given cartesian, cylindrical, or
  spherical coordinates.

  Configuration path <math|\<gamma\>> maps time to configuration space
  points. Coordinate path <math|q=\<chi\>\<circ\>\<gamma\>> maps time to
  tuples of generalized coordinate. If there are multiple degrees of freedom
  then coordinate path is a tuple function
  <math|q<rsup|i>=\<chi\><rsup|i>\<circ\>\<gamma\>> and at each time
  <math|t>, <math|q <around*|(|t|)>=<around*|(|q<rsup|0>
  <around*|(|t|)>,\<ldots\>q<rsup|n-1> <around*|(|t|)>|)>> is the generalized
  coordinate.

  The derivative of coordinate path <math|D q <around*|(|t|)>> is the rate of
  change of generalized coordinate called generalized velodity.

  <section|Principle of Stationary Action>

  Classicaly, configuration path is smooth, continuous, independent of system
  history detail, and deterministic.If a path is realizable then its segments
  are also realizable, and vice versa. The realizability of the path depends
  on all points on the path equally. The realizability of path segments
  depends only on point on the segment, it's a local property.

  Path-distinguishing functions, also called action, sums up the local
  property along the path equally. One way to do this is integral. To use
  variational mechanics actions must be stationary on the realizable path.\ 

  Let <math|q=\<chi\>\<circ\>\<gamma\>> be coordinate path and <math|q
  <around*|(|t|)>> coordinate of the configuration at time <math|t>. Then the
  action of a path segment from time <math|t<rsub|1>> to <math|t<rsub|2>> is
  as follows.

  <\equation*>
    S <around*|[|q|]> <around*|(|t<rsub|1>,t<rsub|2>|)>=<big|int><rsub|t<rsub|1><rsub|<rsup|>>><rsup|t<rsub|2>>F
    <around*|[|q|]>
  </equation*>

  The function <math|F <around*|[|q|]>> measures some local property of path,
  is a function of time, and my dpend of <math|q> or the derivative of
  <math|q>.

  The function <math|F <around*|[|q|]>> can be decomposed into a function
  that measures some properties of local description, and a function that get
  local desription from the path function.

  <\equation*>
    F <around*|[|q|]>=L\<circ\>\<Gamma\> <around*|[|q|]>
  </equation*>

  Here <math|\<Gamma\>> takes coordinate path and produces a function of time
  that is a tuple of time, coordinate, and its derivative (local tuple).

  <\equation*>
    \<Gamma\> <around*|[|q|]> <around*|(|t|)>=<around*|(|t,q
    <around*|(|t|)>,D q <around*|(|t|)>,\<ldots\>|)>
  </equation*>

  The function <math|\<Gamma\>> does't depend on <math|\<chi\>> even though
  <math|q > is made up of <math|\<chi\>>.

  The fucntion <math|L> depends not on the configuration path but on the
  details of phisycal system. The <math|L > is called lagrangian and it
  computes the local property of the path.

  \ The resulting action is called lagrangian action.

  <\equation*>
    S <around*|[|q|]> <around*|(|t<rsub|1>,t<rsub|2>|]>=<big|int><rsub|t<rsub|1>><rsup|t<rsub|2>>L\<circ\>\<Gamma\>
    <around*|[|q|]>=<big|int><rsub|t<rsub|1>><rsup|t<rsub|2>>L <around*|(|t,q
    <around*|(|t|)>,D q <around*|(|t|)>|)> \<mathd\> t
  </equation*>

  For many system, Lagrangian is the difference between kinetic and potential
  energy, hence only depends on time, coordinate, and the derivative on
  coordinatae.

  A realizable path ust be stationary action , but some path near realizable
  paths could also be stationary. The Principle of statoinary action, for any
  dynamical system we can have a lagrangian such that the reaalizable path
  between <math|t<rsub|1>> and <math|t<rsub|2>> is stationary.

  <section|Computing Actions>

  Let's consider a free particle. It's known that the intergral of kinetic
  energy along the realizable path is smaller compared to alternatives. So it
  moves according to the principle o stationary action if the lagrangian is
  the kinetic energy.

  <\equation*>
    L <around*|(|t,x,v|)>=<frac|1|2>*m*<around*|(|v\<cdot\>v|)>
  </equation*>

  Above, <math|v> is the tuple of velocity components.

  <\scm-code>
    (define ((L-free-particle mass) local)

    \ \ (let ((v (velocity local)))

    \ \ \ \ (* 1/2 mass (dot-product v v)))
  </scm-code>

  The coordinate path

  <\equation*>
    q<around*|(|t|)>=<around*|(|x<around*|(|t|)>,y<around*|(|t|)>,z<around*|(|t|)>|)>
  </equation*>

  <\scm-code>
    (define q

    \ \ (up (literal-function 'x)

    \ \ \ \ \ \ (literal-function 'y)

    \ \ \ \ \ \ (literal-function 'z)))
  </scm-code>

  Above, <scm|literal-function> makes procedure of one argument with name
  given. And <scm|q> is a procedure of one real argument that is time and
  gives three component tuple showing coordinate.

  <\scm-code>
    (q 't)

    (up (x t) (y t) (z t))
  </scm-code>

  Derivative of coordinate path <math|D q> maps time to velocity components.

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
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Configuration
      Space> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Generalized
      Coordinate> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Principle
      of Stationary Action> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>