<TeXmacs|2.1.1>

<style|<tuple|article|maxima|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|SICM Chapter 1>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <\enumerate-numeric>
    <item>Degrees of freedom of the configuration space

    <\enumerate-alpha>
      <item>Three juggling pins: <math|3\<cdot\>6=18>, <math|3*\<cdot\>5=15>
      if the pins are axisymmetric

      <item>Spherical pendulum, point mass connected to ceiling with a rigid
      massless rod: 2

      <item>Spherical double pendulum, spherical pendulum with second point
      mass connected to the first one with another rigid massless rod: 4

      <item>point mass sliding on a frictionless rigid cirved wire: 1

      <item>axysymmetric top attached to a fixed support on its symmetric
      axis: 2

      <item> part e, but the top is non-axisymmetric: 3
    </enumerate-alpha>

    <item>Generalized coordinat for number one.

    <\enumerate-alpha>
      <item>coordinates of the pins' center of masses and direction angles of
      the pins

      <item>latitude and longitude of the point related to the pivot

      <item>latitude and longitude of the points related to respective pivots

      <item>length of the wire from certain chosen origin

      <item>latitude and longitude of the simmetry axis

      <item>latitude, longitude of the axis and rotation through the axis
    </enumerate-alpha>

    <item>Fermat Optics

    <with|gr-mode|<tuple|edit|line>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-point-size|5ln|gr-dash-style-unit|2ln|gr-dash-style|11100|<graphics||<with|point-size|5ln|<point|-4|3>>|<with|point-size|5ln|<point|3|2>>|<line|<point|-4|3>|<point|0.0|0.0>|<point|3.0|2.0>>|<with|dash-style|11100|<line|<point|0|3>|<point|0.0|-1.0>>>|<with|color|dark
    blue|dash-style|11100|<line|<point|-4.3|3>|<point|-4.3|0.0>>>|<with|color|dark
    blue|dash-style|11100|<line|<point|3.4|2>|<point|3.4|0.0>>>|<with|color|dark
    blue|dash-style|11100|<line|<point|-4|-0.3>|<point|0.0|-0.3>>>|<with|color|dark
    blue|dash-style|11100|<line|<point|-4|-1>|<point|3.0|-1.0>>>|<with|line-width|2ln|dash-style-unit|2ln|<line|<point|-4|0>|<point|3.0|0.0>>>|<math-at|L|<point|-0.399996692684218|-1.40000330731578>>|<math-at|x|<point|-2.29999007805265|-0.600003307315782>>|<math-at|h<rsub|1>|<point|-4.7|1.40000992194735>>|<math-at|h<rsub|2>|<point|3.60000661463156|1.0>>|<math-at|\<theta\><rsub|1>|<point|-0.6|0.7>>|<math-at|\<theta\>
    <rsub|2>|<point|0.300009921947347|0.700006614631565>>>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|c*t>|<cell|=>|<cell|<sqrt|h<rsub|1><rsup|2>+x<rsup|2>>+<sqrt|h<rsub|2><rsup|2>+<around*|(|L-x|)><rsup|2>>>>|<row|<cell|c*<dfrac|\<mathd\>
      t|\<mathd\>x>>|<cell|=>|<cell|<dfrac|x|<sqrt|h<rsub|1><rsup|2>+x<rsup|2>>>-<dfrac|L-x|<sqrt|h<rsub|2><rsup|2>+<around*|(|L-x|)><rsup|2>>>>>|<row|<cell|0>|<cell|=>|<cell|sin
      \<theta\> <rsub|1>-sin \<theta\> <rsub|2>>>|<row|<cell|sin
      \<theta\><rsub|1>>|<cell|=>|<cell|sin
      \<theta\><rsub|2>>>|<row|<cell|\<theta\><rsub|1>>|<cell|=>|<cell|\<theta\>
      <rsub|2>>>>>
    </eqnarray*>

    <with|gr-mode|<tuple|group-edit|move>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-point-size|5ln|gr-dash-style|11100|gr-color|dark
    blue|<graphics||<with|point-size|5ln|<point|-4|3>>|<with|point-size|5ln|<point|3|-2>>|<line|<point|-4|3>|<point|0.0|0.0>|<point|3.0|-2.0>>|<with|line-width|2ln|<line|<point|-4|0>|<point|3.0|0.0>>>|<with|color|dark
    blue|dash-style|11100|<line|<point|-4.0|0.3>|<point|-8.32667268468867e-17|0.3>>>|<with|color|dark
    blue|dash-style|11100|<line|<point|-3.9992|-0.3>|<point|3.0008|-0.3>>>|<with|color|dark
    blue|dash-style|11100|<line|<point|-4.3|3>|<point|-4.3|0.0>>>|<with|color|dark
    blue|dash-style|11100|<line|<point|3.3|0>|<point|3.3|-2.0>>>|<with|color|dark
    blue|dash-style|11100|<line|<point|0|3>|<point|0.0|-3.0>>>|<with|color|dark
    blue|<math-at|x|<point|-2.31916258764387|0.524054107686202>>>|<with|color|dark
    blue|<math-at|L|<point|-0.399989694668607|-0.699989021034525>>>|<with|color|dark
    blue|<math-at|h<rsub|1>|<point|-4.7|1.40000330731578>>>|<with|color|dark
    blue|<math-at|h<rsub|2>|<point|3.50000661463156|-1.30000992194735>>>|<with|color|dark
    blue|<math-at|\<theta\><rsub|2>|<point|0.4|-1>>>|<with|color|dark
    blue|<math-at|\<theta\><rsub|1>|<point|-0.653079264188385|0.93747294483397>>>>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|t>|<cell|=>|<cell|<cfrac|n<rsub|1>|c>*<sqrt|h<rsub|1><rsup|2>+x<rsup|2>>+<cfrac|n<rsub|2>|c>*<sqrt|h<rsub|2><rsup|2>+<around*|(|L-x|)><rsup|2>>>>|<row|<cell|<cfrac|\<mathd\>t|\<mathd\>x>>|<cell|=>|<cell|<cfrac|n<rsub|1>|c>**<dfrac|x|<sqrt|h<rsub|1><rsup|2>+x<rsup|2>>>-<cfrac|n<rsub|2>|c>**<dfrac|L-x|<sqrt|h<rsub|2><rsup|2>+<around*|(|L-x|)><rsup|2>>>>>|<row|<cell|0>|<cell|=>|<cell|<cfrac|n<rsub|1>|c>*sin
      \<theta\> <rsub|1>*-<cfrac|n<rsub|2>|c>**sin \<theta\>
      <rsub|2>>>|<row|<cell|n<rsub|1>*sin \<theta\>
      <rsub|1>>|<cell|=>|<cell|n<rsub|2>*sin \<theta\> <rsub|2>>>>>
    </eqnarray*>

    <item>
  </enumerate-numeric>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>