;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_75)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.290017218117237)
		(= (value_axe a1) 0.024794641182336763)
		(= (value_axe a2) 0.026496854338314835)
		(= (value_axe a3) 0.33900064396338736)
		(= (value_axe a4) 0.19646083901913114)

        (= (value_pickaxe p0) 0.5689697676195375)
		(= (value_pickaxe p1) 0.26535877317272083)
		(= (value_pickaxe p2) 0.761919170513752)
		(= (value_pickaxe p3) 0.6013719691432919)

        (= (value_shovel s0) 5.636322105576155)
		(= (value_shovel s1) 6.148686881839445)

        (= (value_hoe h0) 20.432235834929337)
		(= (value_hoe h1) 18.53143507790801)
		(= (value_hoe h2) 16.168477654457604)

        (= (trees_in_map) 22)

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

