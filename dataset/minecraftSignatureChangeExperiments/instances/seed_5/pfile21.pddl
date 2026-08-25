;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.9104225407687644)
		(= (value_axe a1) 0.5548908676943454)
		(= (value_axe a2) 0.6208778263672488)

        (= (value_pickaxe p0) 0.26324672299017104)
		(= (value_pickaxe p1) 0.5516752990754864)
		(= (value_pickaxe p2) 0.254190257434606)
		(= (value_pickaxe p3) 0.7505786142009662)

        (= (value_shovel s0) 4.618969938350624)
		(= (value_shovel s1) 1.936465953709198)
		(= (value_shovel s2) 2.6409421938994404)

        (= (value_hoe h0) 17.424282499155137)
		(= (value_hoe h1) 24.73505785895938)
		(= (value_hoe h2) 13.586407770392716)
		(= (value_hoe h3) 24.265926185055267)

        (= (trees_in_map) 40)

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

