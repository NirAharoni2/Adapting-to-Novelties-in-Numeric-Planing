;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.7113156881024935)
		(= (value_axe a1) 0.23956683235463616)
		(= (value_axe a2) 0.5378806981085478)
		(= (value_axe a3) 0.0025647220865544496)

        (= (value_pickaxe p0) 0.4028354205261573)
		(= (value_pickaxe p1) 0.5724215007946691)

        (= (value_shovel s0) 5.520434814944279)
		(= (value_shovel s1) 4.962984282040251)
		(= (value_shovel s2) 4.338893252557423)
		(= (value_shovel s3) 6.680925194863999)

        (= (value_hoe h0) 28.171267954057125)
		(= (value_hoe h1) 18.97122335030462)
		(= (value_hoe h2) 19.082922770877587)

        (= (trees_in_map) 31)

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

