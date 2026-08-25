;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_87)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.6074370618222663)
		(= (value_axe a1) 0.23257209380870025)

        (= (value_pickaxe p0) 0.9623895260993471)
		(= (value_pickaxe p1) 0.700553377640537)
		(= (value_pickaxe p2) 0.1829842534328111)

        (= (value_shovel s0) 6.363525512049804)
		(= (value_shovel s1) 4.529222482807055)
		(= (value_shovel s2) 5.018300916890627)
		(= (value_shovel s3) 3.5605106288016315)

        (= (value_hoe h0) 15.875030514302209)
		(= (value_hoe h1) 18.40873150931887)
		(= (value_hoe h2) 20.5280445475942)
		(= (value_hoe h3) 19.22886026064795)
		(= (value_hoe h4) 27.32531292109549)

        (= (trees_in_map) 22)

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

