;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_97)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.3584858528032885)
		(= (value_axe a1) 0.8841305022707706)
		(= (value_axe a2) 0.0611770083982599)

        (= (value_pickaxe p0) 0.8535989751240918)
		(= (value_pickaxe p1) 0.11424709113521381)

        (= (value_shovel s0) 7.143075364886956)
		(= (value_shovel s1) 4.7412704669211685)
		(= (value_shovel s2) 1.8700736419004533)

        (= (value_hoe h0) 15.508052705474206)
		(= (value_hoe h1) 17.875597751118995)
		(= (value_hoe h2) 22.053617342698747)
		(= (value_hoe h3) 25.789818874974873)

        (= (trees_in_map) 27)

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

