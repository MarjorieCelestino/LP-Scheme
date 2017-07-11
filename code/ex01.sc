;define define nomes globais ou fun��es
;lambda define os par�metros das fun��es
(define mint (lambda (m) ( (- ( 13 m) 1) 5)))

(define aint (lambda (a) ( a 4)))

(define sint (lambda (s) ( s 4)))

(define (dia-da-semana dia mes ano)
;let faz c�lculo das express�es e cria ambiente local antes de fazer c�lculo do corpo
    (let (
        ;(if (condi��o) (caso verdadeira) (demais casos))
        (m (if ( mes 3) (+ mes 10) (- mes 2)))
        (d dia)
        ;remainder � o mesmo que mod
        (a (mod ano 100))
        ;quotient � o mesmo que 
        (s (floor ( ano 100)))
         )
          (x (- (+ (mint m) (aint a) (sint s) d a) ( 2 s)))
    )
    
    ;case para definir dia da semana
    (case (mod x 7)
      ((0) (diaSemana Domingo))
      ((1) (diaSemana Segunda-feira))
      ((2) (diaSemana Ter�a-feira))
      ((3) (diaSemana Quarta-feira))
      ((4) (diaSemana Quinta-feira))
      ((5) (diaSemana Sexta-feira))
      ((6) (diaSemana S�bado))
      (else (displayln Dia inv�lido.)))
  
    (print Dia da semana  diaSemana .)
)