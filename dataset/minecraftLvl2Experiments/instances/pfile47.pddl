;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_47)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.9907052824551889)
		(= (value_axe a1) 0.09293867223217456)
		(= (value_axe a2) 0.09750731441275007)
		(= (value_axe a3) 0.7902509383473384)
		(= (value_axe a4) 0.6889987314463055)

        (= (value_pickaxe p0) 0.10927881481406165)
		(= (value_pickaxe p1) 0.724827740388261)
		(= (value_pickaxe p2) 0.797775622026765)

        (= (value_shovel s0) 5.812014282344713)
		(= (value_shovel s1) 5.099895770181581)
		(= (value_shovel s2) 7.153328593780407)
		(= (value_shovel s3) 1.2293827005882267)

        (= (value_hoe h0) 17.86536513926455)
		(= (value_hoe h1) 18.47180037297801)

        (= (trees_in_map) 20)

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

