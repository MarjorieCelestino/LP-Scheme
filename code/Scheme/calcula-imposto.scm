#lang scheme

;define cálculo do montante de cada base
;baseB 75%
(define baseB (lambda () (* (- 33919.80 22847.77) 0.075)))
;baseC 15% 
(define baseC (lambda () (* (- 45012.60 22847.77) 0.15)))
;baseD 22,5%
(define baseD (lambda () (* (- 55976.16 45012.61) 0.225)))
;define calculo do montante de acordo com a base do salário
(define calculaMontante (lambda (salario base porcentagem) (* (- salario base) porcentagem)))
;cálculo total do montante base atual e demais bases
(define calculaTotal (lambda (montante baseb basec based) (+ montante baseb basec based)))
;salario-basemenor*porcentagem
(define defineBase (lambda (salario)
                     (cond ((and (> salario 22847.76) (<= salario 33919.80))
                            (calculaTotal (calculaMontante salario 22847.77 0.075) 0 0 0 ))
                           ((and (> salario 33919.80) (<= salario 45012.60))
                            (calculaTotal (calculaMontante salario 33919.81 0.15) (baseB) 0 0))
                           ((and (> salario 45012.60) (<= salario 55976.16))
                            (calculaTotal (calculaMontante salario 45012.61 0.225) (baseB) (baseC) 0))
                           ((> salario 55976.16)
                            (calculaTotal (calculaMontante salario 55976.16 0.275) (baseB) (baseC) (baseD)))
                           (else 0))))

(define calcula-imposto (lambda (salario_anual)
                             (display "Imposto de reda: R$ ")
                             (display (defineBase salario_anual))))