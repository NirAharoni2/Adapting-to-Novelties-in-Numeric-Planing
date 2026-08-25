;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_69)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.14746965663336653)
		(= (value_axe a1) 0.3693236333321208)

        (= (value_pickaxe p0) 0.6816365732705835)
		(= (value_pickaxe p1) 0.264692407632943)
		(= (value_pickaxe p2) 0.7802327164318849)
		(= (value_pickaxe p3) 0.947297678884197)
		(= (value_pickaxe p4) 0.6669393421929912)

        (= (value_shovel s0) 2.7286915175464115)
		(= (value_shovel s1) 2.808542195972687)
		(= (value_shovel s2) 3.4334504688837475)
		(= (value_shovel s3) 3.402466739120139)

        (= (value_hoe h0) 12.139641508244704)
		(= (value_hoe h1) 27.370184317759374)
		(= (value_hoe h2) 12.708263211029454)
		(= (value_hoe h3) 11.66807803889655)
		(= (value_hoe h4) 29.687004902520286)

        (= (trees_in_map) 30)

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

