;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.0017748622025346439)
		(= (value_axe a1) 0.8714047447242821)
		(= (value_axe a2) 0.2094563824951179)

        (= (value_pickaxe p0) 0.21548116922473226)
		(= (value_pickaxe p1) 0.9824211088259253)
		(= (value_pickaxe p2) 0.8724077654368019)
		(= (value_pickaxe p3) 0.2893051677469265)
		(= (value_pickaxe p4) 0.9614779889500835)

        (= (value_shovel s0) 4.774564282095675)
		(= (value_shovel s1) 5.744813340754146)
		(= (value_shovel s2) 2.43345660173655)

        (= (value_hoe h0) 28.81952002175998)
		(= (value_hoe h1) 23.812838822138165)
		(= (value_hoe h2) 29.331286246343907)

        (= (trees_in_map) 32)

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

