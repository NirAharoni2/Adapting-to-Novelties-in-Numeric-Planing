;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5978912088924726)
		(= (value_axe a1) 0.5675927434883844)
		(= (value_axe a2) 0.43099546453059967)
		(= (value_axe a3) 0.3208215359374821)
		(= (value_axe a4) 0.8215613097360976)

        (= (value_pickaxe p0) 0.5103942914341124)
		(= (value_pickaxe p1) 0.44475228195559513)

        (= (value_shovel s0) 2.9124370733798166)
		(= (value_shovel s1) 2.813162720680589)
		(= (value_shovel s2) 1.410212743542416)
		(= (value_shovel s3) 5.818932379804823)

        (= (value_hoe h0) 20.432511360624222)
		(= (value_hoe h1) 16.831965975054473)

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

