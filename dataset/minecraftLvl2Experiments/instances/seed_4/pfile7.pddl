;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_7)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5955348363282316)
		(= (value_axe a1) 0.9706188078942934)

        (= (value_pickaxe p0) 0.6065174865789142)
		(= (value_pickaxe p1) 0.5462300441463859)

        (= (value_shovel s0) 5.078655509229083)
		(= (value_shovel s1) 3.2500306888182138)

        (= (value_hoe h0) 10.711479056220242)
		(= (value_hoe h1) 26.697008986658094)
		(= (value_hoe h2) 15.858148302702922)

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

