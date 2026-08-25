;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.15619899101356471)
		(= (value_axe a1) 0.04243582472120422)
		(= (value_axe a2) 0.8677790339277224)

        (= (value_pickaxe p0) 0.3138305199160917)
		(= (value_pickaxe p1) 0.958659426408455)
		(= (value_pickaxe p2) 0.8966596414276016)
		(= (value_pickaxe p3) 0.3777892394121827)
		(= (value_pickaxe p4) 0.46040963284590475)

        (= (value_shovel s0) 4.640510892147947)
		(= (value_shovel s1) 5.507221028714088)
		(= (value_shovel s2) 5.169551668813794)
		(= (value_shovel s3) 4.914827434107734)

        (= (value_hoe h0) 22.402522708905238)
		(= (value_hoe h1) 28.812425108479264)
		(= (value_hoe h2) 20.140536318913195)
		(= (value_hoe h3) 18.623831068618657)

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

