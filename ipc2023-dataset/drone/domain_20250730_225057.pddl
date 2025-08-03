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
            (assign (x ) 1.0)
            (decrease (battery-level ) 1)
            (assign (y ) (+ (* 1.0 (y )) -1.0)))
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
            (assign (y ) (+ (* 0.06349 (battery-level )) (+ (* -0.12698 (battery-level-full )) (+ (* -0.12698 (max_x )) (+ (* 0.38095 (max_y )) (+ (* -0.25397 (max_z )) (+ (* 0.50794 (y )) (+ (* -0.06349 (z )) 1.71429))))))))
            (decrease (battery-level ) 1)
            (assign (z ) (+ (* 0.49206 (battery-level )) (+ (* 0.01587 (battery-level-full )) (+ (* 0.01587 (max_x )) (+ (* -0.04762 (max_y )) (+ (* 0.03175 (max_z )) (+ (* -0.06349 (y )) (+ (* 0.50794 (z )) -2.71429)))))))))
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
            (assign (z ) 1.0)
            (decrease (battery-level ) 1)
            (assign (x ) (+ (* 0.4 (battery-level )) (+ (* 0.2 (x )) -2.2))))
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