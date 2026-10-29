(define (domain drone)
    (:requirements :typing :fluents)

    (:types
        location dummy_1 dummy_2 dummy_3 battery_factor - object
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
        (factor_value ?bf - battery_factor)
        (dummy_1_value ?d1 - dummy_1)
        (dummy_2_value ?d2 - dummy_2)
        (dummy_3_value ?d3 - dummy_3)
    )
    (:action increase_x
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (<= (x ) (- (max_x ) 1)))
     :effect (and
            (increase (x ) 1)
            (assign (battery-level ) (+ (* -0.00024 (* (battery-level ) (battery-level ))) (+ (* 0.02161 (* (battery-level ) (battery-level-full ))) (+ (* -0.00146 (* (battery-level-full ) (battery-level-full ))) (+ (* -0.00131 (* (max_x ) (battery-level ))) (+ (* 0.00659 (* (max_x ) (battery-level-full ))) (+ (* 0.00057 (* (max_x ) (max_x ))) (+ (* 0.01086 (* (max_x ) (max_y ))) (+ (* -0.01199 (* (max_x ) (max_z ))) (+ (* 0.0052 (* (max_y ) (battery-level ))) (+ (* 0.00586 (* (max_y ) (battery-level-full ))) (+ (* -0.00392 (* (max_y ) (max_y ))) (+ (* -0.00381 (* (max_z ) (battery-level ))) (+ (* 0.00681 (* (max_z ) (battery-level-full ))) (+ (* 0.00561 (* (max_z ) (max_z ))) (+ (* 5e-05 (* (x ) (battery-level ))) (+ (* 0.00076 (* (x ) (battery-level-full ))) (+ (* 9e-05 (* (x ) (max_z ))) (+ (* -2e-05 (* (x ) (x ))) (+ (* 7e-05 (* (x ) (z ))) (+ (* -0.00016 (* (z ) (battery-level ))) (+ (* -0.00229 (* (z ) (battery-level-full ))) (+ (* -0.00026 (* (z ) (max_z ))) (+ (* -0.0002 (* (z ) (z ))) (+ (* 2e-05 (battery-level )) (+ (* 0.00481 (battery-level-full )) (+ (* -0.00014 (max_x )) (+ (* 0.00173 (max_y )) (+ (* -0.0016 (max_z )) (+ (* 2e-05 (x )) (+ (* -7e-05 (z )) 0.25355))))))))))))))))))))))))))))))))
    )
    (:action decrease_x
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (>= (x ) (+ (min_x ) 0)))
     :effect (and
            (decrease (x ) 1)
            (decrease (battery-level ) 1))
    )
    (:action increase_y
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (<= (y ) (- (max_y ) 1)))
     :effect (and
            (increase (y ) 1)
            (assign (battery-level ) (+ (* -0.02767 (battery-level-full )) (+ (* 0.00995 (max_x )) (+ (* -0.03689 (max_y )) (+ (* 0.02694 (max_z )) 2.8862))))))
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
            (assign (battery-level ) (+ (* 1.0 (battery-level )) (+ (* -0.00748 (battery-level-full )) (+ (* -0.04186 (max_x )) (+ (* 0.04186 (max_z )) -1.15715))))))
    )
    (:action decrease_z
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (>= (z ) (+ (min_z ) 0)))
     :effect (and
            (decrease (z ) 1)
            (decrease (battery-level ) 1))
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
            (increase (battery-level ) 1))
    )
)