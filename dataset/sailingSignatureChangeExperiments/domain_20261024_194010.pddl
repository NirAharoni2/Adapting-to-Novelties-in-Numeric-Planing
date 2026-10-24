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
     :parameters (?b - boat ?e - engine)
     :precondition (and)
     :effect (and
            (assign (x ?b) (+ (* 1.0 (x ?b)) (* 1.5 (engine_value ?e))))
            (assign (y ?b) (+ (* 1.0 (y ?b)) (* 1.5 (engine_value ?e)))))
    )
    (:action go_north_west
     :parameters (?b - boat ?e - engine)
     :precondition (and)
     :effect (and
            (assign (x ?b) (+ (* 1.0 (x ?b)) (* -1.5 (engine_value ?e))))
            (assign (y ?b) (+ (* 1.0 (y ?b)) (* 1.5 (engine_value ?e)))))
    )
    (:action go_est
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (increase (x ?b) 3))
    )
    (:action go_west
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (assign (x ?b) (+ (* 0.00479 (* (x ?b) (x ?b))) (+ (* -0.06573 (* (x ?b) (y ?b))) (+ (* 0.04751 (* (y ?b) (y ?b))) (+ (* 0.00675 (x ?b)) (+ (* -0.00116 (y ?b)) -23.4924)))))))
    )
    (:action go_south_east
     :parameters (?b - boat ?d - dummy_1)
     :precondition (and)
     :effect (and
            (assign (x ?b) (+ (* -0.1162 (dummy_1_value ?d)) (+ (* 1.11719 (x ?b)) (+ (* 0.11719 (y ?b)) 13.95066))))
            (assign (y ?b) (+ (* 0.1162 (dummy_1_value ?d)) (+ (* -0.11719 (x ?b)) (+ (* 0.88281 (y ?b)) -13.95066)))))
    )
    (:action go_south_west
     :parameters (?b - boat ?e - engine)
     :precondition (and)
     :effect (and
            (assign (x ?b) (+ (* 1.0 (x ?b)) (* -2.0 (engine_value ?e))))
            (assign (y ?b) (+ (* 1.0 (y ?b)) (* -2.0 (engine_value ?e)))))
    )
    (:action go_south
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (decrease (y ?b) 2))
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