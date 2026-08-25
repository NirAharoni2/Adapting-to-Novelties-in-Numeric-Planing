;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_97)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.9485608218271286)
		(= (value_axe a1) 0.032630316742207066)
		(= (value_axe a2) 0.2708849600348776)
		(= (value_axe a3) 0.6138959654540067)

        (= (value_pickaxe p0) 0.9649317249532751)
		(= (value_pickaxe p1) 0.2101678852914196)
		(= (value_pickaxe p2) 0.24696951238618936)
		(= (value_pickaxe p3) 0.8479079477817154)

        (= (value_shovel s0) 3.2894623722385203)
		(= (value_shovel s1) 3.8206871204852533)

        (= (value_hoe h0) 17.19480362123823)
		(= (value_hoe h1) 10.989068334065827)
		(= (value_hoe h2) 28.83643855013467)

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

