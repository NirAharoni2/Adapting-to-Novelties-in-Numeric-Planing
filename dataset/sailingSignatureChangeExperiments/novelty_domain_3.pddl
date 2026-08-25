(define (domain sailing)
    (:requirements :typing :fluents)

    (:types
        boat person dummy_1 dummy_2 dummy_3 engine - object
    )

    (:predicates
        (saved ?t - person)
    )
    (:functions
        (x ?b - boat)
        (y ?b - boat)
        (d ?t - person)
        (drift_factor)
        (engine_value ?e - engine)
        (dummy_1_value ?d1 - dummy_1)
        (dummy_2_value ?d2 - dummy_2)
        (dummy_3_value ?d3 - dummy_3)
    )
    (:action go_north_east
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (increase (x ?b) 1.5)
            (increase (y ?b) 1.5)
            (assign (d ?t) (+ (* 0.1 (* (drift_factor ) (drift_factor ))) (* 1.0 (d ?t)))))
    )
    (:action go_north_west
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (decrease (x ?b) 1.5)
            (increase (y ?b) 1.5)
            (assign (d ?t) (+ (* 0.1 (* (drift_factor ) (drift_factor ))) (* 1.0 (d ?t)))))
    )
    (:action go_est
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (increase (x ?b) 3)
            (assign (d ?t) (+ (* 0.1 (* (drift_factor ) (drift_factor ))) (* 1.0 (d ?t)))))
    )
    (:action go_west
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (decrease (x ?b) 3)
            (assign (d ?t) (+ (* 0.1 (* (drift_factor ) (drift_factor ))) (* 1.0 (d ?t)))))
    )
    (:action go_south_east
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (increase (x ?b) 2)
            (decrease (y ?b) 2)
            (assign (d ?t) (+ (* 0.1 (* (drift_factor ) (drift_factor ))) (* 1.0 (d ?t)))))
    )
    (:action go_south_west
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (decrease (x ?b) 2)
            (decrease (y ?b) 2)
            (assign (d ?t) (+ (* 0.1 (* (drift_factor ) (drift_factor ))) (* 1.0 (d ?t)))))
    )
    (:action go_south
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (decrease (y ?b) 2)
            (assign (d ?t) (+ (* 0.1 (* (drift_factor ) (drift_factor ))) (* 1.0 (d ?t)))))
    )
    (:action save_person
     :parameters (?b - boat ?t - person)
     :precondition (and
            (>= (+ (x ?b) (y ?b)) (d ?t))
            (>= (- (y ?b) (x ?b)) (d ?t))
            (<= (+ (x ?b) (y ?b)) (+ (d ?t) 25))
            (<= (- (y ?b) (x ?b)) (+ (d ?t) 25)))
     :effect (and
            (saved ?t))
    )
)