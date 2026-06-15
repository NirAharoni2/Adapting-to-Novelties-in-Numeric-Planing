;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_82)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.18714328179467443)
		(= (value_axe a1) 0.4666861530431984)
		(= (value_axe a2) 0.32857507558402055)

        (= (value_pickaxe p0) 0.32605063604614837)
		(= (value_pickaxe p1) 0.3088814207828716)
		(= (value_pickaxe p2) 0.8462888279496037)
		(= (value_pickaxe p3) 0.7137864681991728)

        (= (value_shovel s0) 7.879586402216615)
		(= (value_shovel s1) 5.675220091502114)

        (= (value_hoe h0) 11.752035505167084)
		(= (value_hoe h1) 20.551396452665912)
		(= (value_hoe h2) 27.43811484273145)
		(= (value_hoe h3) 28.478417375894423)

        (= (trees_in_map) 23)

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

