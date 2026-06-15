;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.3956417330159465)
		(= (value_axe a1) 0.18509057856665945)
		(= (value_axe a2) 0.47416347101923517)
		(= (value_axe a3) 0.04581845619461433)
		(= (value_axe a4) 0.17609319689660619)

        (= (value_pickaxe p0) 0.13229717727884294)
		(= (value_pickaxe p1) 0.4758940767102259)
		(= (value_pickaxe p2) 0.12709500364469029)
		(= (value_pickaxe p3) 0.37548428614378526)

        (= (value_shovel s0) 1.1648245467453047)
		(= (value_shovel s1) 5.932688728951564)
		(= (value_shovel s2) 4.43316783426679)
		(= (value_shovel s3) 5.484601239045995)

        (= (value_hoe h0) 24.781427627763023)
		(= (value_hoe h1) 13.571814587747992)
		(= (value_hoe h2) 22.41733334469931)
		(= (value_hoe h3) 26.88693798478453)
		(= (value_hoe h4) 28.230740577279786)

        (= (trees_in_map) 23)

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

