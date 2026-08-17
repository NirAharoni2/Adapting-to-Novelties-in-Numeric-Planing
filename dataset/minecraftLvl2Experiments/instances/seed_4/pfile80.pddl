;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_80)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.869140717275637)
		(= (value_axe a1) 0.525724859072037)
		(= (value_axe a2) 0.13237111883554975)
		(= (value_axe a3) 0.8270481367343262)
		(= (value_axe a4) 0.0944721667990327)

        (= (value_pickaxe p0) 0.7127822215177934)
		(= (value_pickaxe p1) 0.2915814820805711)
		(= (value_pickaxe p2) 0.8081794865004681)
		(= (value_pickaxe p3) 0.6414070357491549)

        (= (value_shovel s0) 4.576314136802833)
		(= (value_shovel s1) 4.356502970210647)
		(= (value_shovel s2) 3.090748757440875)

        (= (value_hoe h0) 29.98257174224326)
		(= (value_hoe h1) 21.126499838147762)

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

