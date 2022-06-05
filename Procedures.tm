<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Procedures>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <section|Elements of programming>

  Programs are pattern or rules that direct computational process which in
  turns manipulates data.

  Three mechanism of powerful programming language are as follows.

  <\enumerate-numeric>
    <item>primitive expression, the simplest elements

    <item>combination, building compound elements from simpler ones

    <item>abstraction, naming compound elements and treating them as
    primitives
  </enumerate-numeric>

  Here elements are either procedures or data.

  <subsection|Expression>

  One type of interaction between programming and computer is called REPL
  (read-eval-print-loop), where programmer types the prorgram and the
  computer read, evaluate and print the result.

  One type of primitive expression is numbers

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      <\scm-code>
        254
      </scm-code>
    <|unfolded-io>
      254
    </unfolded-io>
  </session>

  Numbers include integers <scm|254>, rationals <scm|2/3>, decimals
  <scm|3.22>, and complex <scm|2+3i>.

  Another type of expression is combinaation, combining numbers with
  operator, here the numbers act as the operands.

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (* 24 36)
    <|unfolded-io>
      864
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (+ 3 17 4 6)
    <|unfolded-io>
      30
    </unfolded-io>
  </session>

  Operators include addition <scm|+>, subtraction <scm|->, multiplication
  <scm|*>, and division <scm|/>. In Scheme, combination is in prefix notation
  written inside parenthesis.

  Combination can be nested and printed in pretty-printing as follows.

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (+ (* 3 4)

      \ \ \ (- 5

      \ \ \ \ \ \ (/ 6 2))).
    <|unfolded-io>
      14
    </unfolded-io>
  </session>

  <subsection|Naming and Environment>

  Another expression is naming, declaring variable whose value is the object.

  <\session|scheme|default>
    <\input|Scheme] >
      (define length 5)
    </input>

    <\unfolded-io|Scheme] >
      length
    <|unfolded-io>
      5
    </unfolded-io>

    <\input|Scheme] >
      (define area (* length length))
    </input>

    <\unfolded-io|Scheme] >
      area
    <|unfolded-io>
      25
    </unfolded-io>
  </session>

  Naming is the first step in abstraction because we can call the result of
  compound operation.

  Relation of names and the object they refer to stored in the global
  environment.

  <subsection|Evaluation of combinationns>

  Evaluation of cobinations is performed in the following steps

  <\enumerate-numeric>
    <item>evaluate the subexpressions in the comobination

    <item>apply the procedure (operation) to the arguments (operands)
  </enumerate-numeric>

  Observe that the rule is recursive, it calls itself in step number one. But
  repeated application will bring us pass the combinations to primitives such
  as numeral built-in operators, or other names.

  Evaluation for primitive case

  <\enumerate>
    <item>numerals are the numbers that they show

    <item>built -in operators are machine instruction for each operation

    <item>names are object associated with the names in the environment
  </enumerate>

  If we regard operations such as <scm|+> as name in global environment, we
  can say that rule 2 is a special case of rule 3.

  The definition above doesn't include <scm|define> becaouse it's one of the
  special forms that has its own rule and determin the sybtax of the
  language.

  <subsection|Compound procedures>

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
    <associate|auto-1|<tuple|1|1|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_5.tm>>
    <associate|auto-2|<tuple|1.1|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_5.tm>>
    <associate|auto-3|<tuple|1.2|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_5.tm>>
    <associate|auto-4|<tuple|1.3|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_5.tm>>
    <associate|auto-5|<tuple|1.4|?|..\\..\\Users\\Surya
    Saputra\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_5.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Elements
      of programming> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>