;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.48947434673657364)
		(= (value_axe a1) 0.3873580721523332)

        (= (value_pickaxe p0) 0.07009228275507196)
		(= (value_pickaxe p1) 0.8504734170321603)
		(= (value_pickaxe p2) 0.6393774577768965)

        (= (value_shovel s0) 7.104460534411345)
		(= (value_shovel s1) 6.917449623556045)
		(= (value_shovel s2) 6.078360500488916)

        (= (value_hoe h0) 26.480563796463453)
		(= (value_hoe h1) 24.07682742667409)

        (= (trees_in_map) 33)

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

