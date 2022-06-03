<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Linear Equation>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <section|Review of Math Operations>

  <subsection|Addition and Subtraction>

  It's easy to deal with addition. For example in the additions below, we can
  rearrange the numbers and choose the order of operation as we like.

  <\eqnarray*>
    <tformat|<table|<row|<cell|36+28+14+42>|<cell|=>|<cell|14+36+28+42>>|<row|<cell|>|<cell|=>|<cell|<around*|(|14+36|)>+<around*|(|28+42|)>>>|<row|<cell|>|<cell|=>|<cell|50+70>>|<row|<cell|>|<cell|=>|<cell|120>>>>
  </eqnarray*>

  But if the operations also involves subtractions such as the one below, we
  need to be more careful.

  <\equation*>
    23-18+38-13
  </equation*>

  Of course, we can always do the operations in order from left to right,
  just to be save. But that's not ideal. A better way is to change all the
  subtractions into additions with negatives.

  <\equation*>
    23-17+37-13=23+<around*|(|-17|)>+37+<around*|(|-13|)>
  </equation*>

  And now we're dealing with only additions. Therefore we can rearrange both
  numbers and the operations and solve the problem more easily.

  <\eqnarray*>
    <tformat|<table|<row|<cell|23-17+37-13>|<cell|=>|<cell|23+<around*|(|-17|)>+37+<around*|(|-13|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|23+<around*|(|-13|)>|)>+<around*|(|<around*|(|-17|)>+37|)>>>|<row|<cell|>|<cell|=>|<cell|10+20>>|<row|<cell|>|<cell|=>|<cell|30>>>>
  </eqnarray*>

  <subsection|Multiplication and Division>

  The case for multiplications and division is similar to that of additions
  and subtractions. In a multiplications. we can also rearrange the numbers
  and operations.

  <\eqnarray*>
    <tformat|<table|<row|<cell|8\<cdot\>7\<cdot\>5\<cdot\>3>|<cell|=>|<cell|5\<cdot\>8\<cdot\>3\<cdot\>7>>|<row|<cell|>|<cell|=>|<cell|<around*|(|5\<cdot\>8|)>\<cdot\><around*|(|3\<cdot\>7|)>>>|<row|<cell|>|<cell|=>|<cell|40\<cdot\>21>>|<row|<cell|>|<cell|=>|<cell|840>>>>
  </eqnarray*>

  But we cannot do the rearrangement if the operationd involve both
  multiplications and divisions.

  <\equation*>
    9\<div\>4\<cdot\>8\<div\>3\<cdot\>5
  </equation*>

  Though as we can change subtraction into addition with negatives, we can
  change division into multiplication with reciprocals.

  <\equation*>
    9\<div\>4\<cdot\>8\<div\>3\<cdot\>5=9\<cdot\><dfrac|1|4>\<cdot\>8\<cdot\><cfrac|1|3>\<cdot\>5
  </equation*>

  In this case it's even better to write the multiplications as fractions
  where the reciprocals are in the denominator and the rest are in the
  numerator.

  <\eqnarray*>
    <tformat|<table|<row|<cell|9\<div\>4\<cdot\>8\<div\>3\<cdot\>5>|<cell|=>|<cell|9\<cdot\><dfrac|1|4>\<cdot\>8\<cdot\><cfrac|1|3>\<cdot\>5>>|<row|<cell|>|<cell|=>|<cell|<dfrac|9\<cdot\>8\<cdot\>5|4\<cdot\>3>>>>>
  </eqnarray*>

  Here we still can rearrange the numbers above and below the fraction bar.
  But, since we're dealing with fractions, we can actually simplify a pair of
  numbers from above and below the bar by taking their comon divisor.

  <\eqnarray*>
    <tformat|<table|<row|<cell|9\<div\>4\<cdot\>8\<div\>3\<cdot\>5>|<cell|=>|<cell|9\<cdot\><dfrac|1|4>\<cdot\>8\<cdot\><cfrac|1|3>\<cdot\>5>>|<row|<cell|>|<cell|=>|<cell|<dfrac|9\<cdot\>8\<cdot\>5|4\<cdot\>3>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|9<rsup|3>\<cdot\>8<rsup|2>\<cdot\>5|4\<cdot\>3>>>|<row|<cell|>|<cell|=>|<cell|3\<cdot\>2\<cdot\>5>>|<row|<cell|>|<cell|=>|<cell|3\<cdot\><around*|(|2\<cdot\>5|)>>>|<row|<cell|>|<cell|=>|<cell|3\<cdot\>10>>|<row|<cell|>|<cell|=>|<cell|30>>>>
  </eqnarray*>

  <section|The Structure of Math Expressions>

  A mathematical expression can contains both addition and multiplication (or
  their inverses). To deal with such equations we need to first understand
  their structures.

  <subsection|Terms and Factors>

  We can compare the structure of simple mathematical expressions to the
  structure of an English sentence.

  <\equation*>
    <text|This is a sentence.>
  </equation*>

  The structure of the sentence is actually complicated, but here we just
  want to point out that the sentence consists of four words: "This", "is",
  "a", and "sentence". And those words, in turns, contains 4, 2, 1, and 8
  alphabets. Thus, sentences consist of words which consist of alphabets.

  Now let's consider a mathematical expression.

  <\equation*>
    3+4\<cdot\>2-<cfrac|6|2>-<cfrac|10\<cdot\>2|4>
  </equation*>

  We say that this mathematical expression consists of four terms:
  <math|<around*|(|3|)>>, <around*|(|<math|4\<cdot\>2>|)>,
  <math|<around*|(|<cfrac|6|2>|)>>, and <around*|(|<math|<cfrac|10\<cdot\>
  2|4>>|)>. And we say that each of those terms consists of one, two, two,
  and three factors. As an example, the factor of teh last term
  <around*|(|<math|<cfrac|10\<cdot\> 2|4>>|)> is 10, 2, and
  <math|<cfrac|1|4>>.

  Therefore, as a sentence consists of words which consists of alphabets, a
  mathematical expression consists of terms whoch consists of factors.\ 

  Notice that the terms can consist of just one factor, multiplication of
  factors, division of factors or both. And the terms are connected to one
  another with either addition or subtraction.

  <subsection|Operation hierarchy>

  The structure of an expression defines the order of the operations. To see
  that, let's consider the previous expression.\ 

  <\equation*>
    3+4\<cdot\>2-<cfrac|6|2>-<cfrac|10\<cdot\>2|4>
  </equation*>

  Multiplication or division acts between factors inside a term, for example,
  the first multiplication above acts on 4 and 2 within the term
  <around*|(|<math|4\<cdot\>2>|)>, and the division acts on a factor above
  and below the fraction bar inside the term
  <around*|(|<math|<cfrac|10\<cdot\> 2|4>>|)>.

  However, addition or subtraction acts on the terms. For example the above
  addition acts between the term <math|<around*|(|3|)>> and the term
  <around*|(|<math|4\<cdot\>2>|)>. Thus before we add, we need to multiply 4
  and 2 first to simplify the term. Similar case also applies for the first
  subtraction that acts between <around*|(|<math|4\<cdot\>2>|)>, and
  <around*|(|<math|<cfrac|6|2>>|)>. If we want to do the subtraction we need
  to simplify the terms first by doing the multiplication and division.

  So, to simplify the expression, we simplify the terms by multiplying or
  dividing the factors inside them before combining them with addition or
  subtraction.

  <\eqnarray*>
    <tformat|<table|<row|<cell|3+4\<cdot\>2-<cfrac|6|2>-<cfrac|10\<cdot\>2|4>>|<cell|=>|<cell|3+8-3-<cfrac|10<rsup|5>\<cdot\>2|4<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|3+8-3-5>>|<row|<cell|>|<cell|=>|<cell|3>>>>
  </eqnarray*>

  <subsection|Mathematical equation>

  If we have two mathematical expressions connected by an equal sign such as
  the one below, we have a mathematical equation.\ 

  <\equation*>
    2x+5=3\<cdot\>5-2
  </equation*>

  The equation above consists of two sides, the left side which consists two
  terms: <math|<around*|(|2x|)>> and <math|<around*|(|5|)>>, and the right
  side which also conists of two terms: <math|<around*|(|3\<cdot\>5|)>>, and
  <math|<around*|(|2|)>>.

  <subsection|Variable, coefficient, and constant term>

  Notice that the leftmost term in the above equation is a multiplication of
  <math|2> and <math|x>. Don't worry. The symbol <math|x> is just another
  number. However we don't actually know which number it is. Therefore we
  just write it using an alphabet. We call this kind of number as unknown
  number or variable.

  While we are naming things, a known number that multiplies variable is
  called coefficient. Therefore, <math|2> in <math|2x> is a coefficient. One
  more thing, a term that doesn't contain a variable is called constant term.
  In our sample, <math|<around*|(|5|)>>, <math|<around*|(|3\<cdot\>5|)>,>and
  <math|<around*|(|2|)>> are all constant terms.\ 

  <section|Solving simple linear equation>

  Usually given an equation, we are expected to find the variable. For
  example, given the equation above, chance are we are asked to find what is
  <math|x>. Finding the variable in an equation is also known as solving the
  equation.

  Before solving an equation there is one very useful trick we need to know
  That is we can add or subtract or multiply or divide both sides of equation
  with a number, as long as we use the same number for the left side and
  right side. Which operation to use and which number depends on the equation
  we need to solve so let's just see it in action

  <subsection|Example 1>

  Let's solve our sample equation.

  <\equation*>
    2x+5=3\<cdot\>5-2
  </equation*>

  To find <math|x> the first we do is to simplify the expression that can be
  simplified. Here, we can simplify all the right hand side\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|2x+5>|<cell|=>|<cell|3\<cdot\>5-2>>|<row|<cell|2x+5>|<cell|=>|<cell|15-2>>|<row|<cell|2x+5>|<cell|=>|<cell|13>>>>
  </eqnarray*>

  Now there is nothing we can simplify, we can use our trick to get rid of
  numbers on the same side of the variable. Here it's 2 and 5 we need to get
  rid of. Say we want to get rid of 5 first.

  To do that first we need to determine whether 5 is a coefficient or a
  constant term. In our case it's a constant term. And to get rid a constant
  term we introduce its negative to the equation. In other words to get rid
  of 5 we subtract both sides by 5

  <\eqnarray*>
    <tformat|<table|<row|<cell|2x+5>|<cell|=>|<cell|13>>|<row|<cell|2x+5-5>|<cell|=>|<cell|13-5>>|<row|<cell|2x>|<cell|=>|<cell|8>>>>
  </eqnarray*>

  \ After some simplification we get a much simpler equation. Now we just
  need to get rid of 2 in front of <math|x>. Here, 2 is a coefficient, and to
  get rid of a coefficient we introduce its reciprocal <math|<cfrac|1|2> >.
  In other words, to get rid of 2 we divide both sides by 2<math|>.

  \;

  <\eqnarray*>
    <tformat|<table|<row|<cell|2x>|<cell|=>|<cell|8>>|<row|<cell|<cfrac|2x|2>>|<cell|=>|<cell|<cfrac|8|2>>>|<row|<cell|x>|<cell|=>|<cell|4>>>>
  </eqnarray*>

  After some simplification, we find the variable <math|x> which is 4.

  <subsection|Example 2>

  Let's solve another equation.

  <\equation*>
    <cfrac|x|4>-3=2
  </equation*>

  As a start, we see that there is no part of the equation that we can
  simplify, therefore we go straight to eliminating the numbers on the same
  side with <math|x> that is 4 and 3. Let's start with 3.

  Here, 3 is a constant term, and it's a negative term. So to get rid of it,
  we add 3 to both sides.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<cfrac|x|4>-3>|<cell|=>|<cell|2>>|<row|<cell|<cfrac|x|4>-3+3>|<cell|=>|<cell|2+3>>|<row|<cell|<cfrac|x|4>>|<cell|=>|<cell|5>>>>
  </eqnarray*>

  Now let's get rid of 4. Now, 4 is in the denominator, it's a reciprocal. So
  we multiply both sides by 4.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<cfrac|x|4>>|<cell|=>|<cell|5>>|<row|<cell|<cfrac|x|4>\<cdot\>4>|<cell|=>|<cell|5\<cdot\>
    4>>|<row|<cell|x>|<cell|=>|<cell|20>>>>
  </eqnarray*>

  <subsection|Example 3>

  Let's see one more example.

  <\equation*>
    2-x+3=10
  </equation*>

  First there is a simplification that we can do on the left side, we can
  combine the terms 2 and 3. But first we need swap the position of 2 and
  <math|x>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|2-x+3>|<cell|=>|<cell|10>>|<row|<cell|2+<around*|(|-x|)>+3>|<cell|=>|<cell|10>>|<row|<cell|<around*|(|-x|)>+2+3>|<cell|=>|<cell|10>>|<row|<cell|-x+5>|<cell|=>|<cell|10>>>>
  </eqnarray*>

  Now, let's eliminate 5. It's a positive constant term therefore we subtract
  both sides by 5.

  <\eqnarray*>
    <tformat|<table|<row|<cell|-x+5>|<cell|=>|<cell|10>>|<row|<cell|-x+5-5>|<cell|=>|<cell|10-5>>|<row|<cell|-x>|<cell|=>|<cell|5>>>>
  </eqnarray*>

  If we get negative <math|x>, we can just flip the sign on both sides of the
  equation.

  <\eqnarray*>
    <tformat|<table|<row|<cell|-x>|<cell|=>|<cell|5>>|<row|<cell|x>|<cell|=>|<cell|-5>>>>
  </eqnarray*>

  <section|A more complex equation>

  In a simple math equation, multiplication or division is always done before
  addition or subtraction. But oftentimes we need to do the last two
  operations first. In that case, the addition or subtraction can be put
  inside a parenthesis.

  <\equation*>
    <around*|(|6-4|)>x+5=3\<cdot\><around*|(|1+<cfrac|3\<cdot\>8|6>|)>-2
  </equation*>

  The structure of such equations become more complex, but we treat the
  expression inside parentheses as a factor. Thus, overall the expression
  consists of four terms: \ <math|<around*|[|<around*|(|6-4|)>x|]>>,
  <around*|[|<math|5>|]>, <around*|[|<math|3\<cdot\>
  <around*|(|1+<cfrac|3\<cdot\>8|6>|)>>|]>, and <around*|[|<math|2>|]>, each
  contains two, one, two, and one factors.

  The leftmost term <math|<around*|[|<around*|(|6-4|)>x|]>> contains two
  factors, <math|<around*|(|6-4|)>> and <math|x>. The first factor is
  interesting because it's actually comprised of two terms 6 and 4. A more
  complex term is the left term on the right hand side, but the analysis is
  straightforward so we'll skip it.

  <subsection|Example 4>

  Let's actually solve the equation above.

  <\equation*>
    <around*|(|6-4|)>x+5=3\<cdot\><around*|(|1+<cfrac|3\<cdot\>8|6>|)>-2
  </equation*>

  Even though more complex, this equation is actually not that much harder to
  solve. Here, we just need to simplify the expression inside the
  parenthesis.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|6-4|)>x+5>|<cell|=>|<cell|3\<cdot\><around*|(|1+<cfrac|3\<cdot\>8|6>|)>-2>>|<row|<cell|2x+5>|<cell|=>|<cell|3\<cdot\><around*|(|1+4|)>-2>>|<row|<cell|2x+5>|<cell|=>|<cell|3\<cdot\>5-2>>>>
  </eqnarray*>

  Notice that the equation above is our first example of equation. Therefore
  we won't repeat the procedure because we've already knwon that the solution
  is <math|x=4>.

  <subsection|Distributive property>

  Consider the following expression.

  <\equation*>
    3\<cdot\><around*|(|2+4+6|)>
  </equation*>

  We can simplify the expression, starting from the additions inside.

  <\eqnarray*>
    <tformat|<table|<row|<cell|3\<cdot\><around*|(|2+4+6|)>>|<cell|=>|<cell|3\<cdot\>12>>|<row|<cell|>|<cell|=>|<cell|36>>>>
  </eqnarray*>

  In the simplification above, we do addition first and then we multiply the
  result with 3. But let's say that we really want to do multiplication first
  and then additions.

  Yes we can do that but we need to change the form the expression into
  multiplicatio first. And we do that by distributing the multiplication with
  3 to all the terms inside parentheses.

  <\equation*>
    3\<cdot\><around*|(|2+4+6|)>=3\<cdot\> 2+3\<cdot\> 4+3\<cdot\> 6
  </equation*>

  Now, we can do the multiplication and then add them together. The result is
  the same.

  <\eqnarray*>
    <tformat|<table|<row|<cell|3\<cdot\><around*|(|2+4+6|)>>|<cell|=>|<cell|3\<cdot\>
    2+3\<cdot\> 4+3\<cdot\> 6>>|<row|<cell|>|<cell|=>|<cell|6+12+18>>|<row|<cell|>|<cell|=>|<cell|36>>>>
  </eqnarray*>

  The properties that multiplication distributes to addition is called
  distributive properties.\ 

  Multipliclation also distributes to subtraction, as you can check in the
  equation below

  <\equation*>
    2\<cdot\> <around*|(|3+4-2|)>=2\<cdot\> 3+2\<cdot\> 4-2\<cdot\> 2
  </equation*>

  <subsection|Example 5>

  By distributing we break one complicated term into several simpler terms.
  And we can use this property when solving a problem like the one below.

  <\equation*>
    5\<cdot\> <around*|(|x+2|)>=75
  </equation*>

  See that the variable <math|x> is inside the parenthesis which can look
  confusing. So, to simplify the expression we distribute the multiplication
  of 5 with all the terms inside parenthesis.

  <\eqnarray*>
    <tformat|<table|<row|<cell|5\<cdot\> <around*|(|x+2|)>>|<cell|=>|<cell|75>>|<row|<cell|5x+5\<cdot\>
    2>|<cell|=>|<cell|75>>>>
  </eqnarray*>

  The form now is familiar and we can proceed by simplifying <math|5\<cdot\>
  2>, getting rid the result from the left side and then eliminating the
  coefficient 5.

  <\eqnarray*>
    <tformat|<table|<row|<cell|5x+5\<cdot\>2>|<cell|=>|<cell|75>>|<row|<cell|5x+10>|<cell|=>|<cell|75>>|<row|<cell|5x+10-10>|<cell|=>|<cell|75-10>>|<row|<cell|5x>|<cell|=>|<cell|65>>|<row|<cell|<cfrac|5x|5>>|<cell|=>|<cell|<cfrac|65|5>>>|<row|<cell|x>|<cell|=>|<cell|13>>>>
  </eqnarray*>

  <subsection|Factorization>

  So we've seen how multiplication distributes to addition and subtraction.
  But sometimes we want to go to the other direction. Le's saywe're given
  additions of terms, all containing mutual factor.

  <\equation*>
    2\<cdot\> 4+2\<cdot\> 3+2\<cdot\> 5
  </equation*>

  We can simplify the expression above by multiplicating and then adding, but
  then we asked ourselves whether we can do the addition first and
  multiplication.

  Well, the answer is yes. If all the terms contains a mutual factors we can
  factorize it out of addition using the reverse of distributive property.

  <\equation*>
    2\<cdot\> 4+2\<cdot\> 3+2\<cdot\> 5=2\<cdot\> <around*|(|4+3+5|)>
  </equation*>

  We also call this process as factorization. And the number that we take out
  of the addition is the number that we factorize.

  There are some note regarding factorization. First, we can do factorization
  even if one of the term contains only the factor we want to factorize by
  inserting multiplication by 1 into the term (which is allowed because
  multiplying by one doesn't change the value).

  <\eqnarray*>
    <tformat|<table|<row|<cell|3\<cdot\> 6+3\<cdot\>
    2+3>|<cell|=>|<cell|3\<cdot\> 6+3\<cdot\> 2+3\<cdot\>
    1>>|<row|<cell|>|<cell|=>|<cell|3\<cdot\> <around*|(|6+2+1|)>>>>>
  </eqnarray*>

  Second, we can do factorization even if one of the term doesn't contain the
  mutual factor. Here, we can also insert multiplication by one to the term
  but this time in the form of the mutual factor per mutual factor as
  follows.

  <\eqnarray*>
    <tformat|<table|<row|<cell|3\<cdot\> 6+3\<cdot\>
    2+7>|<cell|=>|<cell|3\<cdot\> 6+3\<cdot\> 2+7\<cdot\> <cfrac|
    3|3>>>|<row|<cell|>|<cell|=>|<cell|3\<cdot\> <around*|(|6+2+<cfrac|7
    |3>|)>>>>>
  </eqnarray*>

  Third, we can also factorize the mutual factor to the right of
  multiplication. This actually also applies for distribution.

  <\eqnarray*>
    <tformat|<table|<row|<cell|6\<cdot\> 3+2\<cdot\> 3+4\<cdot\>
    3>|<cell|=>|<cell|<around*|(|6+2+4|)>\<cdot\> 3>>>>
  </eqnarray*>

  Now let's see some factorization in action

  <subsection|Example 6>

  Let's solve the following equation

  <\equation*>
    2x+3x=10
  </equation*>

  Here, we have two terms containing the variable. But don't worry we can
  actually factor the <math|x> out of the addition and come to a familiar
  form of equation.

  <\eqnarray*>
    <tformat|<table|<row|<cell|2x+3x>|<cell|=>|<cell|10>>|<row|<cell|<around*|(|2+3|)>x>|<cell|=>|<cell|10>>|<row|<cell|5x>|<cell|=>|<cell|10>>>>
  </eqnarray*>

  Now, we can just eliminate 5 by dividing both sides by 5. And after a
  simpification we get the answer.

  <\eqnarray*>
    <tformat|<table|<row|<cell|5x>|<cell|=>|<cell|10>>|<row|<cell|<cfrac|
    5x|5>>|<cell|=>|<cell|<cfrac| 10|5>>>|<row|<cell|x>|<cell|=>|<cell|5>>>>
  </eqnarray*>

  <subsection|Example 7>

  The last example was not that hard. Let's solve another one.

  <\equation*>
    4x+4=2x+8
  </equation*>

  This case is a little different because now we have variables in both
  sides. But still what we need to do is to isolate <math|x> on one side and
  the others on the opposite side. Normally we have \ <math|x> on the left
  and other numbers on the right. So let's just do that.

  First we get rid of 4 on the left.

  <\eqnarray*>
    <tformat|<table|<row|<cell|4x+4>|<cell|=>|<cell|2x+8>>|<row|<cell|4x+4-4>|<cell|=>|<cell|2x+8-4>>|<row|<cell|4x>|<cell|=>|<cell|2x+4>>>>
  </eqnarray*>

  eNext, we can get rid of the coefficient 4 but that would complicate
  things. So before that see the right side. Since we want only numbers
  there, let's get rid of the term <math|<around*|(|2x|)>> by subtracting
  both sides by the term.

  <\eqnarray*>
    <tformat|<table|<row|<cell|4x>|<cell|=>|<cell|2x+4>>|<row|<cell|4x-2x>|<cell|=>|<cell|2x+4-2x>>|<row|<cell|<around*|(|4-2|)>x>|<cell|=>|<cell|2x+4+<around*|(|-2x|)>>>|<row|<cell|2x>|<cell|=>|<cell|2x+<around*|(|-2x|)>+4>>|<row|<cell|2x>|<cell|=>|<cell|4>>>>
  </eqnarray*>

  See that above, we also combine the two terms on the left by factoring
  \ <math|x> out. And we also simplify the right side.

  The next steps are to get rid of the coefficient 2 and simplify. \ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|2x>|<cell|=>|<cell|4>>|<row|<cell|<cfrac|2x
    |2>>|<cell|=>|<cell|<cfrac| 4|2>>>|<row|<cell|x>|<cell|=>|<cell|2>>>>
  </eqnarray*>

  <section|Linear equation with one variable>

  All the equations that we have solved so far contains only two kinds of
  terms, constant terms and terms containing <math|x> with a coeficient. This
  type of equation is also called linear equation.

  Moreover all of the linear equation we've seen contains only one kind of
  variable <math|x> therefore we can call them as linear equation with one
  variable.

  By the way, the variable in a linear equation doesn't have to be <math|x>.
  It can also be <math|y>, <math|z>, or any other alphabet.

  <\equation*>
    2y-4=<cfrac|6|3>
  </equation*>

  Can you solve the equation?

  \;

  \;

  \;

  \;

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
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|3.1|4>>
    <associate|auto-11|<tuple|3.2|?>>
    <associate|auto-12|<tuple|3.3|?>>
    <associate|auto-13|<tuple|4|?>>
    <associate|auto-14|<tuple|4.1|?>>
    <associate|auto-15|<tuple|4.2|?>>
    <associate|auto-16|<tuple|4.3|?>>
    <associate|auto-17|<tuple|4.4|?>>
    <associate|auto-18|<tuple|4.5|?>>
    <associate|auto-19|<tuple|4.6|?>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|5|?>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|2|2>>
    <associate|auto-5|<tuple|2.1|2>>
    <associate|auto-6|<tuple|2.2|3>>
    <associate|auto-7|<tuple|2.3|3>>
    <associate|auto-8|<tuple|2.4|3>>
    <associate|auto-9|<tuple|3|4>>
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

      <with|par-left|<quote|1tab>|2.4<space|2spc>Variables
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Solving
      a simple linear equation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Example 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>
    </associate>
  </collection>
</auxiliary>