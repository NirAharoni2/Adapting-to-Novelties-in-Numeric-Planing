;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_85)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.3512483431431085)
		(= (value_axe a1) 0.08920683416714259)
		(= (value_axe a2) 0.012167546496454795)
		(= (value_axe a3) 0.13036587546090628)
		(= (value_axe a4) 0.0033292016746989672)

        (= (value_pickaxe p0) 0.3550258022469024)
		(= (value_pickaxe p1) 0.862978422793937)
		(= (value_pickaxe p2) 0.3994162689998343)
		(= (value_pickaxe p3) 0.429499902675915)
		(= (value_pickaxe p4) 0.18683276671930538)

        (= (value_shovel s0) 5.454682241532913)
		(= (value_shovel s1) 7.2654823599885905)
		(= (value_shovel s2) 3.9063960828570528)

        (= (value_hoe h0) 21.149904140713005)
		(= (value_hoe h1) 13.939387957137566)
		(= (value_hoe h2) 28.476932275369325)
		(= (value_hoe h3) 14.668865102813784)

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

