<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|System of Linear Equations>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <section|Linear Equations with 2 variables>

  A linear equation can contains two different variables such as the one
  below.

  <\equation*>
    3x+2y=13
  </equation*>

  Unfortunately from just above equation, we can't find the two numbers.
  There is a rule in mathematics that says to find the variables we need at
  least as many equations as we have variables. Therefore, to find two
  variables we need two equations.

  So, let's say we have another one, so that we have a system of two
  equations.

  <\equation*>
    3x+2y=13
  </equation*>

  <\equation*>
    4x-3y=6
  </equation*>

  Well, now we can solve them. And we have two different methods to find the
  two variables.

  <subsection|Elimination method>

  In elimination method we first combine the two equation in such a way that
  one of the variable is gone. Hence, we are left with one variable which we
  can solve using technique for equation with one variable. Once we get one
  of the variable, we substitute that to one of the initial equation to find
  the other one

  Let's just see it in action by solving the previous two equation.

  <\equation*>
    3x+2y=13
  </equation*>

  <\equation*>
    4x-3y=6
  </equation*>

  <with|font-series|bold|Step 1>. Choose the variable we want to eliminate,
  let's call it target variable

  We can choose any of the two. So let say we want to eliminate <math|y>. And
  as a preparation for the next step, observe the coefficient of <math|y> in
  both equation, which is 2 and 3.

  <strong|Step 2>. Multiply the equations by the coefficient of the target
  variables on the other equations.

  That means, we multiply both sides of the first equation, <math|3x+2y=13>,
  by the coefficient of <math|y> in the second equation, which is 3.

  <\eqnarray*>
    <tformat|<table|<row|<cell|3\<cdot\> <around*|(|3x+2y|)>>|<cell|=>|<cell|3\<cdot\>
    <around*|(|13|)>>>|<row|<cell|9x+6y>|<cell|=>|<cell|39>>>>
  </eqnarray*>

  Also, we need to do the ssmr for the second equation, <math|4x-3y=6>, we
  multiply it by the coefficient of the first equation, which is 2.

  <\eqnarray*>
    <tformat|<table|<row|<cell|2\<cdot\> <around*|(|4x-3y|)>>|<cell|=>|<cell|2\<cdot\>
    <around*|(|6|)>>>|<row|<cell|8x-6y>|<cell|=>|<cell|12>>>>
  </eqnarray*>

  Now let's collect the two equations that has been modified, now the terms
  containing <math|y> on both equations are the same, <math|6y> . A
  preparation for the next step observe whether the sign on the two terms are
  equal or opposite.

  <\equation*>
    9x+6y=39
  </equation*>

  <\equation*>
    8x-6y=12
  </equation*>

  <strong|Step 3.> If the terms with the target variables have the same sign,
  subtract one equation by the other, if the signs are opposite of each
  other, add the equations.

  In our case since the signs of <math|6y>'s are opposite of each other, we
  add both equations. To add the two equations we add all the terms together
  in their respective sides.

  <\equation*>
    <around*|(|9x+6y|)>+<around*|(|8x-6y|)>=39+12
  </equation*>

  Notice that the left side of the combined equation consists of terms from
  the left side of the first and the second equation. The case also the same
  for the right side.

  <with|font-series|bold|Step 4.> Simplify the combined equation to get the
  value one of the variable.

  After some simplification, we get one linear equation with one variable.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|9x+6y|)>+<around*|(|8x-6y|)>>|<cell|=>|<cell|39+12>>|<row|<cell|<around*|(|9x+8x|)>+<around*|(|6y-6y|)>>|<cell|=>|<cell|51>>|<row|<cell|<around*|(|9+8|)>x+0>|<cell|=>|<cell|51>>|<row|<cell|17x>|<cell|=>|<cell|51>>|<row|<cell|<cfrac|
    17x|17>>|<cell|=>|<cell|<cfrac| 51|17>>>|<row|<cell|x>|<cell|=>|<cell|3>>>>
  </eqnarray*>

  <with|font-series|bold|Step 5>. Substitute the value of the variable we
  found in one of the initial equation.

  Here we need to choose one of the initial equation, say the first one,
  <math|3x+2y=13>, and substitute <math|x> with the value we found on the
  previous step which is 3.

  <\eqnarray*>
    <tformat|<table|<row|<cell|3x+2y>|<cell|=>|<cell|13>>|<row|<cell|3\<cdot\>
    <around*|(|3|)>+2y>|<cell|=>|<cell|13>>|<row|<cell|9+2y>|<cell|=>|<cell|13>>>>
  </eqnarray*>

  <with|font-series|bold|Step 6.> Simplify the equation \ to get the value of
  the other variable.

  <\eqnarray*>
    <tformat|<table|<row|<cell|9+2y>|<cell|=>|<cell|13>>|<row|<cell|2y+9>|<cell|=>|<cell|13>>|<row|<cell|2y+9-9>|<cell|=>|<cell|13-9>>|<row|<cell|2y>|<cell|=>|<cell|4>>|<row|<cell|<cfrac|
    2y|2>>|<cell|=>|<cell|<cfrac| 4|2>>>|<row|<cell|y>|<cell|=>|<cell|2>>>>
  </eqnarray*>

  Thus, we get the two variables <math|<around*|(|x,y|)>=<around*|(|3,2|)>>.

  Not all elimination method will be this long though, for some cases we
  don't need to do all the steps. Let's see this another example

  <subsection|Some more elimination>

  Let's solve the following system of two equations using elimination method.

  <\equation*>
    8x+y=12
  </equation*>

  <\equation*>
    4x+y=8
  </equation*>

  <with|font-series|bold|Step 1.> Here we choose y to be eliminiated because
  the terms has already the same coefficient, which is 1. Therefore we can
  skip step 2. And as preparation for step 3, see that the sign of the terms
  <math|y> is the same.

  <with|font-series|bold|Step 3.> Subtract the first equation by the second
  one. We do this by subtracting the terms from the first equation by that
  from the second one on respective sides.

  <\equation*>
    <around*|(|8x+y|)>-<around*|(|4x+y|)>=12-8
  </equation*>

  <with|font-series|bold|Step 4.> simplify and get <math|x>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|8x+y|)>-<around*|(|4x+y|)>>|<cell|=>|<cell|12-8>>|<row|<cell|8x+y-4x-y>|<cell|=>|<cell|4>>|<row|<cell|<around*|(|8x-4x|)>+y<around*|\<nobracket\>|y-4|)>>|<cell|=>|<cell|4>>|<row|<cell|<around*|(|8-4|)>x+0>|<cell|=>|<cell|4>>|<row|<cell|4x>|<cell|=>|<cell|4>>|<row|<cell|<cfrac|
    4x|4>>|<cell|=>|<cell|<cfrac| 4|4>>>|<row|<cell|x>|<cell|=>|<cell|1>>>>
  </eqnarray*>

  <with|font-series|bold|Step 5.> Substitute the value of <math|x> that we
  found in one of the initial equation, say the first one.

  <\eqnarray*>
    <tformat|<table|<row|<cell|8x+y>|<cell|=>|<cell|12>>|<row|<cell|8\<cdot\>
    <around*|(|1|)>+y>|<cell|=>|<cell|12>>>>
  </eqnarray*>

  <with|font-series|bold|Step 6.> Simplify to get <math|y>

  <\eqnarray*>
    <tformat|<table|<row|<cell|8\<cdot\> <around*|(|1|)>+y>|<cell|=>|<cell|12>>|<row|<cell|8+y>|<cell|=>|<cell|12>>|<row|<cell|y+8>|<cell|=>|<cell|12>>|<row|<cell|y+8-8>|<cell|=>|<cell|12-8>>|<row|<cell|y>|<cell|=>|<cell|4>>>>
  </eqnarray*>

  Thus we get <math|<around*|(|x,y|)>=<around*|(|1,4|)>>

  \;

  Now it's time to see another method of solving system of two linear
  equation.

  <subsection|Substitution method>

  In substitution method we solve one for one of the variable as if the other
  is known, we call the result the halfway equation and use to substitute the
  variable in the other equations and find the other variable that we treat
  as if we know it. After that we just substitute it in our halfway equation
  to find the other one

  Let's make sure that we are solving the first systems right by also doing
  it with substitution method.

  <\equation*>
    3x+2y=13
  </equation*>

  <\equation*>
    4x-3y=6
  </equation*>

  Here are the step for substitution method.

  <with|font-series|bold|Step 1.> Choose one variable in one equation.

  Here it's better to the variable with the simplest coefficient in the
  simplest equation. But here it's all just the same. Let's choose <math|x>
  in<space|1em>the first equation.

  <with|font-series|bold|Step 2. >Solve the chosen equation for the chosen
  variable as if the other variable is known.

  For our case, we assume that we know <math|y> and solve for <math|x>. We
  get rid all the numbers including <math|y> from the left side of the
  equation.\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|3x+2y>|<cell|=>|<cell|13>>|<row|<cell|3x+2y-2y>|<cell|=>|<cell|13-2y>>|<row|<cell|3x>|<cell|=>|<cell|13-2y>>|<row|<cell|<cfrac|
    3x|3>>|<cell|=>|<cell|<cfrac| 13-2y|3>>>|<row|<cell|x>|<cell|=>|<cell|<cfrac|
    13-2y|3> >>>>
  </eqnarray*>

  Since we don't actually know <math|y>. We get this mess and let's just call
  it the halfway equation.

  <with|font-series|bold|Step 3.> Substitute the chosen variable in the other
  equation with the result from step 2.

  Here we consider the initial equation that we don't choose,<math|4x-3y=6> ,
  and substitute <math|x> with our halfway equation.

  <\eqnarray*>
    <tformat|<table|<row|<cell|4x-3y>|<cell|=>|<cell|6>>|<row|<cell|4<around*|(|<cfrac|
    13-2y|3>|)>-3y>|<cell|=>|<cell|6>>>>
  </eqnarray*>

  <with|font-series|bold|Step 4.> Simplify the equation to get the variable
  that we don't chose.

  <\eqnarray*>
    <tformat|<table|<row|<cell|4\<cdot\> <around*|(|<cfrac|
    13-2y|3>|)>-3y>|<cell|=>|<cell|6>>|<row|<cell|3\<cdot\>
    <around*|[|4\<cdot\> <around*|(|<cfrac|
    13-2y|3>|)>-3y|]>>|<cell|=>|<cell|3\<cdot\> 6>>|<row|<cell|3\<cdot\>
    4\<cdot\> <around*|(|<cfrac| 13-2y|3>|)>-3\<cdot\>
    3y>|<cell|=>|<cell|18>>|<row|<cell|4\<cdot\>
    <around*|(|13-2y|)>-9y>|<cell|=>|<cell|18>>|<row|<cell|52-8y-9y>|<cell|=>|<cell|18>>|<row|<cell|52-17y>|<cell|=>|<cell|18>>|<row|<cell|-17y+52>|<cell|=>|<cell|18>>|<row|<cell|-17y+52-52>|<cell|=>|<cell|18-52>>|<row|<cell|-17y>|<cell|=>|<cell|-34>>|<row|<cell|<cfrac|-17y|-17>>|<cell|=>|<cell|<cfrac|-34|-17>>>|<row|<cell|y>|<cell|=>|<cell|2>>>>
  </eqnarray*>

  <with|font-series|bold|Step 5.> Substitute the result of the previous step
  to the equation from step 2.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x>|<cell|=>|<cell|<cfrac| 13-2y|3>
    >>|<row|<cell|x>|<cell|=>|<cell|<cfrac| 13-2\<cdot\><around*|(|2|)>|3>
    >>>>
  </eqnarray*>

  <with|font-series|bold|Step 6. >Simplify and get the chose variable.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x>|<cell|=>|<cell|<cfrac|
    13-2\<cdot\><around*|(|2|)>|3> >>|<row|<cell|x>|<cell|=>|<cell|<cfrac|
    13-4|3>>>|<row|<cell|x>|<cell|=>|<cell|<cfrac|
    9|3>>>|<row|<cell|x>|<cell|=>|<cell|3>>>>
  </eqnarray*>

  Therefore we get that <math|<around*|(|x,y|)>=<around*|(|3,2|)>>

  <subsection|Some more substution>

  Let's solve one more system of two equations using subtitution.

  <\equation*>
    x+2y=17
  </equation*>

  <\equation*>
    8x-3y=3
  </equation*>

  <with|font-series|bold|Step 1. >Since the simplest term is <math|x> in the
  first equation, we immediately choose that.

  <with|font-series|bold|Step 2.> The halfway equation is simpler now.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x+2y>|<cell|=>|<cell|17>>|<row|<cell|x+2y-2y>|<cell|=>|<cell|17-2y>>|<row|<cell|x>|<cell|=>|<cell|17-2y>>>>
  </eqnarray*>

  <with|font-series|bold|Step 3.> Let's substitute the halfway equation to
  the <math|x> in the other initial equation.

  <\eqnarray*>
    <tformat|<table|<row|<cell|8x-3y>|<cell|=>|<cell|3>>|<row|<cell|8\<cdot\>
    <around*|(|17-2y|)>-3y>|<cell|=>|<cell|3>>>>
  </eqnarray*>

  <with|font-series|bold|Step 4.> Some simplification to get y.

  <\eqnarray*>
    <tformat|<table|<row|<cell|8\<cdot\> <around*|(|17-2y|)>-3y>|<cell|=>|<cell|3>>|<row|<cell|136-16y-3y>|<cell|=>|<cell|3>>|<row|<cell|136-19y>|<cell|=>|<cell|3>>|<row|<cell|-19y+136>|<cell|=>|<cell|3>>|<row|<cell|-19y+136-136>|<cell|=>|<cell|3-136>>|<row|<cell|-19y>|<cell|=>|<cell|-133>>|<row|<cell|<cfrac|-19y|-19>>|<cell|=>|<cell|<cfrac|-133|-19>>>|<row|<cell|y>|<cell|=>|<cell|7>>>>
  </eqnarray*>

  <with|font-series|bold|Step 5.> Substitute <math|y> in the halfway equation

  <\eqnarray*>
    <tformat|<table|<row|<cell|x>|<cell|=>|<cell|17-2y>>|<row|<cell|x>|<cell|=>|<cell|17-2\<cdot\>
    7>>>>
  </eqnarray*>

  <with|font-series|bold|Step 6.> The last step is finding <math|x>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x>|<cell|=>|<cell|17-2\<cdot\>
    7>>|<row|<cell|x>|<cell|=>|<cell|17-14>>|<row|<cell|x>|<cell|=>|<cell|3>>>>
  </eqnarray*>

  Therefore <math|<around*|(|x,y|)>=<around*|(|3,7|)>>

  So, that was two methods for solving system of two linear equations with
  two variabels.

  <section|Linear Equations with 3 Variables>

  To solve linear equation with three variables, we need at least 3
  equations. So let's say have the following system of equations.

  <\equation*>
    3x+2y+z=10
  </equation*>

  <\equation*>
    2x-3y+2z=2
  </equation*>

  <\equation*>
    4x+5y-3z=5
  </equation*>

  We probably can solve the equation and find <math|x>, <math|y>, and
  <math|z>. But the question is, how can we do that? Well, we can actually
  use substitution method to reduce the systems of equation into 2 equations
  with just 2 variables.\ 

  <subsection|Reducing the variables>

  To reduce the systems we use substitution method. Let's see the steps as we
  reduce the system of the equation above

  <with|font-series|bold|Step 1.> Choose one variable in one equation.

  Here it's advisable to choose variable that is in the simplest term. In our
  case it's clearly <math|z> in the first equation.

  <with|font-series|bold|Step 2.> Solve the chosen variable in the chosen
  equation treating other variables as known numbers. Call the\ 

  let's solve for <math|z> in the first equation

  <\eqnarray*>
    <tformat|<table|<row|<cell|3x+2y+z>|<cell|=>|<cell|10>>|<row|<cell|z+<around*|(|3x+2y|)>>|<cell|=>|<cell|10>>|<row|<cell|z+<around*|(|3x+2y|)>-<around*|(|3x+2y|)>>|<cell|=>|<cell|10-<around*|(|3x+2y|)>>>|<row|<cell|z>|<cell|=>|<cell|10-3x-2y>>>>
  </eqnarray*>

  Let's call the mess, halfway equation.

  <strong|Step 3.> Substitute the chosen variable in the other two initial
  equations by the equation from step 2.

  In our case, we substitute <math|z> in the second and third equation using
  the halfway equation.

  Let's start with the second equation.

  <\eqnarray*>
    <tformat|<table|<row|<cell|2x-3y+2z>|<cell|=>|<cell|2>>|<row|<cell|2x-3y+2<around*|(|10-3x-2y|)>>|<cell|=>|<cell|2>>>>
  </eqnarray*>

  And then the third equation.

  <\eqnarray*>
    <tformat|<table|<row|<cell|4z+5y-3z>|<cell|=>|<cell|5>>|<row|<cell|4x+5y-3<around*|(|10-3x-2y|)>>|<cell|=>|<cell|5>>>>
  </eqnarray*>

  \;

  <with|font-series|bold|Step 4.> Simplify the two substituted equations and
  we have two equations with two variabels.

  Simplifying the second equation.

  <\eqnarray*>
    <tformat|<table|<row|<cell|2x-3y+2<around*|(|10-3x-2y|)>>|<cell|=>|<cell|2>>|<row|<cell|2x-3y+2\<cdot\>
    10-2\<cdot\> 3x-2\<cdot\> 2y>|<cell|=>|<cell|2>>|<row|<cell|2x-3y+20-6x-4y>|<cell|=>|<cell|2>>|<row|<cell|<around*|(|2x-6x|)>+<around*|(|-3y-4y|)>+20>|<cell|=>|<cell|2>>|<row|<cell|<around*|(|2-6|)>x+<around*|(|-3-4|)>y+20>|<cell|=>|<cell|2>>|<row|<cell|-4x-7y+20>|<cell|=>|<cell|2>>|<row|<cell|-4x-7y+20-20>|<cell|=>|<cell|2-20>>|<row|<cell|-4x-7y>|<cell|=>|<cell|-18>>|<row|<cell|4x+7y>|<cell|=>|<cell|18>>>>
  </eqnarray*>

  And then the third equation.

  <\eqnarray*>
    <tformat|<table|<row|<cell|4x+5y-3<around*|(|10-3x-2y|)>>|<cell|=>|<cell|5>>|<row|<cell|4x+5y-3\<cdot\>
    10-3\<cdot\> <around*|(|-3x|)>-3\<cdot\>
    <around*|(|-2y|)>>|<cell|=>|<cell|5>>|<row|<cell|4x+5y-30+9x+6y>|<cell|=>|<cell|5>>|<row|<cell|<around*|(|4x+9x|)>+<around*|(|5y+6y|)>-30>|<cell|=>|<cell|5>>|<row|<cell|<around*|(|4+9|)>x+<around*|(|5+6|)>y-30>|<cell|=>|<cell|5>>|<row|<cell|13x+11y-30>|<cell|=>|<cell|5>>|<row|<cell|13x+11y-30+30>|<cell|=>|<cell|5+30>>|<row|<cell|13x+11y>|<cell|=>|<cell|35>>>>
  </eqnarray*>

  Thus we have two equations with two variables as follows.

  <\equation*>
    4x+7y=18
  </equation*>

  <\equation*>
    13x+11y=35
  </equation*>

  From these two equations we can find two among three variables in the
  system. That is two third of the work. But how about the other one.

  Well, we can substitute the two variables that we find into the halfway
  variable we got in step 2.

  <\equation*>
    z=10-3x-2y
  </equation*>

  <subsection|Finishing the problem>

  Now, let's just do the work. Consider the two equation we got by
  eliminating <math|z>.

  \;

  <\equation*>
    4x+7y=18
  </equation*>

  <\equation*>
    13x+11y=35
  </equation*>

  Here we'll use elimination. Since we're just repeating the procedure there
  won't be much explanation for each step

  Step 1. We choose to eliminate <math|y>.

  Step 2. We multiply the two by the coefficient of <math|y >from the other
  equations.

  The first one is as follows.

  <\eqnarray*>
    <tformat|<table|<row|<cell|11\<cdot\>
    <around*|(|4x+7y|)>>|<cell|=>|<cell|11\<cdot\>
    18>>|<row|<cell|44x+77y>|<cell|=>|<cell|198>>>>
  </eqnarray*>

  The second one is the following

  <\eqnarray*>
    <tformat|<table|<row|<cell|7\<cdot\> <around*|(|13x+11y|)>>|<cell|=>|<cell|7\<cdot\>
    35>>|<row|<cell|91x+77y>|<cell|=>|<cell|245>>>>
  </eqnarray*>

  Step 3. Subtract the first one by the second one.

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|<around*|(|44x+77y|)>-<around*|(|91x+77y|)>>|<cell|=>|<cell|198-245>>>>>
  </equation*>

  Step 4. Simplify the equation and get <math|x>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|44x+77y|)>-<around*|(|91x+77y|)>>|<cell|=>|<cell|198-245>>|<row|<cell|<around*|(|44x-91x|)>+<around*|(|77y-77y|)>>|<cell|=>|<cell|-47>>|<row|<cell|<around*|(|44-91|)>x+0>|<cell|=>|<cell|-47>>|<row|<cell|-47x>|<cell|=>|<cell|-47>>|<row|<cell|<cfrac|-47x|-47>>|<cell|=>|<cell|<cfrac|-47|-47>>>|<row|<cell|x>|<cell|=>|<cell|1>>>>
  </eqnarray*>

  Step 5. Substitute <math|x> in the first equation we get after eliminating
  <math|z>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|4x+7y>|<cell|=>|<cell|18>>|<row|<cell|4\<cdot\>
    <around*|(|1|)>+7y>|<cell|=>|<cell|18>>>>
  </eqnarray*>

  Step 6. Simplify the equation and get <math|y>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|4\<cdot\> <around*|(|1|)>+7y>|<cell|=>|<cell|18>>|<row|<cell|4+7y>|<cell|=>|<cell|18>>|<row|<cell|7y+4>|<cell|=>|<cell|18>>|<row|<cell|7y+4-4>|<cell|=>|<cell|18-4>>|<row|<cell|7y>|<cell|=>|<cell|14>>|<row|<cell|<cfrac|7y|7>>|<cell|=>|<cell|<cfrac|14|7>>>|<row|<cell|y>|<cell|=>|<cell|2>>>>
  </eqnarray*>

  We've solved the reduced system of equations and get <math|x> and <math|y>.
  The last things we can do is to find <math|z> by substitugin the two
  variables we found into the halfway equation we get when we reduce the
  three equations.

  <\eqnarray*>
    <tformat|<table|<row|<cell|z>|<cell|=>|<cell|10-3x-2y>>|<row|<cell|z>|<cell|=>|<cell|10-3\<cdot\>
    <around*|(|1|)>-2\<cdot\> <around*|(|2|)>>>>>
  </eqnarray*>

  And simplify the equation

  <\eqnarray*>
    <tformat|<table|<row|<cell|z>|<cell|=>|<cell|10-3\<cdot\>
    <around*|(|1|)>-2\<cdot\> <around*|(|2|)>>>|<row|<cell|z>|<cell|=>|<cell|10-3-4>>|<row|<cell|z>|<cell|=>|<cell|3>>>>
  </eqnarray*>

  Therefore <math|<around*|(|x,y,z|)>=<around*|(|1,2,3|)>>

  <subsection|Another system of 3 linear equations>

  Let's solve a quite different system of 3 linear equations with 3
  variables.

  <\equation*>
    x+y=5
  </equation*>

  <\equation*>
    x+z=6
  </equation*>

  <\equation*>
    y+z=7
  </equation*>

  We still can use the same procedure though. Let's reduce the equation.

  <strong|Reducing the system of linear equations>

  Step 1. We choose <math|x> in the first equation .

  Step 2. Solve for <math|x> in the first equation to get the halfway
  equation.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x+y>|<cell|=>|<cell|5>>|<row|<cell|x+y-y>|<cell|=>|<cell|5-y>>|<row|<cell|x>|<cell|=>|<cell|5-y>>>>
  </eqnarray*>

  Step 3. Substitute <math|x> in the other two equations using halfway
  equation

  The second equation is straightforward.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x+z>|<cell|=>|<cell|6>>|<row|<cell|<around*|(|5-y|)>+z>|<cell|=>|<cell|6>>>>
  </eqnarray*>

  We don't need to do anything with the third equation there is already no
  <math|x> in there.

  Step 4. Simplify the equations from step 3 to get two equations

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|5-y|)>+z>|<cell|=>|<cell|6>>|<row|<cell|5-y+z>|<cell|=>|<cell|6>>|<row|<cell|-y+z+5>|<cell|=>|<cell|6>>|<row|<cell|-y+z+5-5>|<cell|=>|<cell|6-5>>|<row|<cell|-y+z>|<cell|=>|<cell|1>>>>
  </eqnarray*>

  We get the first reduced equation. The second reduced equation is just the
  third inital equation.

  <\equation*>
    y+z=7
  </equation*>

  <with|font-series|bold|Finishing the problem.>

  First let's find <math|y> and <math|z> by solving the reduced equations
  using substitution method.

  Step 1. We choose <math|z> in the first reduced equation

  Step 2. solve for <math|z> in the chosen equation

  <\eqnarray*>
    <tformat|<table|<row|<cell|-y+z>|<cell|=>|<cell|1>>|<row|<cell|z-y>|<cell|=>|<cell|1>>|<row|<cell|z-y+y>|<cell|=>|<cell|1+y>>|<row|<cell|z>|<cell|=>|<cell|1+y>>>>
  </eqnarray*>

  Step 3. Substitute <math|z> in the other reduced equation using the
  equation above.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y+z>|<cell|=>|<cell|7>>|<row|<cell|y+<around*|(|1+y|)>>|<cell|=>|<cell|7>>>>
  </eqnarray*>

  Step 4. Simplify

  <\eqnarray*>
    <tformat|<table|<row|<cell|y+<around*|(|1+y|)>>|<cell|=>|<cell|7>>|<row|<cell|y+1+y>|<cell|=>|<cell|7>>|<row|<cell|y+y+1>|<cell|=>|<cell|7>>|<row|<cell|<around*|(|1+1|)>y+1>|<cell|=>|<cell|7>>|<row|<cell|2y+1-1>|<cell|=>|<cell|7-1>>|<row|<cell|2y>|<cell|=>|<cell|6>>|<row|<cell|<cfrac|2y|2>>|<cell|=>|<cell|<cfrac|6|2>>>|<row|<cell|y>|<cell|=>|<cell|3>>>>
  </eqnarray*>

  Step 5. Substitute <math|y> in the equation we get from step 2.

  <\eqnarray*>
    <tformat|<table|<row|<cell|z>|<cell|=>|<cell|1+y>>|<row|<cell|z>|<cell|=>|<cell|1+3>>|<row|<cell|z>|<cell|=>|<cell|4>>>>
  </eqnarray*>

  Now we get <math|y>, and <math|z>, we can find <math|x> using halfway
  equation we get from step 2 when reducing the system of equations.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x>|<cell|=>|<cell|5-y>>|<row|<cell|z>|<cell|=>|<cell|5-3>>|<row|<cell|z>|<cell|=>|<cell|2>>>>
  </eqnarray*>

  Therefore <math|<around*|(|x,y,z|)>=<around*|(|2,3,4|)>>.

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-2|<tuple|1.1|1|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-3|<tuple|1.2|3|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-4|<tuple|1.3|3|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-5|<tuple|1.4|5|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-6|<tuple|2|6|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-7|<tuple|2.1|6|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-8|<tuple|2.2|7|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
    <associate|auto-9|<tuple|2.3|9|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_7.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Linear
      Equations with 2 variables> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Elimination method
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Some more elimination
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Substitution method
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Some more substution
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Linear
      Equations with 3 Variables> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Reducing the variables
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Finishing the problem
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Another system of 3 linear
      equations <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>