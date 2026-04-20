;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.9517556584515746)
		(= (value_axe a1) 0.33693157448233213)
		(= (value_axe a2) 0.9739071078521175)

        (= (value_pickaxe p0) 0.023485548595819083)
		(= (value_pickaxe p1) 0.3227169928081106)

        (= (trees_in_map) 38)

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

