;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5890022579825517)
		(= (value_axe a1) 0.034525830151341586)
		(= (value_axe a2) 0.24273997354306764)
		(= (value_axe a3) 0.7974042475543028)

        (= (value_pickaxe p0) 0.4143139993007743)
		(= (value_pickaxe p1) 0.17300740157905092)
		(= (value_pickaxe p2) 0.548798761388153)
		(= (value_pickaxe p3) 0.7030407620656315)

        (= (value_shovel s0) 5.721400813516291)
		(= (value_shovel s1) 3.622921143511482)
		(= (value_shovel s2) 4.072731410311942)
		(= (value_shovel s3) 4.558985417749873)
		(= (value_shovel s4) 6.44909830500102)

        (= (value_hoe h0) 20.4187683522629)
		(= (value_hoe h1) 17.86510189928452)
		(= (value_hoe h2) 19.793870409245166)
		(= (value_hoe h3) 10.59149927933814)
		(= (value_hoe h4) 10.869745807130549)

        (= (trees_in_map) 39)

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

