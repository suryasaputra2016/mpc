<TeXmacs|2.1.1>

<style|<tuple|article|maxima|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Calspivak Chapter 1>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <\enumerate-numeric>
    <item>Prove the following

    <\enumerate-alpha>
      <item>if <math|a*x=a> and <math|a\<neq\>0> then <math|x=1>

      <\eqnarray*>
        <tformat|<table|<row|<cell|a*x>|<cell|=>|<cell|a>>|<row|<cell|a<rsup|-1>*<around*|(|a*x|)>>|<cell|=>|<cell|a<rsup|-1>*a>>|<row|<cell|<around*|(|a<rsup|-1>*a|)>*x>|<cell|=>|<cell|1>>|<row|<cell|1*x>|<cell|=>|<cell|1>>|<row|<cell|x>|<cell|=>|<cell|1>>>>
      </eqnarray*>

      <item><math|x<rsup|2>-y<rsup|2>=<around*|(|x-y|)>*<around*|(|x+y|)>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x-y|)>*<around*|(|x+y|)>>|<cell|=>|<cell|<around*|(|x+<around*|(|-y|)>|)>*<around*|(|x+y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x+<around*|(|-y|)>|)>*x+<around*|(|x+<around*|(|-y|)>|)>*y>>|<row|<cell|>|<cell|=>|<cell|x*x+<around*|(|-y|)>*x+x*y+<around*|(|-y|)>*y>>|<row|<cell|>|<cell|=>|<cell|x<rsup|2>+<around*|(|-y*x|)>+x*y+<around*|(|-<around*|(|y*y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|x<rsup|2>+0-y*y>>|<row|<cell|>|<cell|=>|<cell|x<rsup|2>-y<rsup|2>>>>>
      </eqnarray*>

      <item>If <math|x<rsup|2>=y<rsup|2> then ><math|x=y> or <math|x=-y>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rsup|2>>|<cell|=>|<cell|y<rsup|2>>>|<row|<cell|x<rsup|2>-y<rsup|2>>|<cell|=>|<cell|y<rsup|2>-y<rsup|2>>>|<row|<cell|<around*|(|x-y|)>*<around*|(|x+y|)>>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      Therefore <math|x-y=0> which means <math|x=y>, or <math|x+y=0> which
      means <math|x=-y>.

      <item><math|x<rsup|3>-y<rsup|3>=<around*|(|x-y|)>*<around*|(|x<rsup|2>+x*y+y<rsup|2>|)>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x-y|)>*<around*|(|x<rsup|2>+x*y+y<rsup|2>|)>>|<cell|=>|<cell|x<around*|(|x<rsup|2>+x*y+y<rsup|2>|)>-y<around*|(|x<rsup|2>+x*y+y<rsup|2>|)>>>|<row|<cell|>|<cell|=>|<cell|x<rsup|3>+x<rsup|2>*y+x*y<rsup|2>-y*x<rsup|2>-y*x*y-y<rsup|3>>>|<row|<cell|>|<cell|=>|<cell|x<rsup|3>-y<rsup|3>>>>>
      </eqnarray*>

      <item><math|x<rsup|n>-y<rsup|n>=<around*|(|x-y|)>*<around*|(|x<rsup|n-1>+x<rsup|n-2>*y+\<cdots\>+x*y<rsup|n-2>+y<rsup|n-1>|)>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x-y|)>*<around*|(|x<rsup|n-1>+x<rsup|n-2>*y+\<cdots\>+x*y<rsup|n-2>+y<rsup|n-1>|)>>|<cell|=>|<cell|>>|<row|<cell|x*<around*|(|x<rsup|n-1>+x<rsup|n-2>*y+\<cdots\>+x*y<rsup|n-2>+y<rsup|n-1>|)>>|<cell|>|<cell|>>|<row|<cell|-y*<around*|(|x<rsup|n-1>+x<rsup|n-2>*y+\<cdots\>+x*y<rsup|n-2>+y<rsup|n-1>|)>>|<cell|=>|<cell|>>|<row|<cell|x<rsup|n>+x<rsup|n-1>*y+\<cdots\>+x<rsup|2>*y<rsup|n-2>+x*y<rsup|n-1>>|<cell|>|<cell|>>|<row|<cell|-<around*|(|x<rsup|n-1>*y+x<rsup|n-2>*y<rsup|2>+\<cdots\>+x*y<rsup|n-1>+y<rsup|n>|)>>|<cell|=>|<cell|>>|<row|<cell|x<rsup|n>-y<rsup|n>>|<cell|>|<cell|>>>>
      </eqnarray*>

      <item><math|x<rsup|3>+y<rsup|3>=<around*|(|x+y|)>*<around*|(|x<rsup|2>-x*y+y<rsup|2>|)>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rsup|3>+y<rsup|3>>|<cell|=>|<cell|x<rsup|3>-<around*|(|-y|)><rsup|3>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x-<around*|(|-y|)>|)>*<around*|(|x<rsup|2>+x*<around*|(|-y|)>+<around*|(|-y|)><rsup|2>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x+y|)>*<around*|(|x<rsup|2>-x*y+y<rsup|2>|)>>>>>
      </eqnarray*>
    </enumerate-alpha>

    <item>In the proof <math|<around*|(|x-y|)>> is equal to zero, so it
    doesn't have inverse and the step in the proof is illegal.

    <item>Prove the following

    <\enumerate-alpha>
      <item><math|<cfrac|a|b>=<cfrac|a*c|b*c>> for <math|b,c\<neq\>0>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<cfrac|a*c|b*c>>|<cell|=>|<cell|<around*|(|a*c|)>*<around*|(|b*c|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|a*c*b<rsup|-1>*c<rsup|-1><space|1em>#<around*|(|part
        c|)>>>|<row|<cell|>|<cell|=>|<cell|a*b<rsup|-1>*c*c<rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|a*b<rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|<cfrac|a|b>>>>>
      </eqnarray*>

      <item><cfrac|a|b>+<cfrac|c|d>=<cfrac|a*d+b*c|b*d> for
      <math|b,d\<neq\>0>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<cfrac|a*d+b*c|b*d>>|<cell|=>|<cell|<around*|(|a*d+b*c|)>*<around*|(|b*d|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a*d|)>*<around*|(|b*d|)><rsup|-1>+<around*|(|b*c|)>*<around*|(|b*d|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|<cfrac|a*d|b*d>+<cfrac|b*c|b*d>>>|<row|<cell|>|<cell|=>|<cell|<cfrac|a|b>+<cfrac|c|d>>>>>
      </eqnarray*>

      <item><math|<around*|(|a*b|)><rsup|-1>=a<rsup|-1>*b<rsup|-1>> for
      <math|a,b\<neq\>0>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|a<rsup|-1>*b<rsup|-1>|)>*<around*|(|a*b|)>>|<cell|=>|<cell|a<rsup|-1>b<rsup|<rsup|-1>>*a*b>>|<row|<cell|<around*|(|a<rsup|-1>*b<rsup|-1>|)>*<around*|(|a*b|)>>|<cell|=>|<cell|a<rsup|-1>*a*b<rsup|-1>*b>>|<row|<cell|<around*|(|a<rsup|-1>*b<rsup|-1>|)>*<around*|(|a*b|)>>|<cell|=>|<cell|1>>|<row|<cell|<around*|(|a<rsup|-1>*b<rsup|-1>|)>*<around*|(|a*b|)><around*|(|a*b|)><rsup|-1>>|<cell|=>|<cell|1*<around*|(|a*b|)><rsup|-1>>>|<row|<cell|a<rsup|-1>*b<rsup|-1>>|<cell|=>|<cell|<around*|(|a*b|)><rsup|-1>>>>>
      </eqnarray*>

      <item><math|<dfrac|a|b>*<dfrac|c|d>=<cfrac|a*c|b*d>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<dfrac|a|b>*<dfrac|c|d>>|<cell|=>|<cell|<around*|(|a
        b<rsup|-1>|)> <around*|(|c*d<rsup|-1>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a*c|)><around*|(|b<rsup|-1>*d<rsup|-1>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a*c|)>*<around*|(|b*d|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|<cfrac|a*c|b*d>>>>>
      </eqnarray*>

      <item><math|<cfrac|a|b>/<cfrac|c|d>=<cfrac|a*d|b*c>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<cfrac|a|b>/<cfrac|c|d>>|<cell|=>|<cell|<cfrac|a|b>*<around*|(|<cfrac|c|d>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a*b<rsup|-1>|)>*<around*|(|c*d<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a*b<rsup|-1>|)>*<around*|(|c<rsup|-1>*<around*|(|d<rsup|-1>|)><rsup|-1>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a*b<rsup|-1>|)>*<around*|(|c<rsup|-1>*d|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a*d|)>*<around*|(|b*c|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|<cfrac|a*d|b*c>>>>>
      </eqnarray*>

      <item><math|<cfrac|a|b>=<cfrac|c|d>\<Leftrightarrow\>a*d=b*c>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<cfrac|a|b>>|<cell|=>|<cell|<cfrac|c|d>>>|<row|<cell|<around*|(|a*b<rsup|-1>|)>*<around*|(|b*d|)>>|<cell|=>|<cell|<around*|(|c*d<rsup|-1>|)>*<around*|(|b*d|)>>>|<row|<cell|<around*|(|a*d|)>*<around*|(|b<rsup|-1>*b|)>>|<cell|=>|<cell|<around*|(|c*b|)>*<around*|(|d<rsup|-1>*d|)>>>|<row|<cell|<around*|(|a*d|)>*1>|<cell|=>|<cell|<around*|(|c*b|)>*1>>|<row|<cell|a*d>|<cell|=>|<cell|b*c>>>>
      </eqnarray*>
    </enumerate-alpha>

    <item>Number 4

    <\enumerate-alpha>
      <item><math|4-x\<less\>3-2x>

      <\eqnarray*>
        <tformat|<table|<row|<cell|4-x>|<cell|\<less\>>|<cell|3-2x>>|<row|<cell|4-x+2x>|<cell|\<less\>>|<cell|3-2x+2x>>|<row|<cell|4+x>|<cell|\<less\>>|<cell|3>>|<row|<cell|4+x-4>|<cell|\<less\>>|<cell|3-4>>|<row|<cell|x>|<cell|\<less\>>|<cell|-1>>>>
      </eqnarray*>

      <item><math|5-x<rsup|2>\<less\>8>

      <\eqnarray*>
        <tformat|<table|<row|<cell|5-x<rsup|2>>|<cell|\<less\>>|<cell|8>>|<row|<cell|5-x<rsup|2>-5>|<cell|\<less\>>|<cell|8-5>>|<row|<cell|-x<rsup|2>>|<cell|\<less\>>|<cell|3>>|<row|<cell|x<rsup|2>>|<cell|\<gtr\>>|<cell|-3>>>>
      </eqnarray*>

      <\equation*>
        x\<in\> \<bbb-R\>
      </equation*>

      <item><math|5-x<rsup|2>\<less\>-2>

      <\eqnarray*>
        <tformat|<table|<row|<cell|5-x<rsup|2>>|<cell|\<less\>>|<cell|-2>>|<row|<cell|5-x<rsup|2>-5>|<cell|\<less\>>|<cell|-2-5>>|<row|<cell|-x<rsup|2>>|<cell|\<less\>>|<cell|-7>>|<row|<cell|x<rsup|2>>|<cell|\<gtr\>>|<cell|7>>>>
      </eqnarray*>

      <\equation*>
        <around*|(|x\<gtr\><sqrt|7>|)>\<vee\><around*|(|x\<less\>-<sqrt|7>|)>
      </equation*>

      <item><math|<around*|(|x-1|)>*<around*|(|x-3|)>\<gtr\>0>

      The equality is satisfied if either both factors positive or both
      negative

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|[|<around*|(|x-1\<gtr\>0|)>\<wedge\><around*|(|x-3\<gtr\>0|)>|]>>|<cell|\<vee\>>|<cell|<around*|[|<around*|(|x-1\<less\>0|)>\<wedge\><around*|(|x-3\<less\>0|)>|]>>>|<row|<cell|<around*|[|<around*|(|x\<gtr\>1|)>\<wedge\><around*|(|x\<gtr\>3|)>|]>>|<cell|\<vee\>>|<cell|<around*|[|<around*|(|x\<less\>1|)>\<wedge\><around*|(|x\<less\>3|)>|]>>>|<row|<cell|x\<gtr\>3>|<cell|\<vee\>>|<cell|x\<less\>1>>>>
      </eqnarray*>

      <item><math|x<rsup|2>-2x+2\<gtr\>0>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rsup|2>-2x+2>|<cell|\<gtr\>>|<cell|0>>|<row|<cell|x<rsup|2>-2x+1+1>|<cell|\<gtr\>>|<cell|0>>|<row|<cell|<around*|(|x-1|)><rsup|2>+1>|<cell|\<gtr\>>|<cell|0>>>>
      </eqnarray*>

      The equation above is always true for real <math|x> so <math|x\<in\>
      \<bbb-R\>>

      <item><math|x<rsup|2>+x+1\<gtr\>2>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rsup|2>+x+1>|<cell|\<gtr\>>|<cell|2>>|<row|<cell|x<rsup|2>+x+0.25+0.75>|<cell|\<gtr\>>|<cell|2>>|<row|<cell|<around*|(|x+0.5|)><rsup|2>+0.75>|<cell|\<gtr\>>|<cell|2>>|<row|<cell|<around*|(|x+0.5|)><rsup|2>>|<cell|\<gtr\>>|<cell|1.25>>>>
      </eqnarray*>

      <\equation*>
        <around*|(|x+0.5\<less\>-<sqrt|1.25>|)>\<vee\><around*|(|x+0.5\<gtr\><sqrt|1.25>|)>
      </equation*>

      <\equation*>
        <around*|(|x\<less\>-<sqrt|1.25>-0.5|)>\<vee\><around*|(|x\<gtr\><sqrt|1.25>-0.5|)>
      </equation*>

      <item><math|x<rsup|2>-x+10\<gtr\>16>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rsup|2>-x+10>|<cell|\<less\>>|<cell|16>>|<row|<cell|x<rsup|2>-x-6>|<cell|\<less\>>|<cell|0>>|<row|<cell|<around*|(|x-3|)>*<around*|(|x+2|)>>|<cell|\<less\>>|<cell|0>>>>
      </eqnarray*>

      <\equation*>
        -2\<less\>x\<less\>3
      </equation*>

      <\equation*>
        \;
      </equation*>

      <item><math|x<rsup|2>+x+1\<gtr\>0>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rsup|2>+x+1>|<cell|\<gtr\>>|<cell|0>>|<row|<cell|<around*|(|x+0.5|)><rsup|2>+0.75>|<cell|\<gtr\>>|<cell|0>>>>
      </eqnarray*>

      <\equation*>
        z\<in\> \<bbb-R\>
      </equation*>

      <item><math|<around*|(|x-\<mathpi\>|)>*<around*|(|x+5|)>*<around*|(|x-3|)>\<gtr\>0>

      The tree factors must be positive, or two factors negative

      <\equation*>
        <around*|(|-5\<less\>x\<less\>3|)>\<vee\><around*|(|x\<gtr\>\<mathpi\>|)>
      </equation*>

      <item><math|<around*|(|x-<sqrt|2|3>|)>*<around*|(|x-<sqrt|2>|)>\<gtr\>0>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x\<less\><sqrt|2|3>|)>\<vee\><around*|(|x\<gtr\><sqrt|2>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      <item><math|2<rsup|x>\<less\>8>

      By eyeballing we have the followings.

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<less\>3>|<cell|>|<cell|>>>>
      </eqnarray*>

      <item><math|x+3<rsup|x>\<less\>4>

      By eyeballing we have the followings.

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<less\>1>|<cell|>|<cell|>>>>
      </eqnarray*>

      <item><math|<cfrac|1|x>+<cfrac|1|1-x>\<gtr\>0>

      Case 1: <math|x\<less\>0>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<cfrac|1|x>+<cfrac|1|1-x>>|<cell|\<gtr\>>|<cell|0>>|<row|<cell|<around*|(|1-x|)>+x>|<cell|\<less\>>|<cell|0>>|<row|<cell|1>|<cell|\<less\>>|<cell|0>>>>
      </eqnarray*>

      No solution.

      Case 2: <math|0\<less\>x\<less\>1>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<cfrac|1|x>+<cfrac|1|1-x>>|<cell|\<gtr\>>|<cell|0>>|<row|<cell|<around*|(|1-x|)>+x>|<cell|\<gtr\>>|<cell|0>>|<row|<cell|1>|<cell|\<gtr\>>|<cell|0>>>>
      </eqnarray*>

      The whole interval is a solution.

      Case 3: <math|x\<gtr\>1>

      The same with case 1, no solution.

      Therefore The solution is <math|0\<less\>x\<less\>1>.\ 

      <item><math|<dfrac|x-1|x+1>\<gtr\>0>

      Both numerator and denominator are negatives or both positive.

      <\equation*>
        <around*|(|x\<less\>-1|)>\<vee\><around*|(|x\<gtr\>1|)>
      </equation*>
    </enumerate-alpha>

    <item>Prove the followings.

    <\enumerate-alpha>
      <item><math|a\<less\>b,c\<less\>d\<Rightarrow\>a+c\<less\>b+d>

      <\eqnarray*>
        <tformat|<table|<row|<cell|b-a,d-c\<in\>
        P>|<cell|\<Rightarrow\>>|<cell|<around*|(|b-a|)>+<around*|(|d-c|)>\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|b+d|)>-<around*|(|a+c|)>\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|a+c\<less\>b+d>>>>
      </eqnarray*>

      <item><math|a\<less\>b\<Rightarrow\>-b\<less\>-a>

      <\eqnarray*>
        <tformat|<table|<row|<cell|b-a\<in\>
        P>|<cell|\<Rightarrow\>>|<cell|<around*|(|-a|)>-<around*|(|-b|)>\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|-b\<leftarrow\>a>>>>
      </eqnarray*>

      <item><math|a\<less\>b,c\<gtr\>d\<Rightarrow\>a-c\<less\>b-d>

      <\eqnarray*>
        <tformat|<table|<row|<cell|b-a,c-d\<in\>
        P>|<cell|\<Rightarrow\>>|<cell|b-a,<around*|(|-d|)>-<around*|(|-c|)>\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|b-a|)>+<around*|(|-d-<around*|(|-c|)>|)>\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|b-d|)>-<around*|(|a-c|)>\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|a-c\<less\>b-d>>>>
      </eqnarray*>

      <item><math|a\<less\>b,c\<gtr\>0\<Rightarrow\>a*c\<less\>b*c>

      <\eqnarray*>
        <tformat|<table|<row|<cell|b-a,c-0\<in\>
        P>|<cell|\<Rightarrow\>>|<cell|<around*|(|b-a|)>*<around*|(|c-0|)>\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|b*c-a*c\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|a*c\<less\>b*c>>>>
      </eqnarray*>

      <item><math|a\<less\>b,c\<less\>0\<Rightarrow\>a*c\<gtr\>b*c>

      <\eqnarray*>
        <tformat|<table|<row|<cell|b-a,0-c\<in\>
        P>|<cell|\<Rightarrow\>>|<cell|<around*|(|b-a|)>*<around*|(|0-c|)>\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|-b*c|)>-<around*|(|-a*c|)>\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|a*c-b*c\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|b*c\<less\>a*c>>>>
      </eqnarray*>

      <item><math|a\<gtr\>1\<Rightarrow\>a<rsup|2>\<gtr\>a>

      <\eqnarray*>
        <tformat|<table|<row|<cell|a-1,a-0\<in\>
        P>|<cell|\<Rightarrow\>>|<cell|<around*|(|a-1|)>*a\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|a<rsup|2>-a\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|a\<less\>a<rsup|2>>>>>
      </eqnarray*>

      <item><math|0\<less\>a\<less\>1\<Rightarrow\>a<rsup|2>\<less\>a>

      <\eqnarray*>
        <tformat|<table|<row|<cell|1-a,a-0\<in\>
        P>|<cell|\<Rightarrow\>>|<cell|<around*|(|1-a|)>*<around*|(|a-0|)>\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|a-a<rsup|2>\<in\>
        P>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|a<rsup|2>\<less\>a>>>>
      </eqnarray*>

      <item><math|0\<leqslant\>a\<less\>b,0\<leqslant\>c\<less\>d\<Rightarrow\>a*c\<less\>b*d>

      If either <math|c> or <math|a> is zero then <math|a*c> is zero and
      <math|a*c\<less\>b*d>.

      \;

      If none of them is zero then since <math|d\<gtr\>0> and
      <math|b\<gtr\>a> then <math|b*d\<gtr\>a*d>.

      Also, since <math|a\<gtr\>0> and <math|d\<gtr\>c> then
      <math|a*d\<gtr\>a*c>.

      By two last statements we have <math|b*d\<gtr\>a*c>

      <item><math|0\<leqslant\>a\<less\>b\<Rightarrow\>a<rsup|2>\<less\>b<rsup|2>>

      Same with the previous part except we take <math|c=a> and <math|d=b>

      <item><math|a,b\<geqslant\>0, a<rsup|2>\<less\>b<rsup|2>\<Rightarrow\>a\<less\>b>

      If <math|a=0> then <math|b\<gtr\>a=0>. If <math|b=0>, it's impossible
      because then <math|a<rsup|2>\<less\>0.>

      Now let's see if both are nonzero.

      <\eqnarray*>
        <tformat|<table|<row|<cell|a<rsup|2>>|<cell|\<less\>>|<cell|b<rsup|2>>>|<row|<cell|0>|<cell|\<less\>>|<cell|b<rsup|2>-a<rsup|2>>>|<row|<cell|0>|<cell|\<less\>>|<cell|<around*|(|b-a|)>*<around*|(|b+a|)>>>>>
      </eqnarray*>

      Since <math|b+a\<gtr\>0>, then <math|b\<gtr\>a>, since if not then
      either <math|a=b> which means <math|a<rsup|2>=b<rsup|2>> or
      <math|<around*|(|a-b|)>\<in\> P> which means
      <math|<around*|(|a-b|)>*<around*|(|a+b|)>=a<rsup|2>-b<rsup|2>\<in\> P>
      i.e. <math|a<rsup|2>\<gtr\>b<rsup|2>>. Therefore <math|b-a>.
    </enumerate-alpha>

    <item>Number 6

    <\enumerate-alpha>
      <item>If <math|0\<leqslant\>x\<less\>y> then
      <math|x<rsup|n>\<less\>y<rsup|n>,n=1,2,\<ldots\>>

      If <math|x=0> then <math|y<rsup|n>\<gtr\>0> since <math|y\<gtr\>0>,
      else we can rewrite the inequality as follows

      <\equation*>
        y<rsup|n>-x<rsup|n>=<around*|(|y-x|)>*<around*|(|y<rsup|n-1>+y<rsup|n-2>*x+\<cdots\>+y*x<rsup|n-2>+x<rsup|n-1>|)>
      </equation*>

      See that on the right side <math|y-x\<gtr\>0> and the other factors
      consists of summation of multiplication of positive numbers, which is
      positive. Therefore the left side is also positive.

      <item>If <math|x\<less\>y> and <math|n> is odd then
      <math|x<rsup|n>\<less\>y<rsup|n>>

      case 1: both nonnegative: done by part a

      case 2: <math|x> negative, <math|y> nonnegative, then <math|x<rsup|n>>
      negative (<math|n> is odd) and <math|y<rsup|n>> nonnegative, hence
      <math|x<rsup|n>\<less\>y<rsup|n>>\ 

      case 3: both negative:\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x>|<cell|\<less\>>|<cell|y>>|<row|<cell|-<around*|\||x|\|>>|<cell|\<less\>>|<cell|-<around*|\||y|\|>>>|<row|<cell|<around*|\||y|\|>>|<cell|\<less\>>|<cell|<around*|\||x|\|>>>|<row|<cell|<around*|\||y|\|><rsup|n>>|<cell|\<less\>>|<cell|<around*|\||x|\|><rsup|n>
        >>|<row|<cell|-y<rsup|n>>|<cell|\<less\>>|<cell|-x<rsup|n>>>|<row|<cell|x<rsup|n>>|<cell|\<less\>>|<cell|y<rsup|n>>>>>
      </eqnarray*>

      <item>If <math|x<rsup|n>=y<rsup|n>> and <math|n> is odd then <math|x=y>

      contrapositive, say <math|x<rsup|>\<neq\>y<rsup|>> without lost of
      generality <math|x\<less\>y> then <math|x<rsup|n>\<less\>y<rsup|n> >
      that means <math|x<rsup|n>\<neq\>y<rsup|n>>

      <item>If <math|x<rsup|n>=y<rsup|n>> and <math|n> is even then
      <math|x=y> or <math|x=-y>.

      case 1: both nonnegative. claim <math|x=y> because if <math|x\<neq\>y>,
      say <math|x\<less\>y> then <math|x<rsup|n>\<less\>y<rsup|n>> which
      means <math|x<rsup|n>\<neq\>y<rsup|n>>.

      Case 2: both negative. then <math|-x,-y\<geqslant\>0> hence using case
      1 we claim <math|-x=-y> because if not then
      <math|<around*|(|-x|)><rsup|n>\<neq\><around*|(|-y|)><rsup|n> >which
      since <math|n> is even <math|x<rsup|n>\<neq\>y<rsup|n>>.

      Case 3, one negative both positive, say <math|x> negative, then
      <math|-x,y\<geqslant\>0> again using case 1 we can claim that
      <math|-x=y>.
    </enumerate-alpha>

    <item>Number 7

    <math|0\<less\>a\<less\>b\<Rightarrow\>a\<less\><sqrt|a*b>\<less\><dfrac|a+b|2>\<less\>b>

    We have <math|<sqrt|b>\<gtr\><sqrt|a> >by number 5 j. Hence
    <math|<around*|(|<sqrt|b>-<sqrt|a>|)>*<sqrt|a>\<in\>
    P\<Rightarrow\><sqrt|a*b>\<gtr\>a>.

    And <math|<around*|(|<sqrt|b>-<sqrt|a>|)><rsup|2>\<gtr\>0\<Rightarrow\><dfrac|a+b|2>\<gtr\><sqrt|a*b>>

    Lastly <math|<around*|(|b-a|)>+<around*|(|b-b|)>\<gtr\>0\<Rightarrow\>2*b-<around*|(|a+b|)>\<gtr\>0\<Rightarrow\>b\<gtr\><dfrac|a+b|2>>

    <item>Number 8

    Trichonomy: for any number <math|a> we can write <math|a=a-0> and there
    are three posibility, <math|a=0> so that <math|a=0>, <math|a\<gtr\>0> so
    that <math|a\<in\> P>, and <math|a\<less\>0> so that <math|-a=0-a\<in\>
    P>.

    closure of addition: consider <math|a,b\<in\> P> then
    <math|a\<gtr\>0,b\<gtr\>0> hence <math|a+b\<gtr\>0+b=b> and since
    <math|b\<gtr\>0> we have <math|a+b\<gtr\>0> or <math|a+b\<in\> P>.

    closure of multiplication: consider <math|a,b\<in\> P>, then
    <math|a,b\<gtr\>0> hence <math|a*b\<gtr\>0*b=0>

    <item>Number 9

    <\enumerate-alpha>
      <item><math|<around*|\||<sqrt|2>+<sqrt|3>-<sqrt|5>+<sqrt|7>|\|>=<sqrt|2>+<sqrt|3>-<sqrt|5>+<sqrt|7>>

      <item><math|<around*|\||<around*|(|<around*|\||a+b|\|>-<around*|\||a|\|>-<around*|\||b|\|>|)>|\|>=<around*|\||a|\|>+<around*|\||b|\|>-<around*|\||a+b|\|>>

      <item><math|<around*|\||<around*|(|<around*|\||a+b|\|>+<around*|\||c|\|>-<around*|\||a+b+c|\|>|)>|\|>>=<math|<around*|\||a+b|\|>+<around*|\||c|\|>-<around*|\||a+b+c|\|>>

      <item><math|<around*|\||x<rsup|2>-2*x*y+y<rsup|2>|\|>=x<rsup|2>-2*x*y+y<rsup|2>>

      <item><math|<around*|\||<around*|(|<around*|\||<sqrt|2>+<sqrt|3>|\|>-<around*|\||<sqrt|5>-<sqrt|7>|\|>|)>|\|>=<sqrt|2>+<sqrt|3>-<sqrt|7>+<sqrt|5>>
    </enumerate-alpha>

    <item>Number 10\ 

    <\enumerate-alpha>
      <item><math|<around*|\||a+b|\|>-<around*|\||b|\|>=<around*|{|<tabular|<tformat|<table|<row|<cell|a>|<cell|if
      \ a,b\<geqslant\>0<infix-or>b\<geqslant\>0,a\<gtr\>-b>>|<row|<cell|-a-2b>|<cell|if
      b\<geqslant\>0,a\<less\>-b>>|<row|<cell|a+2b>|<cell|if
      b\<less\>0,a\<gtr\>-b>>|<row|<cell|-a>|<cell|if
      a,b\<less\>0<infix-or>b\<less\>0,a\<less\>-b>>>>>|\<nobracket\>>>

      <item><math|<around*|\||<around*|(|<around*|\||x|\|>-1|)>|\|>=<around*|{|<tabular|<tformat|<table|<row|<cell|x-1>|<cell|if
      x\<gtr\>1>|<cell|>>|<row|<cell|-x-1>|<cell|x\<less\>-1>|<cell|>>|<row|<cell|1-x>|<cell|if
      0\<less\>x\<leqslant\>1>|<cell|>>|<row|<cell|1+x>|<cell|if-1\<leqslant\>x\<leqslant\>0>|<cell|>>>>>|\<nobracket\>>>

      <item><math|<around*|\||x|\|>-<around*|\||x<rsup|2>|\|>=<around*|{|<tabular|<tformat|<table|<row|<cell|x-x<rsup|2>>|<cell|if
      x\<geqslant\>0>>|<row|<cell|-x-x<rsup|2>>|<cell|if
      x\<less\>0>>>>>|\<nobracket\>>>

      <item><math|a-<around*|\||<around*|(|a-<around*|\||a|\|>|)>|\|>=<around*|{|<tabular|<tformat|<table|<row|<cell|a>|<cell|if
      a\<geqslant\>0>>|<row|<cell|3*a>|<cell|if a\<less\>0>>>>>|}>>
    </enumerate-alpha>

    <item>Number 11

    <\enumerate-alpha>
      <item><math|<around*|\||x-3|\|>=8>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x-3>|<cell|=>|<cell|\<pm\>
        8>>|<row|<cell|x>|<cell|=>|<cell|3\<pm\>
        8>>|<row|<cell|x>|<cell|\<in\> >|<cell|<around*|{|-5,11|}>>>>>
      </eqnarray*>

      <item><math|<around*|\||x-3|\|>\<less\>8>

      <\equation*>
        <tabular|<tformat|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|-1|1|1|cell-halign|r>|<table|<row|<cell|-8>|<cell|\<less\>>|<cell|x-3>|<cell|\<less\>>|<cell|8>>|<row|<cell|-8+3>|<cell|\<less\>>|<cell|x>|<cell|\<less\>>|<cell|8+3>>|<row|<cell|-5>|<cell|\<less\>>|<cell|x>|<cell|\<less\>>|<cell|11>>>>>
      </equation*>

      <\equation*>
        x\<in\> <around*|(|-5,11|)>
      </equation*>

      <item><math|<around*|\||x+4|\|>\<less\>2>

      <\equation*>
        <tabular|<tformat|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|-1|1|1|cell-halign|r>|<table|<row|<cell|-2>|<cell|\<less\>>|<cell|x+4>|<cell|\<less\>>|<cell|2>>|<row|<cell|-2-4>|<cell|\<less\>>|<cell|x>|<cell|\<less\>>|<cell|2-4>>|<row|<cell|-6>|<cell|\<less\>>|<cell|x>|<cell|\<less\>>|<cell|-2>>>>>
      </equation*>

      <\equation*>
        x\<in\> <around*|(|-6,-2|)>
      </equation*>

      <item><math|<around*|\||x+1|\|>+<around*|\||x-2|\|>\<gtr\>1>

      It's numbers whose sum of distance from -1 and 2 are more than 1.

      <\equation*>
        x\<in\> \<bbb-R\>
      </equation*>

      \ 

      <item><math|<around*|\||x-1|\|>+<around*|\||x+1|\|>\<less\>2>

      It's numbers whose sum of distance from 1 and -1 is less than 2.

      <\equation*>
        x\<in\> <around*|(|-1,1|)>
      </equation*>

      <item><math|<around*|\||x-1|\|>+<around*|\||x+1|\|>\<less\>1>

      It's numbers whose sum of distance from 1 and -1 is less than 1.

      <\equation*>
        x\<in\>\<varnothing\>
      </equation*>

      <item><math|<around*|\||x-1|\|>*<around*|\||x+1|\|>=0>

      At least one of the factors is zero. <math|x\<in\> <around*|{|-1,1|}>>

      <item><math|<around*|\||x-1|\|>*<around*|\||x+2|\|>=3>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<around*|(|x-1|)>*<around*|(|x+2|)>|\|>>|<cell|=>|<cell|3>>|<row|<cell|<around*|\||x<rsup|2>+x-2|\|>>|<cell|=>|<cell|3>>|<row|<cell|x<rsup|2>+x-2>|<cell|=>|<cell|\<pm\>
        3>>>>
      </eqnarray*>

      There are two cases, the first one is as follows.

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rsup|2>+x-2>|<cell|=>|<cell|3>>|<row|<cell|x<rsup|2>+x-5>|<cell|=>|<cell|0>>|<row|<cell|x>|<cell|=>|<cell|<cfrac|-1\<pm\>
        <sqrt|21>|2>>>>>
      </eqnarray*>

      Second case is as follows.

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rsup|2>+x-2>|<cell|=>|<cell|-3>>|<row|<cell|x<rsup|2>+x+1>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      This one has no solution. Therefore we have the following.

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|x>|<cell|=>|<cell|<cfrac|-1\<pm\>
        <sqrt|21>|2>>>>>>
      </equation*>
    </enumerate-alpha>

    <item>Proof

    <\enumerate-alpha>
      <item><math|<around*|\||x\<cdot\>y|\|>=<around*|\||x|\|>\<cdot\><around*|\||y|\|>>

      We can proof it case by case, there are four cases and all are trivial.

      <item><math|<around*|\||<cfrac|1|x>|\|>=<cfrac|1|<around*|\||x|\|>>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<cfrac|1|x>|\|>>|<cell|=>|<cell|<around*|\||1\<cdot\>x<rsup|-1>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||1|\|>\<cdot\><around*|\||x<rsup|-1>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||x<rsup|-1>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||x|\|><rsup|-1>
        <around*|(|checking case|)>>>|<row|<cell|>|<cell|=>|<cell|<cfrac|1|<around*|\||x|\|>>>>>>
      </eqnarray*>

      <item><math|<around*|\||<cfrac|x|y>|\|>=<cfrac|<around*|\||x|\|>|<around*|\||y|\|>>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<cfrac|x|y>|\|>>|<cell|=>|<cell|<around*|\||x\<cdot\>y<rsup|-1>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||x|\|>\<cdot\><around*|\||y<rsup|-1>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||x|\|>\<cdot\><around*|\||y|\|><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|<cfrac|<around*|\||1x|\|>|<around*|\||y|\|>>>>>>
      </eqnarray*>

      <item><math|<around*|\||x-y|\|>\<leqslant\><around*|\||x|\|>+<around*|\||y|\|>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||x-y|\|>>|<cell|\<leqslant\>>|<cell|<around*|\||x|\|>+<around*|\||-y|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||x|\|>+<around*|\||y|\|>>>>>
      </eqnarray*>

      <item><math|<around*|\||x|\|>-<around*|\||y|\|>\<leqslant\><around*|\||x-y|\|>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<around*|(|x-y|)>+y|\|>>|<cell|\<leqslant\>>|<cell|<around*|\||x-y|\|>+<around*|\||y|\|>>>|<row|<cell|<around*|\||x|\|>>|<cell|\<leqslant\>>|<cell|<around*|\||x-y|\|>+<around*|\||y|\|>>>|<row|<cell|<around*|\||x|\|>-<around*|\||y|\|>>|<cell|\<leqslant\>>|<cell|<around*|\||x-y|\|>>>>>
      </eqnarray*>

      <item><math|<around*|\||<around*|(|<around*|\||x|\|>-<around*|\||y|\|>|)>|\|>\<leqslant\><around*|\||x-y|\|>>

      It follows from e by switching the symbols.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||x|\|>-<around*|\||y|\|>>|<cell|\<leqslant\>>|<cell|<around*|\||x-y|\|>>>|<row|<cell|<around*|\||y|\|>-<around*|\||x|\|>>|<cell|\<leqslant\>>|<cell|<around*|\||y-x|\|>>>|<row|<cell|-<around*|(|<around*|\||x|\|>-<around*|\||y|\|>|)>>|<cell|\<leqslant\>>|<cell|<around*|\||x-y|\|>>>>>
      </eqnarray*>

      Therefore we have <math|<around*|\||<around*|(|<around*|\||x|\|>-<around*|\||y|\|>|)>|\|>\<leqslant\><around*|\||x-y|\|>>\ 

      <item><math|<around*|\||x+y+z|\|>\<leqslant\><around*|\||x|\|>+<around*|\||y|\|>+<around*|\||z|\|>>,
      indicate the equality condition

      <\equation*>
        <around*|\||x+y+z|\|>\<leqslant\><around*|\||x+y|\|>+<around*|\||z|\|>\<leqslant\><around*|\||x|\|>+<around*|\||y|\|>+<around*|\||z|\|>
      </equation*>

      Equality happens when the signs of all symbols are equal.
    </enumerate-alpha>

    <item>Number 13

    <\equation*>
      max <around*|(|x,y|)>=<cfrac|x+y+<around*|\||y-x|\|>|2>
    </equation*>

    <\equation*>
      min <around*|(|x,y|)>=<cfrac|x+y-<around*|\||y-x|\|>|2>
    </equation*>

    The two calculate the maximum and minimum of the two arguments, we can
    check it by consider the cases <math|x\<less\>y> and
    <math|x\<geqslant\>y>.

    Formula for three numbers.

    <\eqnarray*>
      <tformat|<table|<row|<cell|max <around*|(|x,y,z|)>>|<cell|=>|<cell|max
      <around*|(|x,max <around*|(|y,z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|x+<around*|(|<cfrac|y+z+<around*|\||y-z|\|>|2>|)>+<around*|\||x+<around*|(|<cfrac|y+z+<around*|\||y-z|\|>|2>|)>|\|>|2>>>|<row|<cell|>|<cell|=>|<cell|<cfrac|2*x+y+z+<around*|\||y-z|\|>+<around*|\||2*x+y+z+<around*|(|<around*|\||y-z|\|>|)>|\|>|4>>>>>
    </eqnarray*>

    The minimum formula for 3 numbers is similar.

    <item>Proof

    <\enumerate-alpha>
      <item><math|<around*|\||a|\|>=<around*|\||-a|\|>>

      case 1: <math|a\<geqslant\>0> then both <math|\|a\|=a> and
      <math|<around*|\||-a|\|>=-<around*|(|-a|)>=a> therefore
      <math|<around*|\||a|\|>=<around*|\||-a|\|>>

      case 2: <math|a\<less\>0>, then <math|-a\<gtr\>0> and from the previous
      case <math|<around*|\||-a|\|>=<around*|\||a|\|>>

      <item><math|-b\<leqslant\>a\<leqslant\>b\<Leftrightarrow\><around*|\||a|\|>\<leqslant\>b>
      and therefore <math|-<around*|\||a|\|>\<leqslant\>a\<leqslant\><around*|\||a|\|>>

      Forward: if <math|a\<geqslant\>0> then
      <math|<around*|\||a|\|>=a\<leqslant\>b>, if <math|a\<less\>0> then
      <math|-a\<leqslant\>-<around*|(|-b|)>=b> and
      <math|<around*|\||a|\|>=-a\<leqslant\>b>.

      Backward: if <math|a\<geqslant\>0> then
      <math|a=<around*|\||a|\|>\<leqslant\>b> and
      <math|a\<geqslant\>-a\<geqslant\>-b>, if <math|a\<less\>0> then
      <math|a\<leqslant\><around*|\||a|\|>\<leqslant\>b> and
      <math|-a=<around*|\||a|\|>\<leqslant\>b> therefore
      <math|a\<geqslant\>-b>

      For special case choose <math|b=<around*|\||a|\|>>

      <item><math|<around*|\||a+b|\|>\<leqslant\><around*|\||a|\|>+<around*|\||b|\|>>

      <math|-<around*|\||a|\|>\<leqslant\>a\<leqslant\><around*|\||a|\|>> and
      <math|-<around*|\||b|\|>\<leqslant\>b\<leqslant\><around*|\||b|\|>>hence
      <math|-<around*|(|<around*|\||a|\|>+<around*|\||b|\|>|)>\<leqslant\>a+b\<leqslant\><around*|\||a|\|>+<around*|\||b|\|>>therefore
      <math|<around*|\||a+b|\|>\<leqslant\><around*|\||<around*|(|<around*|\||a|\|>+<around*|\||b|\|>|)>|\|>=<around*|\||a|\|>+<around*|\||b|\|>>
    </enumerate-alpha>

    <item>Proof that if <math|x> and <math|y > are not both zero then

    <\equation*>
      x<rsup|2>+x*y+y<rsup|2>\<gtr\>0
    </equation*>

    Consider <math|x<rsup|3>-y<rsup|3>=<around*|(|x-y|)><around*|(|x<rsup|2>+x*y+y<rsup|2>|)>>

    Since <math|x\<less\>y\<Leftrightarrow\>x<rsup|3>\<less\>y<rsup|3>> the
    terms <math|x<rsup|3>-y<rsup|3>> and <math|x-y> have the same sign
    therefore <math|x<rsup|2>+x*y+y<rsup|2>> is positive.

    <\equation*>
      x<rsup|4>+x<rsup|3>*y+x<rsup|2>*y<rsup|2>+x*y<rsup|3>+y<rsup|4>\<gtr\>0
    </equation*>

    Similar with the previous case except this time we consider
    <math|x<rsup|5>-y<rsup|5>>.

    <item>show that

    <\enumerate-alpha>
      <item><math|<around*|(|x+y|)><rsup|2>=x<rsup|2>+y<rsup|2>> only if
      <math|x=0> or <math|y=0>

      <math|>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x+y|)><rsup|2>>|<cell|=>|<cell|x<rsup|2>+y<rsup|2>>>|<row|<cell|x<rsup|2>+2*x*y+y<rsup|2>>|<cell|=>|<cell|x<rsup|2>+y<rsup|2>>>|<row|<cell|2*x*y>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      Therefore <math|x=0> or <math|y=0>

      <math|<around*|(|x+y|)><rsup|3>=x<rsup|3>+y<rsup|3>> only if
      <math|x=0>, <math|y=0>, or <math|x=-y>.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x+y|)><rsup|3>>|<cell|=>|<cell|x<rsup|3>+y<rsup|3>>>|<row|<cell|x<rsup|3>+x<rsup|2>*y+x*y<rsup|2>+x<rsup|3>>|<cell|=>|<cell|x<rsup|3>+y<rsup|3>>>|<row|<cell|x*y*<around*|(|x+y|)>>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      Therefore <math|x=0>, <math|y=0>, or <math|x=-y>.

      <item>Use <math|x<rsup|2>+2*x*y+y<rsup|2>=<around*|(|x+y|)><rsup|2>\<geqslant\>0>
      to prove that <math|4x<rsup|2>+6*x*y+4y<rsup|2>\<gtr\>0> unless
      <math|x=y=0>

      <\eqnarray*>
        <tformat|<table|<row|<cell|4x<rsup|2>+6*x*y+4y<rsup|2>>|<cell|=>|<cell|3*<around*|(|x<rsup|2>+2*x*y+y<rsup|2>|)>+x<rsup|2>+y<rsup|2>>>|<row|<cell|>|<cell|=>|<cell|3*<around*|(|x+y|)><rsup|2>+x<rsup|2>+y<rsup|2>>>>>
      </eqnarray*>

      On the right hand side all of the term are positive except when
      <math|x=y=0>

      <item>When is <math|<around*|(|x+y|)><rsup|4>=x<rsup|4>+y<rsup|4>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x+y|)><rsup|4>>|<cell|=>|<cell|x<rsup|4>+y<rsup|4>>>|<row|<cell|x<rsup|4>+4*x<rsup|3>*y+6*x<rsup|2>*y<rsup|2>+4*x*y<rsup|3>+y<rsup|4>>|<cell|=>|<cell|x<rsup|4>+y<rsup|4>>>|<row|<cell|x*y*<around*|(|4x<rsup|2>+6*x*y+4*y<rsup|2>|)>>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      So it's either <math|x=0>, <math|y=0>, or <math|x=y=0>

      <item>When is]

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x+y|)><rsup|5>>|<cell|=>|<cell|x<rsup|5>+y<rsup|5>>>|<row|<cell|x<rsup|5>+5*x<rsup|4>*y+10*x<rsup|3>*y<rsup|2>+10*x<rsup|2>*y<rsup|3>+5*x*y<rsup|4>+y<rsup|5>>|<cell|=>|<cell|x<rsup|5>+y<rsup|5>>>|<row|<cell|5*x*y*<around*|(|x<rsup|3>+2*x<rsup|2>*y+2*x*y<rsup|2>+y<rsup|3>|)>>|<cell|=>|<cell|0>>|<row|<cell|5*x*y*<around*|(|<around*|(|x+y|)><rsup|3>-x*y*<around*|(|x+y|)>|)>>|<cell|=>|<cell|0>>|<row|<cell|5*x*y*<around*|(|x+y|)>*<around*|(|<around*|(|x+y|)><rsup|2>-x*y|)>>|<cell|=>|<cell|0>>|<row|<cell|5*x*y*<around*|(|x+y|)>*<around*|(|x<rsup|2>+y<rsup|2>+x*y|)>>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      The last factor is not 0 unless <math|x=y=0>. Thus, it's either
      <math|x=0>, <math|y=0>, or <math|x=-y>
    </enumerate-alpha>

    <item>Find the minimum value of

    <\enumerate-alpha>
      <item><math|2*x<rsup|2>-3*x+4=2*<around*|(|x<rsup|2>-2<frac|3|4>*x+<frac|9|16>|)>+4-<frac|9|8>=2*<around*|(|x-<frac|3|4>|)><rsup|2>+><frac|23|8>

      The minium value is <math|<frac*|23|8>>.

      <item><math|x<rsup|2>-3*x+2y<rsup|2>+4y+2=<around*|(|x-<frac|3|2>|)><rsup|2>+2*<around*|(|y+1|)><rsup|2>+2-<frac|9|4>-1>

      The minimum vallue is <math|-<frac*|5|4>>

      <item>Number 17c

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rsup|2>+4*x*y+5*y<rsup|2>-4*x-6*y+7>|<cell|=>|<cell|x<rsup|2>+4*x*<around*|(|y-1|)>+<around*|(|y-1|)><rsup|2>+4*y<rsup|2>-4y+6>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x+y-1|)><rsup|2>+4*<around*|(|y<rsup|2>-y+<frac|1|4>|)>+5>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x+y-1|)><rsup|2>+4*<around*|(|y-<frac|1|2>|)><rsup|2>+5>>>>
      </eqnarray*>

      The minimum value is 5
    </enumerate-alpha>

    <item>Number 18

    <\enumerate-alpha>
      <item>roots of monic quadratic equations

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rsup|2>+b*x+c>|<cell|=>|<cell|0>>|<row|<cell|x<rsup|2>+b*x+<cfrac|b<rsup|2>|4>+c-<cfrac|b<rsup|2>|4>>|<cell|=>|<cell|0>>|<row|<cell|<around*|(|x-<cfrac|b|2>|)><rsup|2>>|<cell|=>|<cell|<cfrac|b<rsup|2>-4*c|4>
        >>>>
      </eqnarray*>

      See that if the right hand side is negative the equation doesn't have
      solution, this is the answer in part b

      <\eqnarray*>
        <tformat|<table|<row|<cell|x-<cfrac|b|2>>|<cell|=>|<cell|\<pm\>
        <sqrt|<cfrac|b<rsup|2>-4*c|4>>>>|<row|<cell|x>|<cell|=>|<cell|<cfrac|-b\<pm\>
        <sqrt|b<rsup|2>-4*c>|2>>>>>
      </eqnarray*>

      The two <math|x >satisfy the equation.

      <item>in part (a)

      <item>In equation <math|x<rsup|2>+x*y+y<rsup|2>=0>,
      <math|b<rsup|2>-4*c=y<rsup|2>-4*y<rsup|2>=-3*y<rsup|2>> Therefore no
      solution for <math|x> except <math|y=0> in wich case both are zero.
      Also since the expression is continuous and positive for some value, it
      always positive

      <item>For <math|x<rsup|2>+\<alpha\>*x*y+y<rsup|2>\<gtr\>0>,
      <math|\<alpha\> <rsup|2>*y<rsup|2>\<less\>4*y<rsup|2>\<Rightarrow\>-2\<less\>\<alpha\>\<less\>2>

      <item>Smallest value for <math|x<rsup|2>+b*x+c=<around*|(|x<rsup|2>+b*x+<cfrac|b<rsup|2>|4>|)>+<around*|(|c-<cfrac|b<rsup|2>|4>|)>>
      is <math|c-<frac*|b<rsup|2>|4>>

      Meanshile smallest value for <math|a*x<rsup|2>+b*x+c=a*<around*|(|x<rsup|2>+<dfrac|b|a>*x+<cfrac|b<rsup|2>|4*a>|)>+<around*|(|c-<cfrac|b<rsup|2>|4*a>|)>>is
      <math|c-<frac*|b<rsup|2>|4*a>>
    </enumerate-alpha>

    <item>Proof of Swarz inequality <math|x<rsub|1>*y<rsub|1>+x<rsub|2>*y<rsub|2>\<leqslant\><sqrt|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>>*<sqrt|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>><rsub|>>

    <\enumerate-alpha>
      <item>if <math|y<rsub|1>=\<lambda\>*x<rsub|1>>and
      <math|y<rsub|2>=\<lambda\>*x<rsub|2>> or either
      <math|x<rsub|1>,x<rsub|2>=0> or <math|y<rsub|1>,y<rsub|2>=0> then the
      equality occurs. say they are nonzero and there is no such
      <math|\<lambda\>>. Then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|y<rsub|1>-\<lambda\>*x<rsub|1>|)><rsup|2>+<around*|(|y<rsub|2>-\<lambda\>*x<rsub|2>|)><rsup|2>>|<cell|\<gtr\>>|<cell|0>>|<row|<cell|\<lambda\><rsup|2>*<around*|(|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>|)>-2*\<lambda\>*<around*|(|x<rsub|1>*y<rsub|1>+x<rsub|2>*y<rsub|2>|)>+<around*|(|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>|)>>|<cell|\<gtr\>>|<cell|0>>|<row|<cell|2<rsup|2>*<around*|(|x<rsub|1>*y<rsub|1>+x<rsub|2>*y<rsub|2>|)><rsup|2>-4*<around*|(|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>|)>*<around*|(|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>|)>>|<cell|\<less\>>|<cell|0>>|<row|<cell|<around*|(|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>|)>*<around*|(|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>|)>>|<cell|\<gtr\>>|<cell|<around*|(|x<rsub|1>*y<rsub|1>+x<rsub|2>*y<rsub|2>|)><rsup|2>>>|<row|<cell|<sqrt|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>>*<sqrt|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>><rsub|>>|<cell|\<gtr\>>|<cell|x<rsub|1>*y<rsub|1>+x<rsub|2>*y<rsub|2>>>>>
      </eqnarray*>

      <item>Using <math|<around*|(|x-y|)><rsup|2>\<geqslant\>0>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rsup|2>+y<rsup|2>>|<cell|\<geqslant\>>|<cell|2*x*y>>|<row|<cell|<around*|(|<cfrac|x<rsub|i>|<sqrt|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>>>|)><rsup|2>+<around*|(|<cfrac|y<rsub|i>|<sqrt|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>>>|)><rsup|2>>|<cell|\<geqslant\>>|<cell|2<around*|(|<cfrac|x<rsub|i>|<sqrt|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>>>|)>*<around*|(|<cfrac|y<rsub|i>|<sqrt|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>>>|)>>>>>
      </eqnarray*>

      substituting <math|i> with 1 and repeat but substituting <math|i> with
      2 and then add\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<cfrac|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>>+<cfrac|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>>>|<cell|\<geqslant\>>|<cell|2*<around*|(|<cfrac|x<rsub|1>|<sqrt|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>>><cfrac|y<rsub|1>|<sqrt|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>>>+<cfrac|x<rsub|1>|<sqrt|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>>><cfrac|y<rsub|1>|<sqrt|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>>>|)>>>|<row|<cell|2>|<cell|\<geqslant\>>|<cell|2*<around*|(|<cfrac|x<rsub|1>*y<rsub|1>+x<rsub|2>*y<rsub|2>|<sqrt|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>><sqrt|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>>>|)>>>|<row|<cell|x<rsub|1>*y<rsub|1>+x<rsub|2>*y<rsub|2>>|<cell|\<leqslant\>>|<cell|<sqrt|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>><sqrt|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>>>>>>
      </eqnarray*>

      Equality happens when <math|y<rsub|1>=\<lambda\>*x<rsub|1>>and
      <math|y<rsub|2>=\<lambda\>*x<rsub|2>> or both <math|x> are zero or both
      <math|y> are zero

      \ <item><math|>We can prove that <math|<around*|(|x<rsub|1<rsup|>><rsup|2>+x<rsub|2><rsup|2>|)>*<around*|(|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>|)>=<around*|(|x<rsub|1>*y<rsub|1>+x<rsub|2>*y<rsub|2>|)><rsup|2>+<around*|(|x<rsub|1>*y<rsub|2>-x<rsub|2>*y<rsub|1>|)><rsup|2>>by
      expanding. Hence we have<math|<around*|(|x<rsub|1<rsup|>><rsup|2>+x<rsub|2><rsup|2>|)>*<around*|(|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>|)>\<geqslant\><around*|(|x<rsub|1>*y<rsub|1>+x<rsub|2>*y<rsub|2>|)><rsup|2>.
      >Equality occurs when the second term on the right is zero. or
      <math|><math|<frac*|x<rsub|1>|x<rsub|2>>=<frac*|y<rsub|1>|y<rsub|2>>>
      which we can label <math|\<lambda\>>.

      <item>the proof in on each three
    </enumerate-alpha>

    <item>Proof <math|<around*|\||x-x<rsub|0>|\|>\<less\><cfrac|\<varepsilon\>|2>,<around*|\||y-y<rsub|0>|\|>\<less\><cfrac|\<varepsilon\>|2>\<Rightarrow\><around*|\||<around*|(|x+y|)>-<around*|(|x<rsub|0>+y<rsub|0>|)>|\|>\<less\>\<varepsilon\>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||<around*|(|x+y|)>-<around*|(|x<rsub|0>+y<rsub|0>|)>|\|>>|<cell|=>|<cell|<around*|\||<around*|(|x-x<rsub|0>|)>+<around*|(|y-y<rsub|0>|)>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||x-x<rsub|0>|\|>+<around*|\||y-y<rsub|0>|\|>>>|<row|<cell|>|<cell|\<less\>>|<cell|<dfrac|\<varepsilon\>|2>+<dfrac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    Proof <math|<around*|\||x-x<rsub|0>|\|>\<less\><cfrac|\<varepsilon\>|2>,<around*|\||y-y<rsub|0>|\|>\<less\><cfrac|\<varepsilon\>|2>\<Rightarrow\><around*|\||<around*|(|x-y|)>-<around*|(|x<rsub|0>-y<rsub|0>|)>|\|>\<less\>\<varepsilon\>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||<around*|(|x-y|)>-<around*|(|x<rsub|0>-y<rsub|0>|)>|\|>>|<cell|=>|<cell|<around*|\||<around*|(|x-x<rsub|0>|)>+<around*|(|y<rsub|0>-y|)>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||x-x<rsub|0>|\|>+<around*|\||y<rsub|0>-y<rsub|>|\|>>>|<row|<cell|>|<cell|\<less\>>|<cell|<dfrac|\<varepsilon\>|2>+<dfrac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    <item>Proof <math|<around*|\||x-x<rsub|0>|\|>\<less\>min
    <around*|(|<dfrac|\<varepsilon\>|2<around*|(|<around*|\||y<rsub|0>|\|>+1|)>>,1|)>>,<math|<around*|\||y-y<rsub|0>|\|>\<less\>min
    <around*|(|<dfrac|\<varepsilon\>|2<around*|(|<around*|\||x<rsub|0>|\|>+1|)>>,1|)>\<Rightarrow\><around*|\||x*y-x<rsub|0>*y<rsub|0>|\|>\<less\>\<varepsilon\>>

    First <math|<around*|\||x-x<rsub|0>|\|>\<less\>1\<Rightarrow\>x<rsub|0>-1\<less\>x\<less\>x<rsub|0>+1\<Rightarrow\><around*|\||x|\|>\<less\>x<rsub|0>+1\<leqslant\><around*|\||x<rsub|0>|\|>+1>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||x*y-x<rsub|0>*y<rsub|0>|\|>>|<cell|=>|<cell|<around*|\||x*y-x*y<rsub|0>+x*y<rsub|0>-x<rsub|0>*y<rsub|0>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||x*y-x*y<rsub|0>|\|>+<around*|\||x*y<rsub|0>-x<rsub|0>*y<rsub|0>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||x|\|>*<around*|\||y-y<rsub|0>|\|>+<around*|\||x-x<rsub|0>|\|>*<around*|\||y<rsub|0>|\|>>>|<row|<cell|>|<cell|\<less\>>|<cell|<around*|\||x|\|>*<dfrac|\<varepsilon\>|2<around*|(|<around*|\||x<rsub|0>|\|>+1|)>>+<dfrac|\<varepsilon\>|2<around*|(|<around*|\||y<rsub|0>|\|>+1|)>>*<around*|\||y<rsub|0>|\|>>>|<row|<cell|>|<cell|\<less\>>|<cell|<dfrac|\<varepsilon\>|2>+<dfrac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    <item>Proof <math|<around*|\||y-y<rsub|0>|\|>\<less\>min
    <around*|(|<dfrac|<around*|\||y<rsub|0>|\|>|2>,<dfrac|\<varepsilon\><around*|\||y<rsub|0>|\|><rsup|2>|2>|)>,y\<neq\>0\<Rightarrow\><around*|\||<dfrac|1|y>-<dfrac|1|y<rsub|0>>|\|>\<less\>\<varepsilon\>>

    First, <math|<around*|\||y-y<rsub|0>|\|>\<less\><dfrac|<around*|\||y<rsub|0>|\|>|2>\<Rightarrow\>-<dfrac|<around*|\||y<rsub|0>|\|>|2>\<less\>y-y<rsub|0>\<less\><dfrac|<around*|\||y<rsub|0>|\|>|2>\<Rightarrow\>y\<gtr\>y<rsub|0>-<dfrac|<around*|\||y<rsub|0>|\|>|2>=<dfrac|<around*|\||y<rsub|0>|\|>|2>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||<dfrac|1|y>-<dfrac|1|y<rsub|0>>|\|>>|<cell|=>|<cell|<around*|\||<dfrac|y<rsub|0>-y|y*y<rsub|0>>|\|>>>|<row|<cell|>|<cell|=>|<cell|<dfrac|<around*|\||y<rsub|0>-y|\|>|<around*|\||y|\|>*<around*|\||y<rsub|0>|\|>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<dfrac|<dfrac|\<varepsilon\><around*|\||y<rsub|0>|\|><rsup|2>|2>|<dfrac|<around*|\||y<rsub|0>|\|>|2>*<around*|\||y<rsub|0>|\|>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    <item>Proof <math|<around*|\||x-x<rsub|0>|\|>\<less\><dfrac|\<varepsilon\>*<around*|\||y<rsub|0>|\|>|4>,<around*|\||y-y<rsub|0>|\|>\<less\>min
    <around*|(|<dfrac|<around*|\||y<rsub|0>|\|>|2>,<dfrac|\<varepsilon\><around*|\||y<rsub|0>|\|><rsup|2>|4*<around*|\||x<rsub|0>|\|>>|)>,y\<neq\>0\<Rightarrow\><around*|\||<dfrac|x|y>-<dfrac|x<rsub|0>|y<rsub|0>>|\|>\<less\>\<varepsilon\>>

    First, <math|<around*|\||y-y<rsub|0>|\|>\<less\><dfrac|<around*|\||y<rsub|0>|\|>|2>\<Rightarrow\>-<dfrac|<around*|\||y<rsub|0>|\|>|2>\<less\>y-y<rsub|0>\<less\><dfrac|<around*|\||y<rsub|0>|\|>|2>\<Rightarrow\>y\<gtr\>y<rsub|0>-<dfrac|<around*|\||y<rsub|0>|\|>|2>=<dfrac|<around*|\||y<rsub|0>|\|>|2>>

    Second

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||<dfrac|x|y>-<dfrac|x<rsub|0>|y<rsub|0>>|\|>>|<cell|=>|<cell|<around*|\||<dfrac|x*y<rsub|0>-x<rsub|0>*y|y*y<rsub|0>>|\|>>>|<row|<cell|>|<cell|=>|<cell|<cfrac|<around*|\||x*y<rsub|0>-x<rsub|0>*y<rsub|0>+x<rsub|0>*y<rsub|0>-x<rsub|0>*y|\|>|<around*|\||y|\|>*<around*|\||y<rsub|0>|\|>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<cfrac|<around*|\||x*y<rsub|0>-x<rsub|0>*y<rsub|0>|\|>+<around*|\||x<rsub|0>*y<rsub|0>-x<rsub|0>*y|\|>|<around*|\||y|\|>*<around*|\||y<rsub|0>|\|>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<cfrac|<around*|\||x-x<rsub|0>|\|>*<neg|<around*|\||y<rsub|0>|\|>>|<around*|\||y|\|>*<neg|<around*|\||y<rsub|0>|\|>>>+<dfrac|<around*|\||x<rsub|0>|\|>*<around*|\||y<rsub|0>-y|\|>|<around*|\||y|\|>*<around*|\||y<rsub|0>|\|>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<cfrac|<dfrac|\<varepsilon\>*<around*|\||y<rsub|0>|\|>|4>|<dfrac|<around*|\||y<rsub|0>|\|>|2>>+<dfrac|<around*|\||x<rsub|0>|\|>*<dfrac|\<varepsilon\><around*|\||y<rsub|0>|\|><rsup|2>|4*<around*|\||x<rsub|0>|\|>>|<dfrac|<around*|\||y<rsub|0>|\|>|2>*<around*|\||y<rsub|0>|\|>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    <item>Proof

    First define <math|a<rsub|1>+a<rsub|2>+\<cdots\>+a<rsub|n>=<around*|(|a<rsub|1>+<around*|(|a<rsub|2>+<around*|(|\<cdots\>+a<rsub|n>|)>|)>|)>>

    <\enumerate-alpha>
      <item>Proof: <math|<around*|(|a<rsub|1>+\<cdots\>+a<rsub|k>|)>+a<rsub|k+1>=a<rsub|1>+\<cdots\>+a<rsub|k+1>>

      for <math|k=2>, <math|<around*|(|a<rsub|1>+a<rsub|2>|)>+a<rsub|3>=a<rsub|1>+<around*|(|a<rsub|2>+a<rsub|3>|)>>
      by associativity

      Say the rule applies for <math|k=p> then for <math|k=p+1>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|a<rsub|1>+\<cdots\>+a<rsub|p>|)>+a<rsub|p+1>>|<cell|=>|<cell|<around*|(|<around*|(|a<rsub|1>+\<cdots\>+a<rsub|p-1>|)>+a<rsub|p>|)>+a<rsub|p+1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a<rsub|1>+\<cdots\>+a<rsub|p-1>|)>+<around*|(|a<rsub|p>+a<rsub|p+1>|)>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|1>+\<cdots\>+a<rsub|p+1>>>>>
      </eqnarray*>

      <item>Proof: if <math|n\<geqslant\>k> then
      <math|<around*|(|a<rsub|1>+\<cdots\>+a<rsub|k>|)>+<around*|(|a<rsub|k+1>+\<cdots\>+a<rsub|n>|)>=a<rsub|1>+\<cdots\>+a<rsub|n>>

      for <math|k=1> then <math|a<rsub|1>+<around*|(|a<rsub|2>+\<cdots\>+a<rsub|n>|)>=a<rsub|1>+a<rsub|n>>
      by definition.

      say the rule applies for <math|k> then for <math|k+1>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|a<rsub|1>+\<cdots\>+a<rsub|k+1>|)>+<around*|(|a<rsub|k+2>+\<cdots\>+a<rsub|n>|)>>|<cell|=>|<cell|<around*|(|<around*|(|a<rsub|1>+\<cdots\>+a<rsub|k>|)>+a<rsub|k+1>|)>+<around*|(|a<rsub|k+2>+\<cdots\>+a<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a<rsub|1>+\<cdots\>+a<rsub|k>|)>+<around*|(|a<rsub|k+1>+<around*|(|a<rsub|k+2>+\<cdots\>+a<rsub|n>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a<rsub|1>+\<cdots\>+a<rsub|k>|)>+<around*|(|a<rsub|k+1>+a<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|1>+\<cdots\>+a<rsub|n>>>>>
      </eqnarray*>

      <item>Proof: Let <math|s <around*|(|a<rsub|1>,\<ldots\>,a<rsub|n>|)>>
      be some sum on <math|a>'s, then it's
      <math|><math|a<rsub|1>+\<cdots\>+a<rsub|n>.>

      For <math|n=2> <math|s <around*|(|a<rsub|1>,a<rsub|2>|)>=a<rsub|1>+a<rsub|2>>

      Let the rule applies for <math|n\<leqslant\>k>, then for <math|n=k+1>,
      the sum must consists of addition of two shorter sum. Thus for
      <math|p\<less\>k>.

      <\eqnarray*>
        <tformat|<table|<row|<cell|s <around*|(|a<rsub|1>,\<ldots\>,a<rsub|n>|)>>|<cell|=>|<cell|s<rsup|><around*|(|a<rsub|1>,\<ldots\>,a<rsub|p>|)>+s<around*|(|a<rsub|p+1>,\<ldots\>,a<rsub|k+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a<rsub|1>+a<rsub|p>|)>+<around*|(|a<rsub|p+1>+\<cdots\>+a<rsub|k<rsub|+1>>|)>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|1>+\<cdots\>+a<rsub|k+1>>>>>
      </eqnarray*>

      \;
    </enumerate-alpha>

    <item>Number 25

    P2, 3, 4, 6, 7, 8 are obvious. P1 is obvious if one of the number is 0,
    if all of them are 1 the result is 1, the same. P5 is similar with P1, P9
    (<math|a*<around*|(|b+c|)>=a*b+a*c>) is true for <math|a=0>, for
    <math|a=1>, it's also true.\ 

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