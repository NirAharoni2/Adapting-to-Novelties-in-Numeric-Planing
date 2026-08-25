;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_94)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5547028990121811)
		(= (value_axe a1) 0.4366512627658955)
		(= (value_axe a2) 0.6856716987302535)

        (= (value_pickaxe p0) 0.540945301359934)
		(= (value_pickaxe p1) 0.04452943935490272)
		(= (value_pickaxe p2) 0.5297056310528567)
		(= (value_pickaxe p3) 0.8775764573879357)
		(= (value_pickaxe p4) 0.8096669297011366)

        (= (value_shovel s0) 1.4363034722550148)
		(= (value_shovel s1) 6.370770964217716)
		(= (value_shovel s2) 4.919466287370474)
		(= (value_shovel s3) 3.0760805783317915)

        (= (value_hoe h0) 11.99576600549607)
		(= (value_hoe h1) 19.04725320066659)
		(= (value_hoe h2) 16.49659761475405)

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

