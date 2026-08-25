;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.23109714334784204)
		(= (value_axe a1) 0.42890323046835643)
		(= (value_axe a2) 0.3624112397520619)
		(= (value_axe a3) 0.33037204562308964)

        (= (value_pickaxe p0) 0.012445912981742246)
		(= (value_pickaxe p1) 0.5844194488168488)
		(= (value_pickaxe p2) 0.8269230288502927)
		(= (value_pickaxe p3) 0.7268331571142126)
		(= (value_pickaxe p4) 0.09529702565193099)

        (= (value_shovel s0) 4.712186025392018)
		(= (value_shovel s1) 2.1983679563848306)
		(= (value_shovel s2) 5.9660403207557735)
		(= (value_shovel s3) 4.123506578451286)

        (= (value_hoe h0) 28.77075142183294)
		(= (value_hoe h1) 25.895513956167886)

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

