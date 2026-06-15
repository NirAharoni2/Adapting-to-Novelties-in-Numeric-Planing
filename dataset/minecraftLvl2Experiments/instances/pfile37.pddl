;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.518327648015125)
		(= (value_axe a1) 0.46548884915586686)
		(= (value_axe a2) 0.7410207925344351)
		(= (value_axe a3) 0.34233819999222714)

        (= (value_pickaxe p0) 0.49019276595265504)
		(= (value_pickaxe p1) 0.6815463622385964)
		(= (value_pickaxe p2) 0.7095852791955066)

        (= (value_shovel s0) 3.4456771135444755)
		(= (value_shovel s1) 4.967022530587755)

        (= (value_hoe h0) 18.523341571920007)
		(= (value_hoe h1) 23.30276409702504)
		(= (value_hoe h2) 16.628723146167317)
		(= (value_hoe h3) 26.9028278025031)

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

