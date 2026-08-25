;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_52)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.31099122903941845)
		(= (value_axe a1) 0.6486473070285701)
		(= (value_axe a2) 0.13075776304914621)
		(= (value_axe a3) 0.14674528724551117)
		(= (value_axe a4) 0.5240420919713792)

        (= (value_pickaxe p0) 0.15202057759997767)
		(= (value_pickaxe p1) 0.21426984207619204)

        (= (value_shovel s0) 6.451469121496558)
		(= (value_shovel s1) 4.032945824630975)
		(= (value_shovel s2) 2.272455743794301)

        (= (value_hoe h0) 10.525887948389006)
		(= (value_hoe h1) 12.089586724536618)
		(= (value_hoe h2) 12.301892808862458)

        (= (trees_in_map) 29)

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

