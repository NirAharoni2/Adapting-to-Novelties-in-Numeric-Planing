(define (domain domain_name)
    (:requirements :typing :fluents)

    (:types
        location battery_factor - object
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
        (value ?bf - battery_factor)
    )
    (:action increase_x
     :parameters (?bf - battery_factor)
     :precondition (and
            (>= (battery-level ) 1)
            (<= (x ) (- (max_x ) 1)))
     :effect (and
            (increase (x ) 1)
            (assign (battery-level ) (+ (* 1.0 (battery-level )) (* -1.1 (value ?bf))))
            (assign (value ?bf) (+ (* 1.0 (value ?bf)) 0.01)))
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
     :parameters (?bf - battery_factor)
     :precondition (and
            (>= (battery-level ) 1)
            (<= (y ) (- (max_y ) 1)))
     :effect (and
            (increase (y ) 1)
            (assign (battery-level ) (+ (* 1.0 (battery-level )) (* -1.1 (value ?bf))))
            (assign (value ?bf) (+ (* 1.0 (value ?bf)) 0.01)))
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
     :parameters (?bf - battery_factor)
     :precondition (and
            (>= (battery-level ) 1)
            (<= (z ) (- (max_z ) 1)))
     :effect (and
            (increase (z ) 1)
            (assign (battery-level ) (+ (* 1.0 (battery-level )) (* -1.1 (value ?bf))))
            (assign (value ?bf) (+ (* 1.0 (value ?bf)) 0.01)))
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