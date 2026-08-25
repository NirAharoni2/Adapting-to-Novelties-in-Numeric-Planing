;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7687918872773446)
		(= (value_axe a1) 0.8727670246282013)
		(= (value_axe a2) 0.04419006112954338)

        (= (value_pickaxe p0) 0.6145325285318086)
		(= (value_pickaxe p1) 0.0449402434960362)

        (= (value_shovel s0) 6.0290833421396135)
		(= (value_shovel s1) 3.3166790221330524)
		(= (value_shovel s2) 7.166337150731506)
		(= (value_shovel s3) 7.864450297903377)

        (= (value_hoe h0) 20.10840747296088)
		(= (value_hoe h1) 29.970178907515532)
		(= (value_hoe h2) 16.19340106952678)
		(= (value_hoe h3) 11.539414094108238)
		(= (value_hoe h4) 21.995256175932013)

        (= (trees_in_map) 21)

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

