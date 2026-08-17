(define (domain drone)
    (:requirements :typing :fluents)

    (:types
        location battery_factor dummy_1 dummy_2 dummy_3 - object
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
            (assign (battery-level ) (+ (* 0.02774 (* (battery-level ) (battery-level ))) (+ (* -0.02734 (* (battery-level ) (battery-level-full ))) (+ (* 0.08759 (* (battery-level-full ) (battery-level-full ))) (+ (* 0.13636 (* (max_x ) (battery-level ))) (+ (* -0.48189 (* (max_x ) (battery-level-full ))) (+ (* 0.15035 (* (max_x ) (max_x ))) (+ (* -0.09384 (* (max_x ) (max_y ))) (+ (* 0.26431 (* (max_x ) (max_z ))) (+ (* 0.19434 (* (max_y ) (battery-level ))) (+ (* -0.40969 (* (max_y ) (battery-level-full ))) (+ (* -0.21263 (* (max_y ) (max_y ))) (+ (* -0.15272 (* (max_y ) (max_z ))) (+ (* 0.10068 (* (max_z ) (battery-level ))) (+ (* -0.41683 (* (max_z ) (battery-level-full ))) (+ (* 0.02677 (* (max_z ) (max_z ))) (+ (* 0.11063 (* (x ) (battery-level ))) (+ (* -0.07047 (* (x ) (battery-level-full ))) (+ (* -0.08245 (* (x ) (max_x ))) (+ (* -0.02964 (* (x ) (max_y ))) (+ (* -0.19162 (* (x ) (max_z ))) (+ (* 0.09517 (* (x ) (x ))) (+ (* 0.07144 (* (x ) (y ))) (+ (* 0.13643 (* (x ) (z ))) (+ (* 0.03346 (* (y ) (battery-level ))) (+ (* -0.05392 (* (y ) (battery-level-full ))) (+ (* 0.05321 (* (y ) (max_x ))) (+ (* 0.15572 (* (y ) (max_y ))) (+ (* 0.02666 (* (y ) (max_z ))) (+ (* -0.04715 (* (y ) (y ))) (+ (* 0.0846 (* (y ) (z ))) (+ (* 0.11225 (* (z ) (battery-level ))) (+ (* -0.00335 (* (z ) (battery-level-full ))) (+ (* -0.24379 (* (z ) (max_x ))) (+ (* -0.23732 (* (z ) (max_y ))) (+ (* -0.46388 (* (z ) (max_z ))) (+ (* 0.24261 (* (z ) (z ))) (+ (* 0.10784 (battery-level )) (+ (* -0.3271 (battery-level-full )) (+ (* 0.08021 (max_x )) (+ (* -0.1148 (max_y )) (+ (* 0.03459 (max_z )) (+ (* -0.07593 (x )) (+ (* 0.0589 (y )) (+ (* -0.23625 (z )) 14.92849))))))))))))))))))))))))))))))))))))))))))))))
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
            (assign (battery-level ) (+ (* 0.00193 (* (battery-level ) (battery-level ))) (+ (* 0.00403 (* (battery-level ) (battery-level-full ))) (+ (* 0.04101 (* (battery-level-full ) (battery-level-full ))) (+ (* 0.21176 (* (max_x ) (battery-level ))) (+ (* -0.30952 (* (max_x ) (battery-level-full ))) (+ (* 0.0382 (* (max_x ) (max_x ))) (+ (* -0.07155 (* (max_x ) (max_y ))) (+ (* 0.15214 (* (max_x ) (max_z ))) (+ (* 0.17164 (* (max_y ) (battery-level ))) (+ (* -0.20363 (* (max_y ) (battery-level-full ))) (+ (* -0.13834 (* (max_y ) (max_y ))) (+ (* -0.09416 (* (max_y ) (max_z ))) (+ (* 0.2008 (* (max_z ) (battery-level ))) (+ (* -0.3116 (* (max_z ) (battery-level-full ))) (+ (* 0.12726 (* (max_z ) (max_z ))) (+ (* -0.10069 (* (x ) (battery-level ))) (+ (* 0.15757 (* (x ) (battery-level-full ))) (+ (* -0.15749 (* (x ) (max_x ))) (+ (* -0.24365 (* (x ) (max_y ))) (+ (* -0.19956 (* (x ) (max_z ))) (+ (* -0.16394 (* (x ) (x ))) (+ (* -0.13194 (* (x ) (y ))) (+ (* -0.40105 (* (x ) (z ))) (+ (* 0.02248 (* (y ) (battery-level ))) (+ (* -0.01613 (* (y ) (battery-level-full ))) (+ (* 0.01204 (* (y ) (max_x ))) (+ (* -0.04728 (* (y ) (max_y ))) (+ (* 0.00238 (* (y ) (max_z ))) (+ (* 0.03591 (* (y ) (y ))) (+ (* -0.00404 (* (y ) (z ))) (+ (* -0.0155 (* (z ) (battery-level ))) (+ (* 0.09428 (* (z ) (battery-level-full ))) (+ (* -0.06505 (* (z ) (max_x ))) (+ (* -0.29804 (* (z ) (max_y ))) (+ (* -0.18219 (* (z ) (max_z ))) (+ (* -0.09354 (* (z ) (z ))) (+ (* 0.14605 (battery-level )) (+ (* -0.20619 (battery-level-full )) (+ (* 0.0297 (max_x )) (+ (* -0.07601 (max_y )) (+ (* 0.04631 (max_z )) (+ (* -0.15017 (x )) (+ (* -0.00821 (y )) (+ (* -0.13632 (z )) 8.67379))))))))))))))))))))))))))))))))))))))))))))))
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
            (assign (battery-level ) (+ (* -0.00702 (* (battery-level ) (battery-level ))) (+ (* -0.00129 (* (battery-level ) (battery-level-full ))) (+ (* 0.04194 (* (battery-level-full ) (battery-level-full ))) (+ (* 0.23995 (* (max_x ) (battery-level ))) (+ (* -0.2268 (* (max_x ) (battery-level-full ))) (+ (* 0.01571 (* (max_x ) (max_x ))) (+ (* -0.03931 (* (max_x ) (max_y ))) (+ (* 0.07893 (* (max_x ) (max_z ))) (+ (* 0.23188 (* (max_y ) (battery-level ))) (+ (* -0.18289 (* (max_y ) (battery-level-full ))) (+ (* -0.11781 (* (max_y ) (max_y ))) (+ (* -0.03102 (* (max_y ) (max_z ))) (+ (* 0.27411 (* (max_z ) (battery-level ))) (+ (* -0.28379 (* (max_z ) (battery-level-full ))) (+ (* 0.0849 (* (max_z ) (max_z ))) (+ (* 0.0172 (* (x ) (battery-level ))) (+ (* -0.06183 (* (x ) (battery-level-full ))) (+ (* 0.13231 (* (x ) (max_x ))) (+ (* 0.0905 (* (x ) (max_y ))) (+ (* 0.14574 (* (x ) (max_z ))) (+ (* 0.02848 (* (x ) (x ))) (+ (* 0.00889 (* (x ) (z ))) (+ (* -0.01474 (* (y ) (battery-level ))) (+ (* -0.03436 (* (y ) (battery-level-full ))) (+ (* 0.14057 (* (y ) (max_x ))) (+ (* 0.10207 (* (y ) (max_y ))) (+ (* 0.19829 (* (y ) (max_z ))) (+ (* -0.02719 (* (y ) (y ))) (+ (* -0.0786 (* (y ) (z ))) (+ (* -0.04141 (* (z ) (battery-level ))) (+ (* 0.02645 (* (z ) (battery-level-full ))) (+ (* 0.01388 (* (z ) (max_x ))) (+ (* 0.00439 (* (z ) (max_y ))) (+ (* 0.08949 (* (z ) (max_z ))) (+ (* -0.06708 (* (z ) (z ))) (+ (* 0.18649 (battery-level )) (+ (* -0.17337 (battery-level-full )) (+ (* 0.01383 (max_x )) (+ (* -0.04703 (max_y )) (+ (* 0.0332 (max_z )) (+ (* 0.09214 (x )) (+ (* 0.11023 (y )) (+ (* 0.02694 (z )) 4.96889)))))))))))))))))))))))))))))))))))))))))))))
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