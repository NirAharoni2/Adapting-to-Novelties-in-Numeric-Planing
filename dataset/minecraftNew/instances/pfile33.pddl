;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.07552317641816675)
		(= (value_axe a1) 0.42541301993385083)
		(= (value_axe a2) 0.3728360758342327)
		(= (value_axe a3) 0.5170790857164086)
		(= (value_axe a4) 0.8019012973461327)

        (= (value_pickaxe p0) 0.3122797347831664)
		(= (value_pickaxe p1) 0.8519935826680648)

        (= (trees_in_map) 36)

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

