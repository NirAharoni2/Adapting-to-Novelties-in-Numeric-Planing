;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_82)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.12016028718179161)
		(= (value_axe a1) 0.0806071827139917)
		(= (value_axe a2) 0.24729731917204445)
		(= (value_axe a3) 0.36814732284204277)

        (= (value_pickaxe p0) 0.9570910603886903)
		(= (value_pickaxe p1) 0.4869773313895489)

        (= (value_shovel s0) 6.858636139901886)
		(= (value_shovel s1) 6.2106390670952045)
		(= (value_shovel s2) 5.146727916781424)
		(= (value_shovel s3) 3.2554424304709544)
		(= (value_shovel s4) 3.7486312797136554)

        (= (value_hoe h0) 16.343190858933188)
		(= (value_hoe h1) 22.68660429351763)
		(= (value_hoe h2) 27.10100797425842)

        (= (trees_in_map) 38)

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

