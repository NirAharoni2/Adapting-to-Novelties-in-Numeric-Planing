;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_58)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.4392537725906247)
		(= (value_axe a1) 0.9078730169811825)
		(= (value_axe a2) 0.6853511547679358)
		(= (value_axe a3) 0.10421978372645191)

        (= (value_pickaxe p0) 0.4951049696370807)
		(= (value_pickaxe p1) 0.32336685225302375)
		(= (value_pickaxe p2) 3.1466565440618766e-05)
		(= (value_pickaxe p3) 0.06430232982844797)

        (= (value_shovel s0) 1.0014924479769713)
		(= (value_shovel s1) 7.196349945447199)
		(= (value_shovel s2) 2.463877866003745)
		(= (value_shovel s3) 4.046176314211313)

        (= (value_hoe h0) 13.937186007125746)
		(= (value_hoe h1) 10.56800895017307)
		(= (value_hoe h2) 24.66448916812472)
		(= (value_hoe h3) 16.276473184579793)
		(= (value_hoe h4) 18.888885190697522)

        (= (trees_in_map) 31)

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

