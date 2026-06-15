;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.20313451282100958)
		(= (value_axe a1) 0.5034912103388822)
		(= (value_axe a2) 0.6489902498711264)
		(= (value_axe a3) 0.3655040010540326)
		(= (value_axe a4) 0.22057725122328142)

        (= (value_pickaxe p0) 0.6768688420999149)
		(= (value_pickaxe p1) 0.4776661987237115)
		(= (value_pickaxe p2) 0.6682436049703177)

        (= (value_shovel s0) 1.1038629234515338)
		(= (value_shovel s1) 1.1438028101028435)
		(= (value_shovel s2) 7.98051422062227)
		(= (value_shovel s3) 6.682751916746471)
		(= (value_shovel s4) 3.0159640227527635)

        (= (value_hoe h0) 23.634269938602458)
		(= (value_hoe h1) 22.151140147395587)
		(= (value_hoe h2) 13.265254319903478)

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

