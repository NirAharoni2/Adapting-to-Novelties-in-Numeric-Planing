;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_88)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5237622473414232)
		(= (value_axe a1) 0.7222158027892744)
		(= (value_axe a2) 0.7652598307380932)

        (= (value_pickaxe p0) 0.4681422448245601)
		(= (value_pickaxe p1) 0.9395564533071747)
		(= (value_pickaxe p2) 0.4430029215758593)
		(= (value_pickaxe p3) 0.5664533468978499)
		(= (value_pickaxe p4) 0.9915514084426359)

        (= (value_shovel s0) 3.2664156554181307)
		(= (value_shovel s1) 5.998090718259439)
		(= (value_shovel s2) 7.694383815135797)
		(= (value_shovel s3) 1.5910717163928108)
		(= (value_shovel s4) 6.440311246530622)

        (= (value_hoe h0) 23.037194977436574)
		(= (value_hoe h1) 20.794365204973694)
		(= (value_hoe h2) 25.791395010272893)
		(= (value_hoe h3) 27.199247580065126)
		(= (value_hoe h4) 12.932553442376786)

        (= (trees_in_map) 35)

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

