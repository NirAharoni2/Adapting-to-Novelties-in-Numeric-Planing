;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.529340080769396)
		(= (value_axe a1) 0.1661726176638394)
		(= (value_axe a2) 0.8366202813538083)
		(= (value_axe a3) 0.9373816911418348)
		(= (value_axe a4) 0.4772389328692719)

        (= (value_pickaxe p0) 0.6914255848440284)
		(= (value_pickaxe p1) 0.7196864759240917)
		(= (value_pickaxe p2) 0.7303534255671007)
		(= (value_pickaxe p3) 0.17182675463542674)

        (= (value_shovel s0) 6.462601397585672)
		(= (value_shovel s1) 5.065917101615565)
		(= (value_shovel s2) 5.6588936042414435)
		(= (value_shovel s3) 3.9455442139406696)

        (= (value_hoe h0) 22.47474186915276)
		(= (value_hoe h1) 25.49409491824033)
		(= (value_hoe h2) 22.73733336787016)

        (= (trees_in_map) 20)

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

