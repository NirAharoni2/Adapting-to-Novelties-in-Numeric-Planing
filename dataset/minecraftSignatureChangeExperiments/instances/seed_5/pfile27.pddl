;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_52)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.6548770004765759)
		(= (value_axe a1) 0.9247923635406493)
		(= (value_axe a2) 0.37045252746874424)
		(= (value_axe a3) 0.5300656726632706)

        (= (value_pickaxe p0) 0.713178728394939)
		(= (value_pickaxe p1) 0.9372949718998201)
		(= (value_pickaxe p2) 0.9496541201362685)
		(= (value_pickaxe p3) 0.9880262268917114)
		(= (value_pickaxe p4) 0.30177249645269855)

        (= (value_shovel s0) 2.166511834681969)
		(= (value_shovel s1) 7.523235639756104)
		(= (value_shovel s2) 1.5416733437228616)
		(= (value_shovel s3) 4.141068535942159)
		(= (value_shovel s4) 6.153469044599184)

        (= (value_hoe h0) 20.57481462050483)
		(= (value_hoe h1) 17.774889334806883)

        (= (trees_in_map) 36)

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

