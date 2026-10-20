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
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (assign (x ?b) (+ (* 3e-05 (* (x ?b) (x ?b))) (+ (* 2e-05 (* (x ?b) (y ?b))) (+ (* 4e-05 (* (y ?b) (y ?b))) (+ (* 0.99596 (x ?b)) (+ (* -0.01508 (y ?b)) -4.41035))))))
            (assign (y ?b) (+ (* -3e-05 (* (x ?b) (x ?b))) (+ (* -2e-05 (* (x ?b) (y ?b))) (+ (* -4e-05 (* (y ?b) (y ?b))) (+ (* 0.00404 (x ?b)) (+ (* 1.01508 (y ?b)) 4.41035)))))))
    )
    (:action go_est
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (assign (x ?b) (+ (* 1e-05 (* (x ?b) (x ?b))) (+ (* -4e-05 (* (x ?b) (y ?b))) (+ (* 2e-05 (* (y ?b) (y ?b))) (+ (* 1.0014 (x ?b)) (+ (* 0.00577 (y ?b)) 8.59338)))))))
    )
    (:action go_west
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (decrease (x ?b) 3))
    )
    (:action go_south_east
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (assign (x ?b) (+ (* 0.24236 (* (x ?b) (x ?b))) (+ (* 0.48472 (* (x ?b) (y ?b))) (+ (* 0.24236 (* (y ?b) (y ?b))) (+ (* 9.27895 (x ?b)) (+ (* 8.27895 (y ?b)) 71.86786))))))
            (assign (y ?b) (+ (* -0.24236 (* (x ?b) (x ?b))) (+ (* -0.48472 (* (x ?b) (y ?b))) (+ (* -0.24236 (* (y ?b) (y ?b))) (+ (* -8.27895 (x ?b)) (+ (* -7.27895 (y ?b)) -71.86786)))))))
    )
    (:action go_south_west
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (assign (x ?b) (+ (* 0.0004 (* (x ?b) (x ?b))) (+ (* -0.00085 (* (x ?b) (y ?b))) (+ (* 0.00039 (* (y ?b) (y ?b))) (+ (* 0.89541 (x ?b)) (+ (* 0.09434 (y ?b)) -5.55956))))))
            (assign (y ?b) (+ (* 0.0004 (* (x ?b) (x ?b))) (+ (* -0.00085 (* (x ?b) (y ?b))) (+ (* 0.00039 (* (y ?b) (y ?b))) (+ (* -0.10459 (x ?b)) (+ (* 1.09434 (y ?b)) -5.55956)))))))
    )
    (:action go_south
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (assign (y ?b) (+ (* -0.00215 (* (x ?b) (x ?b))) (+ (* -0.0042 (* (x ?b) (y ?b))) (+ (* -0.00047 (* (y ?b) (y ?b))) (+ (* -0.11667 (x ?b)) (+ (* 1.00681 (y ?b)) -3.85418)))))))
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