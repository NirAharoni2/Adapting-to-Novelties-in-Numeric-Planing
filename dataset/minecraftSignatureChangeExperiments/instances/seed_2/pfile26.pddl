;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.9400961203335898)
		(= (value_axe a1) 0.6479743403778714)
		(= (value_axe a2) 0.6114512463039781)

        (= (value_pickaxe p0) 0.8622969101670562)
		(= (value_pickaxe p1) 0.1774732012363046)
		(= (value_pickaxe p2) 0.0630615013076169)

        (= (value_shovel s0) 4.105213280406777)
		(= (value_shovel s1) 2.9033841187473692)

        (= (value_hoe h0) 16.41956217929573)
		(= (value_hoe h1) 21.535824961270986)
		(= (value_hoe h2) 12.32829665214445)
		(= (value_hoe h3) 22.963965202596576)

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

