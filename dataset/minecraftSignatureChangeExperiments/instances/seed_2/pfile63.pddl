;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_63)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.43335393910111775)
		(= (value_axe a1) 0.9717070647372428)
		(= (value_axe a2) 0.8890578910042268)
		(= (value_axe a3) 0.5076095341886138)

        (= (value_pickaxe p0) 0.8921410799959176)
		(= (value_pickaxe p1) 0.16258351404764582)

        (= (value_shovel s0) 1.4923788693218083)
		(= (value_shovel s1) 6.698730567023952)
		(= (value_shovel s2) 1.9898495471179396)

        (= (value_hoe h0) 20.308248712483486)
		(= (value_hoe h1) 24.738506879449574)
		(= (value_hoe h2) 23.586308387821138)

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

