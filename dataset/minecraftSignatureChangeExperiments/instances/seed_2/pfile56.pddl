;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_56)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.7193819364429808)
		(= (value_axe a1) 0.8610973920243336)

        (= (value_pickaxe p0) 0.7532257813800045)
		(= (value_pickaxe p1) 0.13689141699569962)

        (= (value_shovel s0) 6.165911245738703)
		(= (value_shovel s1) 7.868415578606263)
		(= (value_shovel s2) 5.737768981652222)
		(= (value_shovel s3) 4.3643977987671825)

        (= (value_hoe h0) 15.898529633442116)
		(= (value_hoe h1) 11.274058951514917)
		(= (value_hoe h2) 22.507306359784288)

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

