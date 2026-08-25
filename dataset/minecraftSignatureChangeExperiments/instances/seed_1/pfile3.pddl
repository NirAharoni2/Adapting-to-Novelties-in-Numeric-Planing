;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.9522444552911937)
		(= (value_axe a1) 0.926506623785866)
		(= (value_axe a2) 0.4161799388943461)
		(= (value_axe a3) 0.9162698355052942)

        (= (value_pickaxe p0) 0.9221885624698875)
		(= (value_pickaxe p1) 0.10000027109612719)
		(= (value_pickaxe p2) 0.629352904800649)

        (= (value_shovel s0) 6.0654730723770385)
		(= (value_shovel s1) 3.074732749508542)
		(= (value_shovel s2) 6.202026622957485)

        (= (value_hoe h0) 27.911507892829835)
		(= (value_hoe h1) 29.465045140861235)
		(= (value_hoe h2) 20.01599400288471)
		(= (value_hoe h3) 29.34420547218725)
		(= (value_hoe h4) 20.154345010226322)

        (= (trees_in_map) 26)

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

