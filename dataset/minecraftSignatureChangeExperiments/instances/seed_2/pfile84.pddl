;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_84)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.49018723154400456)
		(= (value_axe a1) 0.550379096418897)
		(= (value_axe a2) 0.772912670201204)

        (= (value_pickaxe p0) 0.2639259196371998)
		(= (value_pickaxe p1) 0.5661575818477741)
		(= (value_pickaxe p2) 0.5187325460063029)

        (= (value_shovel s0) 5.116009588408902)
		(= (value_shovel s1) 4.888400102089625)
		(= (value_shovel s2) 4.026098018023569)
		(= (value_shovel s3) 3.709939521448481)

        (= (value_hoe h0) 17.901859295369917)
		(= (value_hoe h1) 29.88758473203237)
		(= (value_hoe h2) 20.44582697000915)
		(= (value_hoe h3) 12.129760581374631)

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

