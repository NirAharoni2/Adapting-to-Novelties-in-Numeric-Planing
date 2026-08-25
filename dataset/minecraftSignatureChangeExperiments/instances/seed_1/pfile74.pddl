;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_74)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.8086184725280406)
		(= (value_axe a1) 0.9861467835556362)
		(= (value_axe a2) 0.5627127615962174)

        (= (value_pickaxe p0) 0.6630509457143443)
		(= (value_pickaxe p1) 0.5449965790926056)
		(= (value_pickaxe p2) 0.2306681369815794)
		(= (value_pickaxe p3) 0.03770801900650245)

        (= (value_shovel s0) 2.174422306574907)
		(= (value_shovel s1) 5.694183911752582)

        (= (value_hoe h0) 21.087368950674954)
		(= (value_hoe h1) 14.662347563398797)

        (= (trees_in_map) 33)

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

