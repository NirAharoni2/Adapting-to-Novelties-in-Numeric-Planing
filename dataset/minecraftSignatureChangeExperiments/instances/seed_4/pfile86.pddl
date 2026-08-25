;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_86)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5163535880764195)
		(= (value_axe a1) 0.8806876957843398)
		(= (value_axe a2) 0.4612367576968528)

        (= (value_pickaxe p0) 0.45049373165696116)
		(= (value_pickaxe p1) 0.43289505337498124)
		(= (value_pickaxe p2) 0.2426401838857669)
		(= (value_pickaxe p3) 0.2746362021471709)
		(= (value_pickaxe p4) 0.3666785707751128)

        (= (value_shovel s0) 1.4609044932288398)
		(= (value_shovel s1) 4.243259476887967)
		(= (value_shovel s2) 6.4582596021667396)
		(= (value_shovel s3) 7.097240974122438)
		(= (value_shovel s4) 1.8816244058957436)

        (= (value_hoe h0) 17.2846466250116)
		(= (value_hoe h1) 27.399183865192725)

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

