(define (domain polycraft)
    (:requirements :typing :fluents)

    (:types
    )

    (:predicates
        
    )
    (:functions
        (trees_in_map)
        (count_log_in_inventory)
        (count_planks_in_inventory)
        (count_stick_in_inventory)
        (count_sack_polyisoprene_pellets_in_inventory)
        (count_tree_tap_in_inventory)
        (count_pogo_stick)
    )
    (:action get_log
     :parameters ()
     :precondition (and
            (>= (trees_in_map ) 1))
     :effect (and
            (assign (count_log_in_inventory ) (+ (* 1.00255 (count_log_in_inventory )) (+ (* -0.01045 (count_planks_in_inventory )) (+ (* -0.00085 (count_stick_in_inventory )) (+ (* 0.03575 (count_tree_tap_in_inventory )) (+ (* 0.14234 (mine_factor )) (+ (* 0.00626 (trees_in_map )) -0.10307)))))))
            (assign (trees_in_map ) (+ (* 0.00255 (count_log_in_inventory )) (+ (* -0.01045 (count_planks_in_inventory )) (+ (* -0.00085 (count_stick_in_inventory )) (+ (* 0.03575 (count_tree_tap_in_inventory )) (+ (* 0.14234 (mine_factor )) (+ (* 1.00626 (trees_in_map )) -0.10307))))))))
    )
    (:action craft_plank
     :parameters ()
     :precondition (and
            (>= (count_log_in_inventory ) 1))
     :effect (and
            (decrease (count_log_in_inventory ) 1)
            (increase (count_planks_in_inventory ) 4))
    )
    (:action craft_stick
     :parameters ()
     :precondition (and
            (>= (count_planks_in_inventory ) 2))
     :effect (and
            (decrease (count_planks_in_inventory ) 2)
            (increase (count_stick_in_inventory ) 4))
    )
    (:action craft_tree_tap
     :parameters ()
     :precondition (and
            (>= (count_planks_in_inventory ) 5)
            (>= (count_stick_in_inventory ) 1))
     :effect (and
            (decrease (count_planks_in_inventory ) 5)
            (decrease (count_stick_in_inventory ) 1)
            (increase (count_tree_tap_in_inventory ) 1))
    )
    (:action craft_wooden_pogo
     :parameters ()
     :precondition (and
            (>= (count_planks_in_inventory ) 2)
            (>= (count_stick_in_inventory ) 4)
            (>= (count_sack_polyisoprene_pellets_in_inventory ) 1))
     :effect (and
            (decrease (count_planks_in_inventory ) 2)
            (decrease (count_stick_in_inventory ) 4)
            (decrease (count_sack_polyisoprene_pellets_in_inventory ) 1)
            (increase (count_pogo_stick ) 1))
    )
    (:action place_tree_tap
     :parameters ()
     :precondition (and
            (>= (trees_in_map ) 1)
            (>= (count_tree_tap_in_inventory ) 1))
     :effect (and
            (increase (count_sack_polyisoprene_pellets_in_inventory ) 1))
    )
)