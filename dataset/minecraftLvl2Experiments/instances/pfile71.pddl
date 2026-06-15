;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_71)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5396870167002684)
		(= (value_axe a1) 0.838081625067944)
		(= (value_axe a2) 0.8001677962530259)
		(= (value_axe a3) 0.28734179867111986)

        (= (value_pickaxe p0) 0.4535780418532963)
		(= (value_pickaxe p1) 0.7986322500836452)
		(= (value_pickaxe p2) 0.6314153938034898)
		(= (value_pickaxe p3) 0.27694411444914924)

        (= (value_shovel s0) 6.816701504310888)
		(= (value_shovel s1) 4.125865229357532)
		(= (value_shovel s2) 2.7060376595780546)
		(= (value_shovel s3) 7.910244320898039)
		(= (value_shovel s4) 4.409013814609499)

        (= (value_hoe h0) 27.863902837663193)
		(= (value_hoe h1) 14.055593154016561)

        (= (trees_in_map) 30)

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

