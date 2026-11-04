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
            (assign (battery-level ) (+ (* 0.00954 (* (battery-level ) (battery-level-full ))) (+ (* -0.05132 (* (battery-level ) (battery_factor ))) (+ (* 9e-05 (* (battery-level-full ) (battery-level-full ))) (+ (* -0.05757 (* (battery-level-full ) (battery_factor ))) (+ (* 0.03107 (* (battery_factor ) (battery_factor ))) (+ (* 0.19684 (* (max_x ) (battery-level ))) (+ (* -0.01179 (* (max_x ) (battery-level-full ))) (+ (* -0.03172 (* (max_x ) (battery_factor ))) (+ (* -0.06416 (* (max_x ) (max_x ))) (+ (* -0.02655 (* (max_x ) (max_y ))) (+ (* 0.01517 (* (max_x ) (max_z ))) (+ (* 0.16981 (* (max_y ) (battery-level ))) (+ (* -0.02017 (* (max_y ) (battery-level-full ))) (+ (* -0.00854 (* (max_y ) (battery_factor ))) (+ (* 0.04866 (* (max_y ) (max_y ))) (+ (* 0.03468 (* (max_y ) (max_z ))) (+ (* 0.11696 (* (max_z ) (battery-level ))) (+ (* -0.00326 (* (max_z ) (battery-level-full ))) (+ (* -0.0678 (* (max_z ) (battery_factor ))) (+ (* -0.03109 (* (max_z ) (max_z ))) (+ (* 0.01431 (* (y ) (battery-level ))) (+ (* -0.0032 (* (y ) (battery-level-full ))) (+ (* -0.00034 (* (y ) (battery_factor ))) (+ (* -9e-05 (* (y ) (max_x ))) (+ (* -0.00027 (* (y ) (max_y ))) (+ (* -0.01914 (* (y ) (y ))) (+ (* 0.1209 (battery-level )) (+ (* -0.00881 (battery-level-full )) (+ (* -0.02701 (battery_factor )) (+ (* -0.01889 (max_x )) (+ (* 0.0142 (max_y )) (+ (* 0.00469 (max_z )) (+ (* -9e-05 (y )) 1.72308)))))))))))))))))))))))))))))))))))
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
            (assign (battery-level ) (+ (* 0.0056 (* (battery-level ) (battery-level-full ))) (+ (* 0.04952 (* (battery-level ) (battery_factor ))) (+ (* -0.00339 (* (battery-level-full ) (battery-level-full ))) (+ (* -0.085 (* (battery-level-full ) (battery_factor ))) (+ (* 0.0158 (* (battery_factor ) (battery_factor ))) (+ (* 0.07698 (* (max_x ) (battery-level ))) (+ (* 0.06571 (* (max_x ) (battery-level-full ))) (+ (* 0.02606 (* (max_x ) (battery_factor ))) (+ (* -0.00522 (* (max_x ) (max_x ))) (+ (* 0.03632 (* (max_x ) (max_y ))) (+ (* -0.03719 (* (max_x ) (max_z ))) (+ (* 0.1552 (* (max_y ) (battery-level ))) (+ (* 0.06948 (* (max_y ) (battery-level-full ))) (+ (* 0.0058 (* (max_y ) (battery_factor ))) (+ (* -0.06273 (* (max_y ) (max_y ))) (+ (* 0.01679 (* (max_y ) (max_z ))) (+ (* 0.08106 (* (max_z ) (battery-level ))) (+ (* 0.06494 (* (max_z ) (battery-level-full ))) (+ (* 0.01226 (* (max_z ) (battery_factor ))) (+ (* 0.03611 (* (max_z ) (max_z ))) (+ (* 0.02224 (* (x ) (battery-level ))) (+ (* -0.01423 (* (x ) (battery-level-full ))) (+ (* 0.00058 (* (x ) (battery_factor ))) (+ (* -0.00252 (* (x ) (max_x ))) (+ (* 0.00169 (* (x ) (max_y ))) (+ (* -0.00185 (* (x ) (max_z ))) (+ (* -0.00067 (* (x ) (x ))) (+ (* 0.00236 (* (x ) (y ))) (+ (* -0.00048 (* (y ) (battery-level-full ))) (+ (* 0.02717 (* (y ) (battery_factor ))) (+ (* 0.02271 (* (y ) (max_x ))) (+ (* -0.03449 (* (y ) (max_y ))) (+ (* 0.07831 (battery-level )) (+ (* 0.05003 (battery-level-full )) (+ (* 0.01103 (battery_factor )) (+ (* -0.00152 (max_x )) (+ (* -0.0024 (max_y )) (+ (* 0.00393 (max_z )) (+ (* -0.00067 (x )) (+ (* -0.00295 (y )) -4.4763))))))))))))))))))))))))))))))))))))))))))
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
            (assign (battery-level ) (+ (* 0.01614 (* (battery-level ) (battery-level-full ))) (+ (* 0.00012 (* (battery-level ) (battery_factor ))) (+ (* -0.00248 (* (battery-level-full ) (battery-level-full ))) (+ (* -0.07427 (* (battery-level-full ) (battery_factor ))) (+ (* 0.04812 (* (battery_factor ) (battery_factor ))) (+ (* 0.09059 (* (max_x ) (battery-level ))) (+ (* 0.03783 (* (max_x ) (battery-level-full ))) (+ (* 0.00659 (* (max_x ) (battery_factor ))) (+ (* -0.03525 (* (max_x ) (max_x ))) (+ (* 0.00585 (* (max_x ) (max_z ))) (+ (* 0.05176 (* (max_y ) (battery-level ))) (+ (* 0.04469 (* (max_y ) (battery-level-full ))) (+ (* -0.04095 (* (max_y ) (battery_factor ))) (+ (* 0.05614 (* (max_y ) (max_y ))) (+ (* -0.05099 (* (max_y ) (max_z ))) (+ (* 0.0404 (* (max_z ) (battery-level ))) (+ (* 0.03017 (* (max_z ) (battery-level-full ))) (+ (* 0.05539 (* (max_z ) (battery_factor ))) (+ (* 0.06939 (* (max_z ) (max_z ))) (+ (* 0.04569 (battery-level )) (+ (* 0.02817 (battery-level-full )) (+ (* 0.00526 (battery_factor )) (+ (* -0.00735 (max_x )) (+ (* 0.00129 (max_y )) (+ (* 0.00606 (max_z )) -1.75672)))))))))))))))))))))))))))
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