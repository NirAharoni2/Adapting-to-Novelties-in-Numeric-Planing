;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_52)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.7089879251064074)
		(= (value_axe a1) 0.22597476455035437)
		(= (value_axe a2) 0.6994970013531193)
		(= (value_axe a3) 0.8591973301462709)
		(= (value_axe a4) 0.6489482384832018)

        (= (value_pickaxe p0) 0.4843432153211863)
		(= (value_pickaxe p1) 0.5738661229549543)
		(= (value_pickaxe p2) 0.41976452795181085)
		(= (value_pickaxe p3) 0.9021431730096043)

        (= (value_shovel s0) 2.7463240180493673)
		(= (value_shovel s1) 3.3036134405777946)

        (= (value_hoe h0) 28.362037101995636)
		(= (value_hoe h1) 28.535007182626238)
		(= (value_hoe h2) 17.60356917164755)

        (= (trees_in_map) 39)

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

