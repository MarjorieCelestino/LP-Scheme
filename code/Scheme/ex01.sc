;define: define nomes globais ou funções
;lambda: define os parâmetros das funções
;quotient retorna o quociente da divisão
(define mint (lambda (m) (quotient (- (* 13 m) 1) 5)))

(define aint (lambda (a) (quotient a 4)))

(define sint (lambda (s) (quotient s 4)))

(define x (lambda (d m a s) (- (+ (mint m) (aint a) (sint s) d a) (* 2 s))))

;remainder retorna o resto inteiro da divisão
(define diaSemana (lambda (x) (case (remainder x 7)
            ((0) (diaSemana "Domingo"))
            ((1) (diaSemana "Segunda-feira"))
            ((2) (diaSemana "Terça-feira"))
            ((3) (diaSemana "Quarta-feira"))
            ((4) (diaSemana "Quinta-feira"))
            ((5) (diaSemana "Sexta-feira"))
            ((6) (diaSemana "Sábado"))
            (else (diaSemana "Dia inválido.")))))

(define dia-da-semana (lambda (dia mes ano)
        (let (
              ;condição - caso_verdade - demais_casos
              (m (if (< mes 3) (+ mes 10) (- mes 2)))
              (d dia)
              (a (remainder ano 100))
              (s (quotient ano 100)) 
             )
              (x d m a s)
              (print "Dia da semana: " (diaSemana x) ".")
        )        
    )
)
