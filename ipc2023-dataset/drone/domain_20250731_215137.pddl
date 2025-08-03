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
        (battery_factor)
    )
    (:action increase_x
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (<= (x ) (- (max_x ) 1)))
     :effect (and
            (increase (x ) 1)
            (assign (battery-level ) (+ (* -0.1 (* (battery_factor ) (battery_factor ))) (+ (* 0.21053 (* (max_x ) (battery-level ))) (+ (* 0.21053 (* (max_y ) (battery-level ))) (+ (* 0.21053 (* (max_z ) (battery-level ))) (+ (* 0.15789 (battery-level )) -0.5)))))))
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
            (assign (battery-level ) (+ (* -0.00061 (* (battery-level-full ) (battery-level-full ))) (+ (* 0.00119 (* (battery-level-full ) (battery_factor ))) (+ (* -0.09751 (* (battery_factor ) (battery_factor ))) (+ (* 0.21053 (* (max_x ) (battery-level ))) (+ (* 0.00439 (* (max_x ) (battery-level-full ))) (+ (* -0.00615 (* (max_x ) (battery_factor ))) (+ (* -0.00163 (* (max_x ) (max_x ))) (+ (* -0.00249 (* (max_x ) (max_y ))) (+ (* -0.00264 (* (max_x ) (max_z ))) (+ (* 0.21053 (* (max_y ) (battery-level ))) (+ (* 0.00271 (* (max_y ) (battery-level-full ))) (+ (* -0.00704 (* (max_y ) (battery_factor ))) (+ (* 0.00251 (* (max_y ) (max_y ))) (+ (* 0.00401 (* (max_y ) (max_z ))) (+ (* 0.21053 (* (max_z ) (battery-level ))) (+ (* 0.00299 (* (max_z ) (battery-level-full ))) (+ (* -0.0065 (* (max_z ) (battery_factor ))) (+ (* 0.00134 (* (max_z ) (max_z ))) (+ (* 0.00011 (* (x ) (z ))) (+ (* -2e-05 (* (z ) (battery-level-full ))) (+ (* -0.00046 (* (z ) (battery_factor ))) (+ (* -0.00049 (* (z ) (max_x ))) (+ (* 0.00053 (* (z ) (max_y ))) (+ (* -3e-05 (* (z ) (max_z ))) (+ (* 0.00063 (* (z ) (z ))) (+ (* 0.15789 (battery-level )) (+ (* 0.00252 (battery-level-full )) (+ (* -0.00492 (battery_factor )) (+ (* -0.00169 (max_x )) (+ (* 0.00101 (max_y )) (+ (* 0.00068 (max_z )) -0.58546)))))))))))))))))))))))))))))))))
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
            (assign (battery-level ) (+ (* 0.00048 (* (battery-level ) (battery-level-full ))) (+ (* -0.00128 (* (battery-level ) (battery_factor ))) (+ (* -0.00056 (* (battery-level-full ) (battery-level-full ))) (+ (* 0.00398 (* (battery-level-full ) (battery_factor ))) (+ (* -0.09909 (* (battery_factor ) (battery_factor ))) (+ (* 0.21044 (* (max_x ) (battery-level ))) (+ (* -0.00202 (* (max_x ) (battery-level-full ))) (+ (* -0.0085 (* (max_x ) (battery_factor ))) (+ (* 0.00262 (* (max_x ) (max_x ))) (+ (* 0.00117 (* (max_x ) (max_y ))) (+ (* 0.00362 (* (max_x ) (max_z ))) (+ (* 0.20584 (* (max_y ) (battery-level ))) (+ (* 0.0051 (* (max_y ) (battery-level-full ))) (+ (* -0.00763 (* (max_y ) (battery_factor ))) (+ (* -0.00508 (* (max_y ) (max_y ))) (+ (* -0.00541 (* (max_y ) (max_z ))) (+ (* 0.21043 (* (max_z ) (battery-level ))) (+ (* -0.00217 (* (max_z ) (battery-level-full ))) (+ (* -0.00861 (* (max_z ) (battery_factor ))) (+ (* 0.0037 (* (max_z ) (max_z ))) (+ (* 0.00329 (* (x ) (battery-level-full ))) (+ (* -0.00585 (* (x ) (battery_factor ))) (+ (* -0.00571 (* (x ) (max_x ))) (+ (* -0.01447 (* (x ) (max_y ))) (+ (* -0.00388 (* (x ) (max_z ))) (+ (* 0.00158 (* (x ) (x ))) (+ (* -0.00349 (* (x ) (y ))) (+ (* 0.0035 (* (y ) (battery-level ))) (+ (* -0.0021 (* (y ) (battery-level-full ))) (+ (* -0.00905 (* (y ) (battery_factor ))) (+ (* 0.0017 (* (y ) (max_x ))) (+ (* -0.00979 (* (y ) (max_y ))) (+ (* 0.00405 (* (y ) (max_z ))) (+ (* 0.01077 (* (y ) (y ))) (+ (* 0.00882 (* (y ) (z ))) (+ (* 0.00134 (* (z ) (battery-level-full ))) (+ (* -0.0036 (* (z ) (battery_factor ))) (+ (* 0.00117 (* (z ) (max_x ))) (+ (* -0.01024 (* (z ) (max_y ))) (+ (* -0.00105 (* (z ) (max_z ))) (+ (* 0.15668 (battery-level )) (+ (* 0.00023 (battery-level-full )) (+ (* -0.00619 (battery_factor )) (+ (* 0.00185 (max_x )) (+ (* -0.00233 (max_y )) (+ (* 0.00048 (max_z )) (+ (* -0.00601 (x )) (+ (* -0.00101 (y )) (+ (* -0.00253 (z )) -0.39874)))))))))))))))))))))))))))))))))))))))))))))))))))
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
            (assign (battery-level ) (battery-level-full )))
    )
)