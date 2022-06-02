<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Linear Equation>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <section|Review of Math Operations>

  <subsection|Addition and Subtraction>

  It's easy to deal with addition. For example in solving the additions
  below, we can rearrange the numbers and choose the additions order as we
  like.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x>|<cell|=>|<cell|36+28+14+42>>|<row|<cell|>|<cell|=>|<cell|14+36+28+42>>|<row|<cell|>|<cell|=>|<cell|<around*|(|14+36|)>+<around*|(|28+42|)>>>|<row|<cell|>|<cell|=>|<cell|50+70>>|<row|<cell|>|<cell|=>|<cell|120>>>>
  </eqnarray*>

  But If the operations also involves subtractions such as the one below, we
  need to be careful.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y>|<cell|=>|<cell|23-18+38-13>>>>
  </eqnarray*>

  Of course, just to be save, we can always do the operations in order from
  left to right. But that's not ideal. A better way is to change all the
  subtractions into additions with negatives.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y>|<cell|=>|<cell|23-17+37-13>>|<row|<cell|>|<cell|=>|<cell|23+<around*|(|-17|)>+37+<around*|(|-13|)>>>>>
  </eqnarray*>

  And now we're dealing with only additions. Thus we can rearrange both
  numbers and the operations and solve the problems more easily.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y>|<cell|=>|<cell|23-17+37-13>>|<row|<cell|>|<cell|=>|<cell|23+<around*|(|-17|)>+37+<around*|(|-13|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|23+<around*|(|-13|)>|)>+<around*|(|<around*|(|-17|)>+37|)>>>|<row|<cell|>|<cell|=>|<cell|10+20>>|<row|<cell|>|<cell|=>|<cell|30>>>>
  </eqnarray*>

  <subsection|Multiplication and Division>

  Similar to the case of addition, when solving multiplications we can
  rearrange the numbers and operations.

  <\eqnarray*>
    <tformat|<table|<row|<cell|z>|<cell|=>|<cell|8\<cdot\>7\<cdot\>5\<cdot\>3>>|<row|<cell|>|<cell|=>|<cell|5\<cdot\>8\<cdot\>3\<cdot\>7>>|<row|<cell|>|<cell|=>|<cell|<around*|(|5\<cdot\>8|)>\<cdot\><around*|(|3\<cdot\>7|)>>>|<row|<cell|>|<cell|=>|<cell|40\<cdot\>21>>|<row|<cell|>|<cell|=>|<cell|840>>>>
  </eqnarray*>

  And similar with the case of addition and subtraction, we cannot do the
  rearrangement if the operation involve both multiplication and division.

  <\eqnarray*>
    <tformat|<table|<row|<cell|w>|<cell|=>|<cell|9\<div\>4\<cdot\>8\<div\>3\<cdot\>5>>>>
  </eqnarray*>

  But also, as we can change subtraction into addition with negatives, we can
  change division into multiplication with reciprocals.

  <\eqnarray*>
    <tformat|<table|<row|<cell|w>|<cell|=>|<cell|9\<div\>4\<cdot\>8\<div\>3\<cdot\>5>>|<row|<cell|>|<cell|=>|<cell|9\<cdot\><dfrac|1|4>\<cdot\>8\<cdot\><cfrac|1|3>\<cdot\>5>>>>
  </eqnarray*>

  But in this case it's even better to write the multiplications as fractions
  where the reciprocals are collected into the denominator and the rest
  collected in the nominator.

  <\eqnarray*>
    <tformat|<table|<row|<cell|w>|<cell|=>|<cell|9\<div\>4\<cdot\>8\<div\>3\<cdot\>5>>|<row|<cell|>|<cell|=>|<cell|9\<cdot\><dfrac|1|4>\<cdot\>8\<cdot\><cfrac|1|3>\<cdot\>5>>|<row|<cell|>|<cell|=>|<cell|<dfrac|9\<cdot\>8\<cdot\>5|4\<cdot\>3>>>>>
  </eqnarray*>

  Now we can rearrange the numbers above and below the fraction bar. However,
  since we're dealing with fractions, we can actually a pair of numbers from
  above and below the bar by taking their comon divisor such as the
  following.

  <\eqnarray*>
    <tformat|<table|<row|<cell|w>|<cell|=>|<cell|9\<div\>4\<cdot\>8\<div\>3\<cdot\>5>>|<row|<cell|>|<cell|=>|<cell|9\<cdot\><dfrac|1|4>\<cdot\>8\<cdot\><cfrac|1|3>\<cdot\>5>>|<row|<cell|>|<cell|=>|<cell|<dfrac|9\<cdot\>8\<cdot\>5|4\<cdot\>3>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|9<rsup|3>\<cdot\>8<rsup|2>\<cdot\>5|4\<cdot\>3>>>|<row|<cell|>|<cell|=>|<cell|3\<cdot\>2\<cdot\>5>>|<row|<cell|>|<cell|=>|<cell|3\<cdot\><around*|(|2\<cdot\>5|)>>>|<row|<cell|>|<cell|=>|<cell|3\<cdot\>10>>|<row|<cell|>|<cell|=>|<cell|30>>>>
  </eqnarray*>

  <section|The Structure of Math Equations>

  Many equation contains both addition and multiplications (and also their
  inverses). To solve them, it's good to first understand the structure of
  those equations.

  <subsection|Terms and Factors>

  We can learn the structure of simple mathematical equations by comparing it
  to the structure of an English sentence.

  <\equation*>
    <text|This is a sentence.>
  </equation*>

  The structure of a sentence is actually complicated, but here we just want
  to point out that the whole sentence consists of four words: "This", "is",
  "a", and "sentence". And those words, in turns, contains 4, 2, 1, and 8
  alphabet. Thus sentences consists of words which consists of alphabet.

  Now let's see an example of mathematical expression.

  <\equation*>
    3+4\<cdot\>2-<cfrac|6|2>-<cfrac|10\<cdot\>2|4>
  </equation*>

  We say that this mathematical expression consists of four terms: <math|3>,
  <math|4\<cdot\>2>, <math|<cfrac|6|2>>, and <math|<cfrac|10\<cdot\> 2|4>>.
  And we say that each of those terms consists of one, two, two, and three
  factors. As an example, the factor of teh last term <math|<cfrac|10\<cdot\>
  2|4>> is 10, 2, and <math|<cfrac|1|4>>.

  So if a sentence consists of words which consists of alphabet, a
  mathematical expression consists of terms whoch consists of factors. See
  that the terms can consists of a factor, multiplication of factors,
  division of factors or both. And they are connected to one another with
  either addition or subtraction.

  But before that, we should know the expression above is not complete
  equation, it doesn't contain equal sign. One way to turn it complete
  equations to put it with <math|x> and equal sign as follows. The symbol
  <math|x> here stands for, at least for now, the result of the operations on
  the right.

  <\equation*>
    x=3+4\<cdot\>2-<cfrac|6|2>-<cfrac|10\<cdot\>2|4>
  </equation*>

  <subsection|Operation hierarchy>

  The structure of an equation also define which operation must be performed
  before the other. To see that, let's consider the previous equation.\ 

  <\equation*>
    x=3+4\<cdot\>2-<cfrac|6|2>-<cfrac|10\<cdot\>2|4>
  </equation*>

  Multiplication or division acts between factors insisde a term, for
  example, this first multiplication above acts on 4 and 2 within the term
  <math|4\<cdot\>2>, and the division acts on a factor above and below inside
  the term <math|<cfrac|10\<cdot\> 2|4>>.

  However addition or subtraction acts on the terms. For example the addition
  above acts between the term 3 and the term <math|4\<cdot\>2>. So before we
  add we need to multiply 4 and 2 first to simplify the term. Similar case
  also applies for the first subtraction that acts between <math|4\<cdot\>2>,
  and <math|<cfrac|6|2>>, so if we want to do the subtraction we nened to
  first simplify the terms by doing the multiplication and division.

  So, to simplify the equation, we simplify the terms before combining them
  with addition or subtraction.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x>|<cell|=>|<cell|3+4\<cdot\>2-<cfrac|6|2>-<cfrac|10\<cdot\>2|4>>>|<row|<cell|>|<cell|=>|<cell|3+8-3-<cfrac|10<rsup|5>\<cdot\>2|4<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|3+8-3-5>>|<row|<cell|>|<cell|=>|<cell|3>>>>
  </eqnarray*>

  <subsection|A more general equation>

  Simplifying the previous equations is rather straightforward because all
  the known numbers are collected together in one side and the left hand side
  just contains <math|x>. But the left hand side of an equation can also
  contain known numbers forming multiple terms and <math|x > is just a factor
  in one of the terms, such as in the following equation.

  <\equation*>
    2x+5=3\<cdot\>3-2
  </equation*>

  In this case, we can't say that <math|x> represent the result of the
  expression on the right. But if not so, then what is this <math|x?> Well
  <math|x> is actually just a number, an unknown number. Unlike known numbers
  that can be written directly such as 2, 3, and 5 in the above equation,
  unknown number is not known. Therefore we write them with a symbol such as
  <math|x>. But we don't have to always use <math|x> we can also use <math|y>
  or <math|z > or any symbol. And the known number is also called variable.

  <section|Solving a simple linear equation>

  Usually given an equation, we are expected to find the variable .For
  example given the above equation, chance are, we are asked to find
  <math|x>. So let's just do that.

  <\equation*>
    2x+5=3\<cdot\>3-2
  </equation*>

  To find <math|x> we need to get rid of other numbers on the left sides,
  which is 2 and 5. To do that, we can use the fact that given an equation we
  can alwas add or subtract or multiply or divide both sides of the equal
  sign by the same number. Which\ 

  \ 

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
    <associate|auto-1|<tuple|1|1|..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_5.tm>>
    <associate|auto-2|<tuple|1.1|1|..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_5.tm>>
    <associate|auto-3|<tuple|1.2|1|..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_5.tm>>
    <associate|auto-4|<tuple|2|2|..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_5.tm>>
    <associate|auto-5|<tuple|2.1|2|..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_5.tm>>
    <associate|auto-6|<tuple|2.2|3|..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_5.tm>>
    <associate|auto-7|<tuple|2.3|3|..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_5.tm>>
    <associate|auto-8|<tuple|3|4|..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_5.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Review
      of Math Operations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Addition and Subtraction
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Multiplication and Division
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>The
      Structure of Math Equations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Terms and Factors
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Operation hierarchy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>A more general equation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Solving
      a simple linear equation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>