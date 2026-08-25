;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.4996620538645462)
		(= (value_axe a1) 0.13031173307161226)
		(= (value_axe a2) 0.27927080308475616)
		(= (value_axe a3) 0.8171380001725462)
		(= (value_axe a4) 0.19192652898293872)

        (= (value_pickaxe p0) 0.44751435808615325)
		(= (value_pickaxe p1) 0.329804983966522)

        (= (value_shovel s0) 2.875812186205116)
		(= (value_shovel s1) 2.8188991508724035)
		(= (value_shovel s2) 5.449258377415256)

        (= (value_hoe h0) 14.908517161039128)
		(= (value_hoe h1) 21.758500327939686)

        (= (trees_in_map) 38)

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

