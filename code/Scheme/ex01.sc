;define: define nomes globais ou funções
;lambda: define os parâmetros das funções
(define mint (lambda (m) (/ (- (* 13 m) 1) 5)))

(define aint (lambda (a) (/ a 4)))

(define sint (lambda (s) (/ s 4)))

(define (dia-da-semana dia mes ano)
;let: faz cálculo das expressões e cria ambiente local antes de fazer cálculo do corpo
    (let (
;condição - caso verdadeira - demais casos
        (m (if (< mes 3) (+ mes 10) (- mes 2)))
        (d dia)
        (a (mod ano 100))
        (s (floor (/ ano 100)))
         )
         (let (
          (x (- (+ (mint m) (aint a) (sint s) d a) (* 2 s)))
;case: para definir dia da semana
          (case (modulo x 7)
            ((0) (diaSemana "Domingo"))
            ((1) (diaSemana "Segunda-feira"))
            ((2) (diaSemana "Terça-feira"))
            ((3) (diaSemana "Quarta-feira"))
            ((4) (diaSemana "Quinta-feira"))
            ((5) (diaSemana "Sexta-feira"))
            ((6) (diaSemana "Sábado"))
            (else (diaSemana "Dia inválido.")))
          )
          (print "Dia da semana: " diaSemana ".")
         )
    )
)
