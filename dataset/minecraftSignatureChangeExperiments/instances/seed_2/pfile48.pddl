;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.11430798478934945)
		(= (value_axe a1) 0.9422752696057238)

        (= (value_pickaxe p0) 0.36245078833786026)
		(= (value_pickaxe p1) 0.6050128066303246)
		(= (value_pickaxe p2) 0.7331606030912649)

        (= (value_shovel s0) 2.250416884076281)
		(= (value_shovel s1) 6.834588747275969)
		(= (value_shovel s2) 3.279545601309671)
		(= (value_shovel s3) 1.5631416193259575)
		(= (value_shovel s4) 5.198398436318687)

        (= (value_hoe h0) 18.046840968731)
		(= (value_hoe h1) 28.382248019480226)

        (= (trees_in_map) 34)

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

