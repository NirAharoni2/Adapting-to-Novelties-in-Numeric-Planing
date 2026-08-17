;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_76)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.17849038433297848)
		(= (value_axe a1) 0.9984375804488345)
		(= (value_axe a2) 0.6879838137983062)
		(= (value_axe a3) 0.6316081500316818)

        (= (value_pickaxe p0) 0.46906240674516386)
		(= (value_pickaxe p1) 0.013127324985753308)
		(= (value_pickaxe p2) 0.22324631321203947)
		(= (value_pickaxe p3) 0.8022201825136264)
		(= (value_pickaxe p4) 0.27129437588296434)

        (= (value_shovel s0) 5.233192471763465)
		(= (value_shovel s1) 4.418129674740876)
		(= (value_shovel s2) 2.207260405990764)

        (= (value_hoe h0) 11.122801420727637)
		(= (value_hoe h1) 11.313351074935627)
		(= (value_hoe h2) 24.25843258831754)
		(= (value_hoe h3) 14.76172563159089)
		(= (value_hoe h4) 20.22021754355017)

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

