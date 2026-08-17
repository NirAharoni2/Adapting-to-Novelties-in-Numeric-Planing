;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.06699890387686736)
		(= (value_axe a1) 0.4424835221450134)

        (= (value_pickaxe p0) 0.16413876047107268)
		(= (value_pickaxe p1) 0.7102440591612986)
		(= (value_pickaxe p2) 0.16162714876568007)
		(= (value_pickaxe p3) 0.09305344076397803)
		(= (value_pickaxe p4) 0.635972475177856)

        (= (value_shovel s0) 2.930569136403183)
		(= (value_shovel s1) 3.1308229898082143)

        (= (value_hoe h0) 20.56185591335719)
		(= (value_hoe h1) 14.74467052311082)
		(= (value_hoe h2) 16.67890850738722)
		(= (value_hoe h3) 11.371083419752832)

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

