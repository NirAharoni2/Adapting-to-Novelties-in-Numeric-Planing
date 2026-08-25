;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_100)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.7023113587294155)
		(= (value_axe a1) 0.9187417966867817)
		(= (value_axe a2) 0.9717754294368697)
		(= (value_axe a3) 0.3020316506694688)

        (= (value_pickaxe p0) 0.35671439454915865)
		(= (value_pickaxe p1) 0.044937700137844705)
		(= (value_pickaxe p2) 0.13823567869628794)
		(= (value_pickaxe p3) 0.5960834402830295)

        (= (value_shovel s0) 7.3200343619368144)
		(= (value_shovel s1) 3.461228079994388)
		(= (value_shovel s2) 6.843660359233707)

        (= (value_hoe h0) 12.678707682172268)
		(= (value_hoe h1) 11.776566031249043)

        (= (trees_in_map) 30)

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

