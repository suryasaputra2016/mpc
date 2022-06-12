<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Lagrangian Mechanics>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <section|Introduction>

  Description of motion of objects by giving the position of of every pieces
  at every moment is called configuration path.

  Not all conceivable motions happen, only realizable motion/path can occur.

  We want to know path distinguishing function that give some indications
  when a realizable path is input. An example of suh a function is Newton's
  equation. But we'll use variational principle which gives stationary value
  on realizable path.

  Newtonian formulation describes a system with position, velocity,
  acceleration, and force on particles each time. Meanwhile Variational
  formulation describes the whole system and the whole motion at once.

  <section|Configuration Space>

  Extended bodies can be seen as composed of point particles or point masses.
  Each point maintain spacial constraint so the shape doesn't change. So,
  only some configuration is possible, and the set of all possible
  configurations is called configuration space of. The dimension of
  configuration space is the smallest number of parameters that can explain a
  configuration and generally equals to the equation's degrees of freedom.
  The motion of system can be described as path along a configuration space.

  An unconstrained particle has 3 dimension configuration space, and <math|k>
  unconstrained particles has <math|3*k> dimension configuration space. Two
  particles constrained in fix distance to each other have 5 dimension
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
  </collection>
</references>