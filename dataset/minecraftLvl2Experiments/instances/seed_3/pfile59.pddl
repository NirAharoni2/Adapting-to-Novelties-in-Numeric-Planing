;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_59)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.50948477447017)
		(= (value_axe a1) 0.9277983485030992)
		(= (value_axe a2) 0.22485673036688925)

        (= (value_pickaxe p0) 0.13891719199939578)
		(= (value_pickaxe p1) 0.3066685742643235)
		(= (value_pickaxe p2) 0.5527286022149852)
		(= (value_pickaxe p3) 0.11733072864703675)
		(= (value_pickaxe p4) 0.1736688062462891)

        (= (value_shovel s0) 7.177822683705866)
		(= (value_shovel s1) 4.015184895667048)
		(= (value_shovel s2) 6.57185088439954)
		(= (value_shovel s3) 3.6796659086077708)

        (= (value_hoe h0) 19.804309730593914)
		(= (value_hoe h1) 29.71310364956553)

        (= (trees_in_map) 35)

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

