;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_85)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.06542381043088186)
		(= (value_axe a1) 0.963857900925284)
		(= (value_axe a2) 0.044776711458460516)

        (= (value_pickaxe p0) 0.8521019947511361)
		(= (value_pickaxe p1) 0.6133082659174627)
		(= (value_pickaxe p2) 0.3156236405075076)
		(= (value_pickaxe p3) 0.40337980002577234)

        (= (value_shovel s0) 3.8976307025937396)
		(= (value_shovel s1) 5.473154888934718)
		(= (value_shovel s2) 4.033911769282805)

        (= (value_hoe h0) 24.535905645230336)
		(= (value_hoe h1) 11.09642042907511)
		(= (value_hoe h2) 15.791814206751557)

        (= (trees_in_map) 24)

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

