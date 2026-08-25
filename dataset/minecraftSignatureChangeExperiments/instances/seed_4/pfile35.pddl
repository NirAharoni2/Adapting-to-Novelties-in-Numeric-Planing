;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7602945065684507)
		(= (value_axe a1) 0.5295493281703463)
		(= (value_axe a2) 0.7535759207579291)
		(= (value_axe a3) 0.06244422411956008)
		(= (value_axe a4) 0.14044673210266623)

        (= (value_pickaxe p0) 0.9187760160637738)
		(= (value_pickaxe p1) 0.044993959387051086)
		(= (value_pickaxe p2) 0.3465747872692482)
		(= (value_pickaxe p3) 0.6034236166890935)

        (= (value_shovel s0) 7.421272157978552)
		(= (value_shovel s1) 3.5222036652589512)
		(= (value_shovel s2) 2.4014439808849892)

        (= (value_hoe h0) 23.542618167406413)
		(= (value_hoe h1) 26.015325698920996)
		(= (value_hoe h2) 25.778109865316097)
		(= (value_hoe h3) 10.649059159088953)
		(= (value_hoe h4) 13.976764208930684)

        (= (trees_in_map) 26)

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

