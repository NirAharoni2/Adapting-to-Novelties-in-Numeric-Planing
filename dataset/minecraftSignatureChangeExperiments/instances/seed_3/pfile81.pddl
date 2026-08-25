;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_81)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5648490009975257)
		(= (value_axe a1) 0.34016777856003577)
		(= (value_axe a2) 0.4310758547411221)
		(= (value_axe a3) 0.039993817840038415)
		(= (value_axe a4) 0.7328876541297196)

        (= (value_pickaxe p0) 0.7510878249578159)
		(= (value_pickaxe p1) 0.36363398212290243)
		(= (value_pickaxe p2) 0.7254899769382289)
		(= (value_pickaxe p3) 0.27247955296895143)

        (= (value_shovel s0) 2.536499626684126)
		(= (value_shovel s1) 2.5976464461775204)
		(= (value_shovel s2) 2.3767854002092825)
		(= (value_shovel s3) 5.241030761725336)
		(= (value_shovel s4) 5.494771569170759)

        (= (value_hoe h0) 24.554752684389356)
		(= (value_hoe h1) 12.075339943829615)
		(= (value_hoe h2) 25.325322956006794)
		(= (value_hoe h3) 19.565468501758033)
		(= (value_hoe h4) 17.569586411542808)

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

