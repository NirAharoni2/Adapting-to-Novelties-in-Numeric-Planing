;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_92)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5428279707591726)
		(= (value_axe a1) 0.8736022280258571)

        (= (value_pickaxe p0) 0.3172397563307673)
		(= (value_pickaxe p1) 0.946314231933559)
		(= (value_pickaxe p2) 0.04362018727663497)
		(= (value_pickaxe p3) 0.8952035952436254)
		(= (value_pickaxe p4) 0.4242553068922985)

        (= (value_shovel s0) 1.0216157794044651)
		(= (value_shovel s1) 2.816237843344576)
		(= (value_shovel s2) 7.921535854628773)
		(= (value_shovel s3) 6.014185836457456)

        (= (value_hoe h0) 24.745091659973895)
		(= (value_hoe h1) 26.221271022592454)
		(= (value_hoe h2) 10.127779292161774)

        (= (trees_in_map) 29)

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

