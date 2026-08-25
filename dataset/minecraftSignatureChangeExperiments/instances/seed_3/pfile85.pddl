;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_85)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.05622525910517673)
		(= (value_axe a1) 0.9046426668398113)

        (= (value_pickaxe p0) 0.26550657733026284)
		(= (value_pickaxe p1) 0.28814181557405416)
		(= (value_pickaxe p2) 0.9457688221777028)
		(= (value_pickaxe p3) 0.20050713755973448)
		(= (value_pickaxe p4) 0.9225918889349113)

        (= (value_shovel s0) 3.178029987554809)
		(= (value_shovel s1) 5.6537820445042986)
		(= (value_shovel s2) 1.7469269555267228)
		(= (value_shovel s3) 7.288595552834973)
		(= (value_shovel s4) 3.7903992981333787)

        (= (value_hoe h0) 16.900975375615943)
		(= (value_hoe h1) 23.087412979995307)
		(= (value_hoe h2) 21.86784360377733)
		(= (value_hoe h3) 15.019516013155824)

        (= (trees_in_map) 23)

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

