;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_42)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.3062047556740577)
		(= (value_axe a1) 0.23022204567689986)

        (= (value_pickaxe p0) 0.9368034440729293)
		(= (value_pickaxe p1) 0.2944660687953299)
		(= (value_pickaxe p2) 0.9055721446891066)
		(= (value_pickaxe p3) 0.6920317257332902)
		(= (value_pickaxe p4) 0.5605978010761307)

        (= (value_shovel s0) 1.2999335729787096)
		(= (value_shovel s1) 7.563584852825529)
		(= (value_shovel s2) 6.880962573181661)
		(= (value_shovel s3) 1.2710044388800354)

        (= (value_hoe h0) 19.596207510630276)
		(= (value_hoe h1) 13.988811633499072)
		(= (value_hoe h2) 26.48150924142816)

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

