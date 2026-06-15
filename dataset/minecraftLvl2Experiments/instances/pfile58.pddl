;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_58)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.8290449821461809)
		(= (value_axe a1) 0.312541776104744)
		(= (value_axe a2) 0.29888807120173944)
		(= (value_axe a3) 0.6394042933817692)
		(= (value_axe a4) 0.04593536785825125)

        (= (value_pickaxe p0) 0.9617584979438925)
		(= (value_pickaxe p1) 0.16401667202508075)
		(= (value_pickaxe p2) 0.573962201249424)
		(= (value_pickaxe p3) 0.10916006138256984)
		(= (value_pickaxe p4) 0.6850573325326214)

        (= (value_shovel s0) 1.1465171188915977)
		(= (value_shovel s1) 5.731073256427698)
		(= (value_shovel s2) 6.129024125697182)
		(= (value_shovel s3) 2.1862784031437448)

        (= (value_hoe h0) 29.033271419187184)
		(= (value_hoe h1) 28.261125655572677)

        (= (trees_in_map) 21)

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

