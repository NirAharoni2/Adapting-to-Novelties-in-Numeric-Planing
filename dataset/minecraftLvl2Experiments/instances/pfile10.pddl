;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.09307475704998247)
		(= (value_axe a1) 0.8171308969478289)
		(= (value_axe a2) 0.371385296188977)
		(= (value_axe a3) 0.6446080600977723)
		(= (value_axe a4) 0.732168073946212)

        (= (value_pickaxe p0) 0.3601331160666188)
		(= (value_pickaxe p1) 0.5569082389693295)
		(= (value_pickaxe p2) 0.5887661802992799)
		(= (value_pickaxe p3) 0.835848404465478)
		(= (value_pickaxe p4) 0.4410849154166353)

        (= (value_shovel s0) 5.071862754058683)
		(= (value_shovel s1) 4.332094809458431)
		(= (value_shovel s2) 7.745401679640789)
		(= (value_shovel s3) 1.3979229776353967)

        (= (value_hoe h0) 24.789872981074424)
		(= (value_hoe h1) 29.577310143310577)
		(= (value_hoe h2) 24.87183079600205)
		(= (value_hoe h3) 26.705198773662076)

        (= (trees_in_map) 32)

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

