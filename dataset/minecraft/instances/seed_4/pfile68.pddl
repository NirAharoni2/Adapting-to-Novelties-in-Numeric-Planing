; PolyCraft basic problem

(define (problem basic)

    (:domain PolyCraft)

    (:init
        ; Map
        (= (trees_in_map) 14)
        (= (mine_factor) 0.45)

        ; Items
        (= (count_log_in_inventory) 0)
        (= (count_planks_in_inventory) 0)
        (= (count_stick_in_inventory) 0)
        (= (count_sack_polyisoprene_pellets_in_inventory) 0)
        (= (count_tree_tap_in_inventory) 0)
        (= (count_pogo_stick) 0)
    )

    (:goal
        (and
            (= (count_pogo_stick) 1)
        )
    )
)
