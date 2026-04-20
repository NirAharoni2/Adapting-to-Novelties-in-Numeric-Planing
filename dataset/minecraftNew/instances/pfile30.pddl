;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.16965546817467758)
		(= (value_axe a1) 0.02145962661450651)

        (= (value_pickaxe p0) 0.530568671633948)
		(= (value_pickaxe p1) 0.00022319628714062567)
		(= (value_pickaxe p2) 0.4515356754358568)
		(= (value_pickaxe p3) 0.6480622518471573)
		(= (value_pickaxe p4) 0.3707671192235944)

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

