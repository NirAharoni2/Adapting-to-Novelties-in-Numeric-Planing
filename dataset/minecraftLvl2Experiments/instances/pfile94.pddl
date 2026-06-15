;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_94)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5030770651618461)
		(= (value_axe a1) 0.8689749397516916)

        (= (value_pickaxe p0) 0.6627632984958535)
		(= (value_pickaxe p1) 0.15844071165581985)
		(= (value_pickaxe p2) 0.8991600854540114)
		(= (value_pickaxe p3) 0.48768501971253553)

        (= (value_shovel s0) 6.113650622781145)
		(= (value_shovel s1) 3.0586208976473017)

        (= (value_hoe h0) 28.82008852108132)
		(= (value_hoe h1) 29.033534912559936)

        (= (trees_in_map) 34)

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

