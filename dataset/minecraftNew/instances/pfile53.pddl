;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_53)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.04217562441091394)
		(= (value_axe a1) 0.0641191489790337)
		(= (value_axe a2) 0.7460898328997575)
		(= (value_axe a3) 0.2192578134584685)

        (= (value_pickaxe p0) 0.7525196176562728)
		(= (value_pickaxe p1) 0.22932583637692694)
		(= (value_pickaxe p2) 0.7243035080794147)

        (= (trees_in_map) 22)

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

