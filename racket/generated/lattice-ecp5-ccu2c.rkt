#lang racket/base
(provide lattice-ecp5-ccu2c)
(require "../signal.rkt")
(require rosette)
(define lattice-ecp5-ccu2c
  (λ (#:A0
      (A0 (bv->signal (constant 'A0 (bitvector 1))))
      #:A1
      (A1 (bv->signal (constant 'A1 (bitvector 1))))
      #:B0
      (B0 (bv->signal (constant 'B0 (bitvector 1))))
      #:B1
      (B1 (bv->signal (constant 'B1 (bitvector 1))))
      #:C0
      (C0 (bv->signal (constant 'C0 (bitvector 1))))
      #:C1
      (C1 (bv->signal (constant 'C1 (bitvector 1))))
      #:CIN
      (CIN (bv->signal (constant 'CIN (bitvector 1))))
      #:D0
      (D0 (bv->signal (constant 'D0 (bitvector 1))))
      #:D1
      (D1 (bv->signal (constant 'D1 (bitvector 1))))
      #:INIT0
      (INIT0 (bv->signal (constant 'INIT0 (bitvector 16))))
      #:INIT1
      (INIT1 (bv->signal (constant 'INIT1 (bitvector 16))))
      #:INJECT1_0
      (INJECT1_0 (bv->signal (constant 'INJECT1_0 (bitvector 1))))
      #:INJECT1_1
      (INJECT1_1 (bv->signal (constant 'INJECT1_1 (bitvector 1))))
      #:name
      (name ""))
    (let* ((merged-input-state-hash (list))
           (init-hash (list))
           (btor1 (bitvector 1))
           (btor2 A0)
           (merged-input-state-hash
            (merge-states merged-input-state-hash (signal-state A0)))
           (btor3 A1)
           (merged-input-state-hash
            (merge-states merged-input-state-hash (signal-state A1)))
           (btor4 B0)
           (merged-input-state-hash
            (merge-states merged-input-state-hash (signal-state B0)))
           (btor5 B1)
           (merged-input-state-hash
            (merge-states merged-input-state-hash (signal-state B1)))
           (btor6 C0)
           (merged-input-state-hash
            (merge-states merged-input-state-hash (signal-state C0)))
           (btor7 C1)
           (merged-input-state-hash
            (merge-states merged-input-state-hash (signal-state C1)))
           (btor8 CIN)
           (merged-input-state-hash
            (merge-states merged-input-state-hash (signal-state CIN)))
           (btor9 D0)
           (merged-input-state-hash
            (merge-states merged-input-state-hash (signal-state D0)))
           (btor10 D1)
           (merged-input-state-hash
            (merge-states merged-input-state-hash (signal-state D1)))
           (btor11 (bitvector 16))
           (btor12 INIT0)
           (merged-input-state-hash
            (merge-states merged-input-state-hash (signal-state INIT0)))
           (btor13 INIT1)
           (merged-input-state-hash
            (merge-states merged-input-state-hash (signal-state INIT1)))
           (btor14 INJECT1_0)
           (merged-input-state-hash
            (merge-states merged-input-state-hash (signal-state INJECT1_0)))
           (btor15 INJECT1_1)
           (merged-input-state-hash
            (merge-states merged-input-state-hash (signal-state INJECT1_1)))
           (btor16 (bitvector 8))
           (btor17
            (signal (extract 7 0 (signal-value btor13)) (signal-state btor13)))
           (btor18
            (signal
             (extract 15 8 (signal-value btor13))
             (signal-state btor13)))
           (btor19 (if (bitvector->bool (signal-value btor10)) btor18 btor17))
           (btor20 (bitvector 4))
           (btor21
            (signal (extract 3 0 (signal-value btor19)) (signal-state btor19)))
           (btor22
            (signal (extract 7 4 (signal-value btor19)) (signal-state btor19)))
           (btor23 (if (bitvector->bool (signal-value btor7)) btor22 btor21))
           (btor24 (bitvector 2))
           (btor25
            (signal (extract 1 0 (signal-value btor23)) (signal-state btor23)))
           (btor26
            (signal (extract 3 2 (signal-value btor23)) (signal-state btor23)))
           (btor27 (if (bitvector->bool (signal-value btor5)) btor26 btor25))
           (btor28
            (signal (extract 0 0 (signal-value btor27)) (signal-state btor27)))
           (btor29
            (signal (extract 1 1 (signal-value btor27)) (signal-state btor27)))
           (btor30 (if (bitvector->bool (signal-value btor3)) btor29 btor28))
           (btor31 (signal (bvnot (signal-value btor30)) (list)))
           (btor32
            (signal (extract 1 0 (signal-value btor13)) (signal-state btor13)))
           (btor33
            (signal (extract 3 2 (signal-value btor13)) (signal-state btor13)))
           (btor34 (if (bitvector->bool (signal-value btor5)) btor33 btor32))
           (btor35
            (signal (extract 0 0 (signal-value btor34)) (signal-state btor34)))
           (btor36
            (signal (extract 1 1 (signal-value btor34)) (signal-state btor34)))
           (btor37 (if (bitvector->bool (signal-value btor3)) btor36 btor35))
           (btor38 (bv->signal (bv 0 (bitvector 1))))
           (btor39 (if (bitvector->bool (signal-value btor15)) btor38 btor37))
           (btor40
            (signal
             (bvand (signal-value btor31) (signal-value btor39))
             (list)))
           (btor41
            (signal (extract 7 0 (signal-value btor12)) (signal-state btor12)))
           (btor42
            (signal
             (extract 15 8 (signal-value btor12))
             (signal-state btor12)))
           (btor43 (if (bitvector->bool (signal-value btor9)) btor42 btor41))
           (btor44
            (signal (extract 3 0 (signal-value btor43)) (signal-state btor43)))
           (btor45
            (signal (extract 7 4 (signal-value btor43)) (signal-state btor43)))
           (btor46 (if (bitvector->bool (signal-value btor6)) btor45 btor44))
           (btor47
            (signal (extract 1 0 (signal-value btor46)) (signal-state btor46)))
           (btor48
            (signal (extract 3 2 (signal-value btor46)) (signal-state btor46)))
           (btor49 (if (bitvector->bool (signal-value btor4)) btor48 btor47))
           (btor50
            (signal (extract 0 0 (signal-value btor49)) (signal-state btor49)))
           (btor51
            (signal (extract 1 1 (signal-value btor49)) (signal-state btor49)))
           (btor52 (if (bitvector->bool (signal-value btor2)) btor51 btor50))
           (btor53 (signal (bvnot (signal-value btor52)) (list)))
           (btor54
            (signal (extract 1 0 (signal-value btor12)) (signal-state btor12)))
           (btor55
            (signal (extract 3 2 (signal-value btor12)) (signal-state btor12)))
           (btor56 (if (bitvector->bool (signal-value btor4)) btor55 btor54))
           (btor57
            (signal (extract 0 0 (signal-value btor56)) (signal-state btor56)))
           (btor58
            (signal (extract 1 1 (signal-value btor56)) (signal-state btor56)))
           (btor59 (if (bitvector->bool (signal-value btor2)) btor58 btor57))
           (btor60 (if (bitvector->bool (signal-value btor14)) btor38 btor59))
           (btor61
            (signal
             (bvand (signal-value btor53) (signal-value btor60))
             (list)))
           (btor62
            (signal (bvand (signal-value btor52) (signal-value btor8)) (list)))
           (btor63
            (signal (bvor (signal-value btor61) (signal-value btor62)) (list)))
           (btor64
            (signal
             (bvand (signal-value btor30) (signal-value btor63))
             (list)))
           (btor65
            (signal (bvor (signal-value btor40) (signal-value btor64)) (list)))
           (btor67 (if (bitvector->bool (signal-value btor14)) btor38 btor8))
           (btor68
            (signal
             (bvxor (signal-value btor52) (signal-value btor67))
             (list)))
           (btor70 (if (bitvector->bool (signal-value btor15)) btor38 btor63))
           (btor71
            (signal
             (bvxor (signal-value btor30) (signal-value btor70))
             (list)))
           (btor73
            (bv->signal
             (zero-extend (signal-value btor59) (bitvector 1))
             btor59))
           (btor74
            (bv->signal
             (zero-extend (signal-value btor37) (bitvector 1))
             btor37))
           (btor75
            (bv->signal
             (zero-extend (signal-value btor52) (bitvector 1))
             btor52))
           (btor76
            (bv->signal
             (zero-extend (signal-value btor30) (bitvector 1))
             btor30))
           (btor77
            (bv->signal
             (zero-extend (signal-value btor63) (bitvector 1))
             btor63))
           (btor78
            (bv->signal
             (zero-extend (signal-value btor67) (bitvector 1))
             btor67))
           (btor79
            (bv->signal
             (zero-extend (signal-value btor70) (bitvector 1))
             btor70))
           (btor80
            (bv->signal
             (zero-extend (signal-value btor60) (bitvector 1))
             btor60))
           (btor81
            (bv->signal
             (zero-extend (signal-value btor39) (bitvector 1))
             btor39))
           (btor82
            (bv->signal
             (zero-extend (signal-value btor2) (bitvector 1))
             btor2))
           (btor83
            (bv->signal
             (zero-extend (signal-value btor4) (bitvector 1))
             btor4))
           (btor84
            (bv->signal
             (zero-extend (signal-value btor59) (bitvector 1))
             btor59))
           (btor85
            (signal (extract 3 0 (signal-value btor12)) (signal-state btor12)))
           (btor86
            (bv->signal
             (zero-extend (signal-value btor85) (bitvector 4))
             btor85))
           (btor87
            (bv->signal
             (zero-extend (signal-value btor56) (bitvector 2))
             btor56))
           (btor88
            (bv->signal
             (zero-extend (signal-value btor3) (bitvector 1))
             btor3))
           (btor89
            (bv->signal
             (zero-extend (signal-value btor5) (bitvector 1))
             btor5))
           (btor90
            (bv->signal
             (zero-extend (signal-value btor37) (bitvector 1))
             btor37))
           (btor91
            (signal (extract 3 0 (signal-value btor13)) (signal-state btor13)))
           (btor92
            (bv->signal
             (zero-extend (signal-value btor91) (bitvector 4))
             btor91))
           (btor93
            (bv->signal
             (zero-extend (signal-value btor34) (bitvector 2))
             btor34))
           (btor94
            (bv->signal
             (zero-extend (signal-value btor2) (bitvector 1))
             btor2))
           (btor95
            (bv->signal
             (zero-extend (signal-value btor4) (bitvector 1))
             btor4))
           (btor96
            (bv->signal
             (zero-extend (signal-value btor6) (bitvector 1))
             btor6))
           (btor97
            (bv->signal
             (zero-extend (signal-value btor9) (bitvector 1))
             btor9))
           (btor98
            (bv->signal
             (zero-extend (signal-value btor52) (bitvector 1))
             btor52))
           (btor99
            (bv->signal
             (zero-extend (signal-value btor12) (bitvector 16))
             btor12))
           (btor100
            (bv->signal
             (zero-extend (signal-value btor49) (bitvector 2))
             btor49))
           (btor101
            (bv->signal
             (zero-extend (signal-value btor46) (bitvector 4))
             btor46))
           (btor102
            (bv->signal
             (zero-extend (signal-value btor43) (bitvector 8))
             btor43))
           (btor103
            (bv->signal
             (zero-extend (signal-value btor3) (bitvector 1))
             btor3))
           (btor104
            (bv->signal
             (zero-extend (signal-value btor5) (bitvector 1))
             btor5))
           (btor105
            (bv->signal
             (zero-extend (signal-value btor7) (bitvector 1))
             btor7))
           (btor106
            (bv->signal
             (zero-extend (signal-value btor10) (bitvector 1))
             btor10))
           (btor107
            (bv->signal
             (zero-extend (signal-value btor30) (bitvector 1))
             btor30))
           (btor108
            (bv->signal
             (zero-extend (signal-value btor13) (bitvector 16))
             btor13))
           (btor109
            (bv->signal
             (zero-extend (signal-value btor27) (bitvector 2))
             btor27))
           (btor110
            (bv->signal
             (zero-extend (signal-value btor23) (bitvector 4))
             btor23))
           (btor111
            (bv->signal
             (zero-extend (signal-value btor19) (bitvector 8))
             btor19))
           (output-state
            (remove-duplicates
             (append (list) merged-input-state-hash)
             equal?
             #:key
             car)))
      (list
       (cons 'COUT (signal (signal-value btor65) output-state))
       (cons 'S0 (signal (signal-value btor68) output-state))
       (cons 'S1 (signal (signal-value btor71) output-state))))))
