;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_84)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.5774984683560079)
		(= (value_axe a1) 0.8096295232563772)
		(= (value_axe a2) 0.8953601409095769)

        (= (value_pickaxe p0) 0.641737750151266)
		(= (value_pickaxe p1) 0.2690384647666302)
		(= (value_pickaxe p2) 0.48232267424447717)

        (= (trees_in_map) 31)

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

