;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_75)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.6611271480529495)
		(= (value_axe a1) 0.12969476885268494)

        (= (value_pickaxe p0) 0.8531518228229903)
		(= (value_pickaxe p1) 0.43411769792233246)

        (= (value_shovel s0) 5.830684547704151)
		(= (value_shovel s1) 1.9052914127362879)
		(= (value_shovel s2) 5.650726746840094)
		(= (value_shovel s3) 2.0947411198665815)
		(= (value_shovel s4) 5.979161574987147)

        (= (value_hoe h0) 27.328029641637517)
		(= (value_hoe h1) 10.565586918983225)

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

