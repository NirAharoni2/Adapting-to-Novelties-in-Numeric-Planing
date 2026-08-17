;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.6284485019821408)
		(= (value_axe a1) 0.2675262446471117)
		(= (value_axe a2) 0.9128628900924319)

        (= (value_pickaxe p0) 0.9594388378770715)
		(= (value_pickaxe p1) 0.13912615902147096)

        (= (value_shovel s0) 6.43030075221001)
		(= (value_shovel s1) 6.893516009804666)

        (= (value_hoe h0) 23.194347126279652)
		(= (value_hoe h1) 24.00815532833461)
		(= (value_hoe h2) 18.901174642290233)
		(= (value_hoe h3) 28.48615605249856)

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

