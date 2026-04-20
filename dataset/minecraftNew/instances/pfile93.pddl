;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_93)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.23298743906040598)
		(= (value_axe a1) 0.2689413994627584)

        (= (value_pickaxe p0) 0.7843214052251388)
		(= (value_pickaxe p1) 0.40357376653386934)
		(= (value_pickaxe p2) 0.543779058578588)

        (= (trees_in_map) 28)

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

