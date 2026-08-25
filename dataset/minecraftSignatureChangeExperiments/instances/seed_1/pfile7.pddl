;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_7)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.03245913119424004)
		(= (value_axe a1) 0.9435702537977213)
		(= (value_axe a2) 0.070453473055617)

        (= (value_pickaxe p0) 0.868078090374847)
		(= (value_pickaxe p1) 0.45299878727316834)
		(= (value_pickaxe p2) 0.7541452851562707)

        (= (value_shovel s0) 2.9683767463782025)
		(= (value_shovel s1) 2.8804921341420737)

        (= (value_hoe h0) 25.945754293322874)
		(= (value_hoe h1) 13.692203662458489)
		(= (value_hoe h2) 15.805686424600388)
		(= (value_hoe h3) 13.349406146947372)

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

