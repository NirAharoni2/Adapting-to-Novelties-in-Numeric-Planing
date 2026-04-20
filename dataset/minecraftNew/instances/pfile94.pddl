;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_94)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.6442103944236983)
		(= (value_axe a1) 0.6695382145959464)
		(= (value_axe a2) 0.6147439167156249)

        (= (value_pickaxe p0) 0.18742622097903516)
		(= (value_pickaxe p1) 0.05039034527812081)

        (= (trees_in_map) 27)

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

