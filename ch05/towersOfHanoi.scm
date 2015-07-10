;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; $mit-scheme --load towersOfHanoi.scm
;;; (moveTower 3 'a' 'b' 'c') => 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (moveTower n start finish temp)
  (cond ((< n 2)
         (display start) (display " -> ") (display finish) (newline)
        )
        (else
         (moveTower (- n 1) start temp finish)
         (display start) (display " -> ") (display finish) (newline)
         (moveTower (- n 1) temp finish start)
        ))
  'ok)
)

(movetower 3 (string #\A) (string #\B) (string #\C))



