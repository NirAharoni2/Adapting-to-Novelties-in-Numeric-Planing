;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_99)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.47325883207867625)
		(= (value_axe a1) 0.9468495875105823)
		(= (value_axe a2) 0.43864702421495927)

        (= (value_pickaxe p0) 0.7917075251889223)
		(= (value_pickaxe p1) 0.930531305401779)
		(= (value_pickaxe p2) 0.6217094727019322)
		(= (value_pickaxe p3) 0.589402854636405)

        (= (value_shovel s0) 6.528105121820452)
		(= (value_shovel s1) 5.983252750238676)
		(= (value_shovel s2) 2.354355571725744)
		(= (value_shovel s3) 3.917542407562759)
		(= (value_shovel s4) 2.0982567116279185)

        (= (value_hoe h0) 10.42139406610582)
		(= (value_hoe h1) 23.745587255673772)
		(= (value_hoe h2) 16.57565514733389)

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

