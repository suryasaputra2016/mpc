<TeXmacs|2.1.1>

<style|<tuple|article|padded-paragraphs>>

<\body>
  <doc-data|<doc-title|Data>|<doc-author|<author-data|<author-name|Surya
  Saputra>>>>

  <section|Introduction>

  We can form compound data from simple ones. It can be used to separate how
  data is represented and how we deal with it. This is called data
  abstraction. We can increase expresiveness of our data and define general
  procedure that can be applied to many types of data.\ 

  <subsection|Rational numbers>

  Let say we have a way to construct rational numbers from numerator and
  denominator, also a way to extract the two from rational numbers, i.e. we
  have constructor and selector.

  <\scm-code>
    <\render-code>
      (make-rat \<less\>n\<gtr\> \<less\>d\<gtr\>)

      (numer x)

      (denom x)
    </render-code>
  </scm-code>

  We haven't actually have them, it's called wishful thinking. But if we
  have, we can define arithmetic operations and equality test for rational
  numbers.

  <\scm-code>
    (define (add-rat x y)

    \ \ (make-rat (+ (* (numer x) (denom y))\ 

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (* (numer y) (denom x)))

    \ \ \ \ \ \ \ \ \ \ \ \ (* (denom x) (denom y))))

    (define (sub-rat x y)

    \ \ (make-rat (- (* (numer x) (denom y))\ 

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (* (numer y) (denom x)))

    \ \ \ \ \ \ \ \ \ \ \ \ (* (denom x) (denom y))))

    (define (mul-rat x y)

    \ \ (make-rat (* (numer x) (numer y))

    \ \ \ \ \ \ \ \ \ \ \ \ (* (denom x) (denom y))))

    (define (div-rat x y)

    \ \ (make-rat (* (numer x) (denom y))

    \ \ \ \ \ \ \ \ \ \ \ \ (* (denom x) (numer y))))

    (define (equal-rat? x y)

    \ \ (= (* (numer x) (denom y))

    \ \ \ \ \ (* (numer y) (denom x))))
  </scm-code>

  Now let's define the constructor and selector using Scheme's pair that is
  <scm|cons> for constructor and <scm|car> and <scm|cdr> for the first and
  second element selector.

  <\scm-code>
    (define x (cons 1 2))

    (car x)

    (cdr x)
  </scm-code>

  A pair can contains a pair.\ 

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
    <associate|auto-2|<tuple|1.1|?>>
  </collection>
</references>