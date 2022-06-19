<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Types of Numbers>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <section|Natural Numbers, Induction, Recursion>

  Natural numbers are <math|\<bbb-N\>=<around*|{|1,2,3,\<ldots\>|}>>. It
  doesn't have all properties of numbers but contains the principle of
  mathematical induction, that is <math|P<around*|(|x|)>> is true for all
  natural number only if.

  <\enumerate-numeric>
    <item><math|P<around*|(|1|)>> is true

    <item><math|P<around*|(|k|)>> is true then <math|P<around*|(|k+1|)>> is
    true
  </enumerate-numeric>

  We can use the principle to prove the formula
  <math|1+2+\<cdots\>+n=<dfrac|n*<around*|(|n+1|)>|2>>. First we check if
  it's true for <math|n=1>, which it obviously is. Then we assume it's true
  for <math|n=k>, and we prove that it implies that the formula is also true
  for <math|n=k+1> as follows.

  <\eqnarray*>
    <tformat|<table|<row|<cell|1+2+\<cdots\>++k+<around*|(|k+1|)>>|<cell|=>|<cell|<dfrac|k*<around*|(|k+1|)>|2>+<around*|(|k+1|)>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|<around*|(|k+1|)>*<around*|(|k+2|)>|2>>>>>
  </eqnarray*>

  Therefore it works for all natural numbers.

  Next we formalize the notion of mathematical induction. For a set <math|A>
  such that

  <\enumerate>
    <item>1\<in\> A

    <item><math|k\<in\> A\<Rightarrow\>k+1\<in\> A>
  </enumerate>

  then <math|A> contains all natural numbers.

  Therefore we can rewrite the properties in the previous example as <math|A>
  a set conatins <math|n> which obey the sum formula.

  The principle of mathematical induction is equivalent to the well-ordering
  principle that is every nonempty set of natural number has a least member.
  We can prove it using induction as follows. Say <math|A> is a subset of
  <math|\<bbb-N\>> with no least member. Then <math|1<neg|\<in\>>A> since it
  would be the least member. Let collect all natural numbers not in <math|A>
  in <math|B>. Therefore we know that <math|1\<in\> B>. Say for some natural
  number <math|k>, <math|1,\<ldots\>,k\<in\> B>, we can always have it, since
  <math|k> can be 1. In that case we can show that <math|k+1>is also in
  <math|B> since if it's not then it's in <math|A> and it will be its least
  member, since the lesser numbers are in <math|B>. Therefore by induction
  <math|B> contains all natural numbers and <math|A=\<varnothing\>>.

  We have another form of induction called the principle of complete
  induction. For set <math|A> such that

  <\enumerate>
    <item><math|1\<in\> A>

    <item><math|1,\<ldots\>,k\<in\> A\<Rightarrow\>k+1\<in\> A>
  </enumerate>

  then <math|A> contains all natural numbers. It is equivalent with the
  previous principle of mathematical induction.

  The <math|n> factorial, <math|n!=n\<cdot\><around*|(|n-1|)>\<cdot\>\<ldots\>\<cdot\>1>
  can be written recursively as follows.

  <\enumerate>
    <item><math|1!=1>

    <item><math|n!=n\<cdot\><around*|(|n-1|)>!>
  </enumerate>

  Recursive definition provide base case (usually for number 1) and relation
  between <math|n> and <math|n-1>. Recursion has the same form with
  induction.

  <section|Sigma Notation>

  Addition can be succinctly written in sigma notation.

  <\equation*>
    a<rsub|1>+a<rsub|2>+\<cdots\>+a<rsub|n>=<big|sum><rsup|n><rsub|i=1>a<rsub|i>
  </equation*>

  Thus we have <math|<big|sum><rsub|i-1><rsup|n>i=<dfrac|n\<cdot\><around*|(|n+1|)>|2>>.
  The number <math|i> is dummy variable, we can change it to other unused one
  wihtout changing the meaning of expression.

  We can define sigma notation recursively.

  <\enumerate>
    <item><math|<big|sum><rsub|i=1><rsup|1>a<rsub|i>=a<rsub|1>>

    <item><math|><math|<big|sum><rsub|i=1><rsup|n+1>a<rsub|i>=<big|sum><rsub|i=1><rsup|n>a<rsub|i>+a<rsub|n>>
  </enumerate>

  We can also add additional information to sigma notation.

  <\equation*>
    <big|sum><rsup|n><rsub|i=1,i\<neq\>4>a<rsub|i>=<big|sum><rsup|3><rsub|i=1>a<rsub|i>+<big|sum><rsup|n><rsub|i=5>a<rsub|i>
  </equation*>

  <section|Integers, Rational Numbers, Real Numbers>

  We can add zero and negative to natural number to form integer
  <math|\<bbb-Z\>>.

  <\equation*>
    \<bbb-Z\>=<around*|{|\<ldots\>,-2,-1,0,1,2,\<ldots\>|}>
  </equation*>

  Integers satisfy all the properties of number from P1 to P12 except P7. To
  have P7 we again introduce additional numbers and form rational numbers
  <math|\<bbb-Q\>.>

  <\equation*>
    \<bbb-Q\>=<around*|{|<dfrac|m|n>\|m\<in\> \<bbb-Z\>,,n\<in\>
    \<bbb-Z\>-<around*|{|0|}>|}>
  </equation*>

  See that rational numbers also includes integers. This set of numbers
  satisfies the 12 property of number.

  There is even beigger set of numbers called real numbers <math|\<bbb-R\>>
  that includes rational numbers and also irrational numbers such as
  <math|\<mathpi\>> and <math|<sqrt|2>.> Here we can prove that
  <math|<sqrt|2>> is not a rational numbers.

  The proof is by contradiction, say <math|<sqrt|2>> is rational. Hence there
  is <math|p,q\<in\> \<bbb-Z\>> such that <math|<sqrt|2>=<frac*|p|q>>. And we
  can always make <math|<frac*|p|q>> in irreducible form, that is <math|gcd
  <around*|(|p,q|)>=1>. But notice that if we square both sides and multiply
  by <math|q<rsup|2>> we have <math|2q<rsup|2>=p<rsup|2>>.\ 

  From the equation we know that <math|p<rsup|2>> is even, then <math|p> must
  be even since if it's odd then <math|p<rsup|2>> is also odd. But if
  <math|p> is even, then <math|p<rsup|2>> is a multiple of 4 and we can write
  <math|p<rsup|2>=4r<rsup|2>>. Substituting this in
  <math|2q<rsup|2>=p<rsup|2>> we have <math|2q<rsup|2>=4r<rsup|2>\<Rightarrow\>q<rsup|2>=2r<rsup|2>>.

  From the equation we know that <math|q<rsup|2>> is also even hence <math|q>
  is also even as <math|p>, therefore <math|gcd <around*|(|p,q|)>\<neq\>1>. A
  contradiction.

  By the way, using P1-P12 alone we cannot prove the existence of
  <math|<sqrt|2> >, since they are satisfied by <math|\<bbb-Q\>> and
  <math|<sqrt|2><neg|\<in\> >\<bbb-Q\>>. To include <math|<sqrt|2> >which is
  the solution of <math|x<rsup|2>=2>, and also the solution of
  <math|x<rsup|5>+x+1=0>, and even many more numbers we need calculus.

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
    <associate|auto-4|<tuple|1|?>>
  </collection>
</references>