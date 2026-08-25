;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5334979199471123)
		(= (value_axe a1) 0.33612164567091696)

        (= (value_pickaxe p0) 0.2968221659308372)
		(= (value_pickaxe p1) 0.5298675077156412)
		(= (value_pickaxe p2) 0.4643367405963297)

        (= (value_shovel s0) 3.5272756797993945)
		(= (value_shovel s1) 6.215120290878905)
		(= (value_shovel s2) 5.1356328794908315)
		(= (value_shovel s3) 1.2550023944664968)

        (= (value_hoe h0) 15.048458956663044)
		(= (value_hoe h1) 19.11227445091797)
		(= (value_hoe h2) 28.33146439605961)
		(= (value_hoe h3) 27.758811516675447)

        (= (trees_in_map) 37)

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

