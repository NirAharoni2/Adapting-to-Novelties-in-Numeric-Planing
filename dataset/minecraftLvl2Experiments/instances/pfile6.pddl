;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.3097947239711002)
		(= (value_axe a1) 0.6420305703700951)
		(= (value_axe a2) 0.22971365228199547)
		(= (value_axe a3) 0.8885447358561251)
		(= (value_axe a4) 0.09203974768983869)

        (= (value_pickaxe p0) 0.12740241086417936)
		(= (value_pickaxe p1) 0.41196853132083)
		(= (value_pickaxe p2) 0.8837528029393965)
		(= (value_pickaxe p3) 0.0015569953079446197)
		(= (value_pickaxe p4) 0.6155865049629344)

        (= (value_shovel s0) 5.697496510109574)
		(= (value_shovel s1) 2.704024885941993)
		(= (value_shovel s2) 2.010585322804459)
		(= (value_shovel s3) 5.592658872588817)
		(= (value_shovel s4) 5.796031079570506)

        (= (value_hoe h0) 27.91481931348371)
		(= (value_hoe h1) 17.821928832281095)
		(= (value_hoe h2) 22.316522841618823)
		(= (value_hoe h3) 26.58581202526055)
		(= (value_hoe h4) 26.088460707538545)

        (= (trees_in_map) 25)

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

