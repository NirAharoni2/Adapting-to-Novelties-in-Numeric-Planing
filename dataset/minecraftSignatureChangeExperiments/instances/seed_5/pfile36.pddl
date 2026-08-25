;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.7536086568064374)
		(= (value_axe a1) 0.2814478270723051)

        (= (value_pickaxe p0) 0.9208741649934427)
		(= (value_pickaxe p1) 0.7964722051995753)
		(= (value_pickaxe p2) 0.7550514811579919)

        (= (value_shovel s0) 4.340052699896133)
		(= (value_shovel s1) 4.291022725715009)
		(= (value_shovel s2) 4.736357505334345)
		(= (value_shovel s3) 1.6377394691302967)
		(= (value_shovel s4) 2.3928730833161427)

        (= (value_hoe h0) 23.773390205216725)
		(= (value_hoe h1) 12.070766614637336)

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

