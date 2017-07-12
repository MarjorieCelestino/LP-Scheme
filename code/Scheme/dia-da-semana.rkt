#lang scheme

;define: define nomes globais ou funções
;lambda: define os parâmetros das funções
;quotient retorna o quociente da divisão
(define mint (lambda (m) (quotient (- (* 13 m) 1) 5)))

(define aint (lambda (a) (quotient a 4)))

(define sint (lambda (s) (quotient s 4)))

;if: condição - caso_verdadeira - demais_casos
(define calculoMes (lambda (mes) (if (< mes 3) (+ mes 10) (- mes 2))))

;modulo: retorna resto da divisão
(define calculoAno (lambda (ano) (modulo ano 100)))

(define calculoSeculo (lambda (ano) (quotient ano 100)))

(define x (lambda (d m a s) (- (+ (mint m) (aint a) (sint s) d a) (* 2 s))))

(define diaSemana (lambda (x) (case (modulo x 7)
            ((0) "O dia da semana é: 0 - Domingo")
            ((1) "O dia da semana é: 1 - Segunda-feira")
            ((2) "O dia da semana é: 2 - Terça-feira")
            ((3) "O dia da semana é: 3 - Quarta-feira")
            ((4) "O dia da semana é: 4 - Quinta-feira")
            ((5) "O dia da semana é: 5 - Sexta-feira")
            ((6) "O dia da semana é: 6 - Sábado")
            (else "Dia inválido."))))
          

(define dia-da-semana (lambda (dia mes ano)
         (display (diaSemana (x dia (calculoMes mes) (calculoAno ano) (calculoSeculo ano))))
    )
)

