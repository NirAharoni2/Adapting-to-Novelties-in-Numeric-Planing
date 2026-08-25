;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.534637040552777)
		(= (value_axe a1) 0.8168108472169229)
		(= (value_axe a2) 0.17130226075244392)
		(= (value_axe a3) 0.7916719188821228)

        (= (value_pickaxe p0) 0.921766511273632)
		(= (value_pickaxe p1) 0.8060510391629137)
		(= (value_pickaxe p2) 0.8234987625535808)

        (= (value_shovel s0) 1.0525330410339637)
		(= (value_shovel s1) 5.400250472100579)
		(= (value_shovel s2) 7.037881976380518)

        (= (value_hoe h0) 10.998637043906589)
		(= (value_hoe h1) 15.427940673866665)

        (= (trees_in_map) 28)

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

