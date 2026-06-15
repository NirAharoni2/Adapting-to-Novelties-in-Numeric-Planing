;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.018858391116588935)
		(= (value_axe a1) 0.6698937687949741)
		(= (value_axe a2) 0.3814380732082131)

        (= (value_pickaxe p0) 0.4200139620096659)
		(= (value_pickaxe p1) 0.33079735568964885)
		(= (value_pickaxe p2) 0.27504516201977147)

        (= (value_shovel s0) 1.6190067861091553)
		(= (value_shovel s1) 7.8629314986828)
		(= (value_shovel s2) 6.109513492576512)
		(= (value_shovel s3) 3.240452446407374)

        (= (value_hoe h0) 20.790643820187256)
		(= (value_hoe h1) 29.579204522604044)
		(= (value_hoe h2) 19.706763191244278)
		(= (value_hoe h3) 13.912093465525636)

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

