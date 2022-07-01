<TeXmacs|2.1.1>

<style|<tuple|article|maxima|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Calspivak Chapter 2>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <\enumerate-numeric>
    <item>Prove using induction

    <\enumerate-alpha>
      <item><math|1<rsup|2>+\<cdots\>+n<rsup|2>=<dfrac|n*<around*|(|n+1|)>*<around*|(|2*n+1|)>|6>>

      Proof by induction, <math|n=1>:<math|1<rsup|2>=<dfrac|1\<cdot\><around*|(|1+1|)>\<cdot\><around*|(|2\<cdot\>1+1|)>|6>>

      Say the formula is true for <math|k>, then for <math|k+1>

      <\eqnarray*>
        <tformat|<table|<row|<cell|1<rsup|2>+\<cdots\>+k<rsup|2>+<around*|(|k+1|)><rsup|2>>|<cell|=>|<cell|<dfrac|k*<around*|(|k+1|)>*<around*|(|2*k+1|)>|6>+<around*|(|k+1|)><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|<around*|(|k+1|)>*<around*|(|2k<rsup|2>+k+6*<around*|(|k+1|)>|)>|6>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|<around*|(|k+1|)>*<around*|(|2k<rsup|2>+7k+6|)>|6>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|<around*|(|k+1|)>*<around*|(|k+2|)>*<around*|(|2*<around*|(|k+1|)>+1|)>|6>>>>>
      </eqnarray*>

      <item><math|1<rsup|3>+\<cdots\>+n<rsup|3>=<around*|(|1+\<cdots\>+n|)><rsup|2>>

      Proof by induction, <math|n=1>:<math|1<rsup|3>=1<rsup|2>>

      Say the formula is true for <math|k>, then for <math|k+1>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|1+\<cdots\>+k+<around*|(|k+1|)>|)><rsup|2>>|<cell|=>|<cell|<around*|(|1+\<cdots\>+k|)><rsup|2>+<around*|(|k+1|)><rsup|2>+2*<around*|(|k+1|)>*<around*|(|1+\<cdots\>+k|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+\<cdots\>+k|)><rsup|2>+<around*|(|k+1|)><rsup|2>+2*<around*|(|k+1|)>*<dfrac|k*<around*|(|k+1|)>|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+\<cdots\>+k|)><rsup|2>+<around*|(|k+1|)><rsup|2>+2*<around*|(|k+1|)>*<dfrac|k*<around*|(|k+1|)>|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+\<cdots\>+k|)><rsup|2>+<around*|(|k+1|)><rsup|3>*>>|<row|<cell|>|<cell|=>|<cell|1<rsup|3>+\<cdots\>+k<rsup|3>+<around*|(|k+1|)><rsup|3>>>>>
      </eqnarray*>
    </enumerate-alpha>

    <item>Find formula

    <\enumerate-alpha>
      <item><math|<big|sum><rsub|i=1><rsup|n><around*|(|2i-1|)>=1+3+5+\<cdots\>+<around*|(|2n-1|)>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|1+2+\<cdots\>+2n>|<cell|=>|<cell|<around*|(|1+3+\<cdots\>+<around*|(|2n-1|)>|)>+<around*|(|2+4+\<cdots\>+2n|)>>>|<row|<cell|<cfrac|2*n*<around*|(|2*n+1|)>|2>>|<cell|=>|<cell|x+<around*|(|x+n|)>>>|<row|<cell|n*<around*|(|2*n+1|)>>|<cell|=>|<cell|2x+n>>|<row|<cell|n<rsup|2>>|<cell|=>|<cell|x>>|<row|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|2i-1|)>>|<cell|=>|<cell|n<rsup|2>>>>>
      </eqnarray*>

      <item><math|<big|sum><rsub|i=1><rsup|n><around*|(|2i-1|)><rsup|2>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|1<rsup|2>+2<rsup|2>+\<cdots\>+<around*|(|2n|)><rsup|2>>|<cell|=>|<cell|<around*|(|1<rsup|2>+3<rsup|2>+\<cdots\>+<around*|(|2n-1|)><rsup|2>|)>+<around*|(|2<rsup|2>+4<rsup|2>+\<cdots\>+<around*|(|2n|)><rsup|2>|)>>>|<row|<cell|<dfrac|2*n*<around*|(|2*n+1|)>*<around*|(|4*n+1|)>|6>>|<cell|=>|<cell|x+<around*|(|x+n+2<big|sum><rsub|i=1><rsup|n><around*|(|2i-1|)>|)>>>|<row|<cell|<dfrac|n*<around*|(|2*n+1|)>*<around*|(|4*n+1|)>|3>>|<cell|=>|<cell|2x+n+2n<rsup|2>>>|<row|<cell|n*<around*|(|2*n+1|)>*<around*|(|4*n+1|)>>|<cell|=>|<cell|6x+3n<around*|(|1+2*n|)>>>|<row|<cell|<around*|(|2*n+1|)>*<around*|(|4n<rsup|2>+n-3n|)>>|<cell|=>|<cell|6x>>|<row|<cell|<dfrac|n*<around*|(|2n+1|)>*<around*|(|2n-1|)>|3>>|<cell|=>|<cell|x>>>>
      </eqnarray*>
    </enumerate-alpha>

    <item>Prove that

    <\enumerate-alpha>
      <item><math|<around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|n+1>>|<row|<cell|k>>>>>|)>=<around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|n>>|<row|<cell|k-1>>>>>|)>+<around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|n>>|<row|<cell|k-1>>>>>|)>+<around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>>|<cell|=>|<cell|<dfrac|n!|<around*|(|k-1|)>!*<around*|(|n-k+1|)>!>+<dfrac|n!|k!*<around*|(|n-k|)>!>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|n!*k+n!**<around*|(|n-k+1|)>|k!*<around*|(|n-k+1|)>!>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|<around*|(|n+1|)>*n!|k!*<around*|(|<around*|(|n+1|)>-k|)>!>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|n+1>>|<row|<cell|k>>>>>|)>>>>>
      </eqnarray*>

      <item><math|<around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>>
      is always a natural number using induction.

      We know that <math|<around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|0>>|<row|<cell|0>>>>>|)>=<around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|n>>|<row|<cell|0>>>>>|)>=<around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|n>>|<row|<cell|n>>>>>|)>=1>
      a whole number, say the form is whole number for integer <math|n>,
      since combination of <math|n+1> can be written as addition of
      combination of <math|n> it also whole numbers. Therefore combination is
      always whole number.

      <item><math|<around*|(|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>>
      is always a natural number using combination definition

      The expression stands for how many was we can choose <math|k> object
      without ordering from the group of <math|n> object. Thus, it must be a
      whole number

      <item>binomial theorem:

      <\equation*>
        <around*|(|a+b|)><rsup|n>=<big|sum><rsub|i=0><rsup|n><around*|(|<tabular*|<tformat|<table|<row|<cell|n>>|<row|<cell|i>>>>>|)>a<rsup|n-i>*b<rsup|i>
      </equation*>

      For <math|n=1> we have <math|<around*|(|a+b|)><rsup|1>=<around*|(|<tabular|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>>>>|)>*a+<around*|(|<tabular|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>>>>|)>*b>

      Assume it's true for <math|k>, then for k

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|a+b|)><rsup|k+1>>|<cell|=>|<cell|<around*|(|a+b|)><rsup|k>*<around*|(|a+b|)>>>|<row|<cell|>|<cell|=>|<cell|*<big|sum><rsub|i=0><rsup|k><around*|(|<tabular*|<tformat|<table|<row|<cell|k>>|<row|<cell|i>>>>>|)>a<rsup|k+1-i>*b<rsup|i>+<big|sum><rsub|i=0><rsup|k><around*|(|<tabular*|<tformat|<table|<row|<cell|k>>|<row|<cell|i>>>>>|)>a<rsup|k-i>*b<rsup|i+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|k><around*|(|<tabular*|<tformat|<table|<row|<cell|k>>|<row|<cell|i>>>>>|)>a<rsup|k+1-i>*b<rsup|i>+<big|sum><rsub|i=1><rsup|k+1><around*|(|<tabular*|<tformat|<table|<row|<cell|k>>|<row|<cell|i-1>>>>>|)>a<rsup|k-i+1>*b<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|k+1><around*|(|<tabular*|<tformat|<table|<row|<cell|k+1>>|<row|<cell|i>>>>>|)>a<rsup|k+1-i>*b<rsup|i>>>>>
      </eqnarray*>

      <item>Prove

      <\enumerate-roman>
        <item><math|<big|sum><rsub|j=0><rsup|n><around*|(|<tabular|<tformat|<table|<row|<cell|n>>|<row|<cell|j>>>>>|)>=2>

        <item><math|<big|sum><rsub|j=0><rsup|n><around*|(|-1|)><rsup|j>*<around*|(|<tabular|<tformat|<table|<row|<cell|n>>|<row|<cell|j>>>>>|)>=0>

        <item><math|<big|sum><rsub|j odd><rsup|n><around*|(|<tabular|<tformat|<table|<row|<cell|n>>|<row|<cell|j>>>>>|)>=2<rsup|n-1>>

        <item><math|<big|sum><rsub|j even><rsup|n><around*|(|<tabular|<tformat|<table|<row|<cell|n>>|<row|<cell|j>>>>>|)>=2<rsup|n-1>>
      </enumerate-roman>
    </enumerate-alpha>

    <item>

    <\enumerate-alpha>
      \;
    </enumerate-alpha>
  </enumerate-numeric>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
  </collection>
</references>