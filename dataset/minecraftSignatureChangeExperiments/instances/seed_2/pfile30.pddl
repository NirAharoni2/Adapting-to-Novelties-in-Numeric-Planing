;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.6160362974942997)
		(= (value_axe a1) 0.6263762517208731)

        (= (value_pickaxe p0) 0.33674101250386146)
		(= (value_pickaxe p1) 0.6476061482623645)
		(= (value_pickaxe p2) 0.3938370190872611)
		(= (value_pickaxe p3) 0.9349677392660438)
		(= (value_pickaxe p4) 0.5244974457255578)

        (= (value_shovel s0) 6.466634209594961)
		(= (value_shovel s1) 5.727959313548931)
		(= (value_shovel s2) 4.57679936839728)

        (= (value_hoe h0) 26.666292372019416)
		(= (value_hoe h1) 13.027777467240657)

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

