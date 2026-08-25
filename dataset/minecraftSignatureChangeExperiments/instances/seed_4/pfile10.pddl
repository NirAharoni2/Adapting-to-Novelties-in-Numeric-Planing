;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.33853061439692944)
		(= (value_axe a1) 0.3921818580946256)
		(= (value_axe a2) 0.4963904401241285)
		(= (value_axe a3) 0.8586095196834823)

        (= (value_pickaxe p0) 0.2800809440148906)
		(= (value_pickaxe p1) 0.6278610055770865)
		(= (value_pickaxe p2) 0.1912575665454862)
		(= (value_pickaxe p3) 0.39479978307314)
		(= (value_pickaxe p4) 0.6195457959743796)

        (= (value_shovel s0) 6.367741918412929)
		(= (value_shovel s1) 2.886090902018021)
		(= (value_shovel s2) 6.994190621550245)

        (= (value_hoe h0) 27.401598120818377)
		(= (value_hoe h1) 23.757054751394655)
		(= (value_hoe h2) 19.29152541893809)
		(= (value_hoe h3) 19.443665407075663)

        (= (trees_in_map) 32)

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

