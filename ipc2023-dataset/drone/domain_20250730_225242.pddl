(define (domain domain_name)
    (:requirements :typing :fluents)

    (:types
        location - object
    )

    (:predicates
        (visited ?x - location)
    )
    (:functions
        (x)
        (y)
        (z)
        (xl ?l - location)
        (yl ?l - location)
        (zl ?l - location)
        (battery-level)
        (battery-level-full)
        (min_x)
        (max_x)
        (min_y)
        (max_y)
        (min_z)
        (max_z)
    )
    (:action increase_x
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (<= (x ) (- (max_x ) 1)))
     :effect (and
            (increase (x ) 1)
            (decrease (battery-level ) 1))
    )
    (:action decrease_x
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (>= (x ) (+ (min_x ) 0)))
     :effect (and
            (decrease (x ) 1)
            (decrease (battery-level ) 1)
            (assign (y ) (+ (* -0.02561 (* (battery-level ) (battery-level ))) (+ (* 0.01321 (* (battery-level ) (battery-level-full ))) (+ (* -0.0001 (* (battery-level-full ) (battery-level-full ))) (+ (* 0.00889 (* (max_x ) (battery-level ))) (+ (* -0.01309 (* (max_x ) (battery-level-full ))) (+ (* -0.00279 (* (max_x ) (max_x ))) (+ (* 0.0011 (* (max_x ) (max_y ))) (+ (* -0.00135 (* (max_x ) (max_z ))) (+ (* -0.01223 (* (max_y ) (battery-level ))) (+ (* 0.02007 (* (max_y ) (battery-level-full ))) (+ (* 0.00499 (* (max_y ) (max_y ))) (+ (* -0.00081 (* (max_y ) (max_z ))) (+ (* 0.03112 (* (max_z ) (battery-level ))) (+ (* -0.00649 (* (max_z ) (battery-level-full ))) (+ (* -8e-05 (* (max_z ) (max_z ))) (+ (* -0.00185 (* (x ) (battery-level ))) (+ (* -0.00086 (* (x ) (battery-level-full ))) (+ (* 0.01295 (* (x ) (max_x ))) (+ (* -0.02156 (* (x ) (max_y ))) (+ (* 0.03316 (* (x ) (max_z ))) (+ (* 0.02141 (* (x ) (x ))) (+ (* 0.00559 (* (x ) (y ))) (+ (* -0.00052 (* (x ) (z ))) (+ (* 0.00568 (* (y ) (battery-level ))) (+ (* 0.0561 (* (y ) (battery-level-full ))) (+ (* 0.01788 (* (y ) (max_x ))) (+ (* -0.01241 (* (y ) (max_y ))) (+ (* 0.03473 (* (y ) (max_z ))) (+ (* -0.00521 (* (y ) (y ))) (+ (* -0.00081 (* (y ) (z ))) (+ (* -0.00423 (* (z ) (battery-level ))) (+ (* -0.00625 (* (z ) (battery-level-full ))) (+ (* 0.00029 (* (z ) (max_x ))) (+ (* -0.00263 (* (z ) (max_y ))) (+ (* 0.00026 (* (z ) (max_z ))) (+ (* -0.00104 (* (z ) (z ))) (+ (* 0.00694 (battery-level )) (+ (* 0.00012 (battery-level-full )) (+ (* -0.00076 (max_x )) (+ (* 0.00132 (max_y )) (+ (* -0.00056 (max_z )) (+ (* 0.00614 (x )) (+ (* 0.01005 (y )) (+ (* -0.00052 (z )) -1.20858))))))))))))))))))))))))))))))))))))))))))))))
    )
    (:action increase_y
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (<= (y ) (- (max_y ) 1)))
     :effect (and
            (increase (y ) 1)
            (decrease (battery-level ) 1))
    )
    (:action decrease_y
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (>= (y ) (+ (min_y ) 0)))
     :effect (and
            (decrease (y ) 1)
            (decrease (battery-level ) 1))
    )
    (:action increase_z
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (<= (z ) (- (max_z ) 1)))
     :effect (and
            (increase (z ) 1)
            (decrease (battery-level ) 1))
    )
    (:action decrease_z
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (>= (z ) (+ (min_z ) 0)))
     :effect (and
            (decrease (z ) 1)
            (decrease (battery-level ) 1)
            (assign (x ) (+ (* 0.00235 (* (battery-level ) (battery-level ))) (+ (* -0.00175 (* (battery-level ) (battery-level-full ))) (+ (* 0.0002 (* (battery-level-full ) (battery-level-full ))) (+ (* 0.00377 (* (max_x ) (battery-level ))) (+ (* -3e-05 (* (max_x ) (battery-level-full ))) (+ (* 0.00404 (* (max_x ) (max_x ))) (+ (* -0.00398 (* (max_x ) (max_y ))) (+ (* 0.00101 (* (max_x ) (max_z ))) (+ (* 0.00518 (* (max_y ) (battery-level ))) (+ (* 0.0002 (* (max_y ) (battery-level-full ))) (+ (* -0.00202 (* (max_y ) (max_y ))) (+ (* 0.00565 (* (max_y ) (max_z ))) (+ (* -0.00256 (* (max_z ) (battery-level ))) (+ (* -0.00149 (* (max_z ) (battery-level-full ))) (+ (* -0.00738 (* (max_z ) (max_z ))) (+ (* 0.01039 (* (x ) (battery-level ))) (+ (* 0.06482 (* (x ) (battery-level-full ))) (+ (* 0.02528 (* (x ) (max_x ))) (+ (* -0.0145 (* (x ) (max_y ))) (+ (* 0.01591 (* (x ) (max_z ))) (+ (* -0.00432 (* (x ) (x ))) (+ (* -0.00743 (* (x ) (y ))) (+ (* -0.00383 (* (x ) (z ))) (+ (* -0.01212 (* (y ) (battery-level ))) (+ (* 0.00683 (* (y ) (battery-level-full ))) (+ (* 0.00596 (* (y ) (max_x ))) (+ (* 0.00184 (* (y ) (max_y ))) (+ (* -0.00678 (* (y ) (max_z ))) (+ (* -0.00025 (* (y ) (y ))) (+ (* -0.01069 (* (y ) (z ))) (+ (* 0.00712 (* (z ) (battery-level ))) (+ (* 0.0042 (* (z ) (battery-level-full ))) (+ (* 0.01122 (* (z ) (max_x ))) (+ (* -0.01242 (* (z ) (max_y ))) (+ (* 0.0079 (* (z ) (max_z ))) (+ (* -0.0117 (* (z ) (z ))) (+ (* 0.0016 (battery-level )) (+ (* -0.00033 (battery-level-full )) (+ (* 0.00027 (max_x )) (+ (* -9e-05 (max_y )) (+ (* -0.00018 (max_z )) (+ (* 0.00667 (x )) (+ (* 0.00025 (y )) (+ (* 0.00167 (z )) -1.04067))))))))))))))))))))))))))))))))))))))))))))))
    )
    (:action visit
     :parameters (?l - location)
     :precondition (and
            (>= (battery-level ) 1)
            (= (xl ?l) (x ))
            (= (yl ?l) (y ))
            (= (zl ?l) (z )))
     :effect (and
            (visited ?l)
            (decrease (battery-level ) 1))
    )
    (:action recharge
     :parameters ()
     :precondition (and
            (= (x ) 0)
            (= (y ) 0)
            (= (z ) 0))
     :effect (and
            (assign (battery-level ) (battery-level-full )))
    )
)