<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs|maxima|python>>

<\body>
  <doc-data|<doc-title|Intro to ML, Gradient
  Descent>|<doc-author|<author-data|<author-name|Surya Saputra>>>>

  <section|Machine Learning>

  Machine learning is if computer has ability to learn without being
  explicitly programmed. Or a program is said to learn from experience E on a
  particular task T and some performance measurement P, if its performance on
  T as measured by P is improved as experience E increases.

  So in the process of machine learning a program is first given a set of
  training data, and using learning algorithm, it produce a model, a
  hypothesis that can be used to determine some parameter for a new data, or
  test data.

  Two kinds of machine learnings are supervised learning and unsupervised
  learning. supervised learning is when we give program some training data
  together with their result. Then if it is given test data it will produce
  result based on the relationship between the training data and the result.
  An example would be giving list of email together with flag differentiating
  spam and non spam, a program then given the test email, the program is
  expected to determine wether it is spam or nonspam.

  Unsupervised learning is when a program is given training data without
  their result. Then given a test data it somehow expected to determine some
  parameter. For example, a program is given the purchasing data of a certain
  products and told to categorize the data in some way. Then given a new
  purchasing data it is expected to put the new purchase into one of the
  category it made. Note that here the categories are made by the program.

  \ Supervised learning can be regression or classification. We've only seen
  example of classification so far in which the result is discrete such as
  spam or nonspam. In regression the result is continuous, for example from
  home specification and purchasing data, given an additional home
  specification, a program is expected to come up with its market price.

  <section|Univariate Linear Regression>

  Say we have a training data in the form of house size and its purchase
  price. Given the test data in a form of house size, the program then
  expcted to calculate its price. So here we can say that the program must
  comes up with an equation relating house size and house price.

  For the house size <math|x> and its price <math|y> we can chose linear
  equation <math|h<around*|(|x|)>=\<theta\><rsub|0>+\<theta\><rsub|1>x> as a
  simple hypothesis for <math|y>, where <math|h<around*|(|x|)>\<approx\> y>.
  So given <math|m> test data each with the form of
  <math|<around*|(|x<rsup|<around*|(|i|)>>,y<rsup|<around*|(|i|)>>|)>> pair
  for <math|i> from <math|1> to <math|m>, our program is expected to
  calculate parameter <math|\<theta\><rsub|0>> and <math|\<theta\><rsub|1>>
  so that given a new <math|x> it can calculate the corresponding <math|y>.

  To do that we can define cost function. It calculates how the hypothesis
  deviates from the result in the training data. And using principle of
  linear regression with one variable, we get the cost function as <math|J>.

  <\equation*>
    J<around*|(|\<theta\><rsub|1>,\<theta\><rsub|2>|)>=<frac|1|2m><big|sum><rsup|m><rsub|i=1><around*|(|h<around*|(|x<rsup|<around*|(|i|)>>|)>-y|)><rsup|2>
  </equation*>

  Then given the training data the program can minimize this const function
  <math|J> and from them get the parameter <math|\<theta\><rsub|0>> and
  <math|\<theta\><rsub|1>>. <math|>And to do that we can use either gradient
  descent.

  <section|Gradient Descent>

  With gradient descent first we guess the parameter, say
  <math|<around*|(|\<theta\><rsub|0>,\<theta\><rsub|1>|)>=<around*|(|1,1|)>>.
  Then we improve the solution by descending along the graph of <math|J>,
  until convergence, that is the parameter doesn't really change much for
  each step. The way we descent is the following.

  <\equation*>
    \<theta\><rsub|j>:=\<theta\><rsub|j>-\<alpha\><frac|\<partial\>|\<partial\>\<theta\><rsub|j>>J
  </equation*>

  In the equation <math|\<alpha\>> is learning reate that we must choose. We
  must choose the appropriate learning rate, if we choose to low a value\R
  the descent rate won't be much, but if we choose to high a value, the
  process won't even converge.

  Applying the gradient descent to the cost function we have

  <\equation*>
    \<theta\><rsub|0>:=\<theta\><rsub|0>-\<alpha\><frac|1|m><big|sum><rsub|i=1><rsup|m><around*|(|h<rsub|\<theta\>><around*|(|x<rsup|<around*|(|i|)>>|)>-y<rsup|<around*|(|i|)>>|)>
  </equation*>

  \ 

  <\equation*>
    \<theta\><rsub|1>:=\<theta\><rsub|1>-\<alpha\><frac|1|m><big|sum><rsub|i=1><rsup|m><around*|(|h<rsub|\<theta\>><around*|(|x<rsup|<around*|(|i|)>>|)>-y<rsup|<around*|(|i|)>>|)>*x<rsup|<around*|(|i|)>>
  </equation*>

  <section|Multivariate Linear Regression>

  axx

  <\equation*>
    h<around*|(|x|)>=\<theta\><rsub|0>+\<theta\><rsub|1>x<rsub|1>+\<theta\><rsub|2>x<rsub|2>+\<cdots\>
  </equation*>

  <section|Feature Scaling>

  Normalization

  <section|Normal Equation>

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
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
    <associate|auto-4|<tuple|4|?>>
    <associate|auto-5|<tuple|5|?>>
    <associate|auto-6|<tuple|6|?>>
  </collection>
</references>