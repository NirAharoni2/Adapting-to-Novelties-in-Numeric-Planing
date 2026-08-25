;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_87)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.37963735543241817)
		(= (value_axe a1) 0.1383572315770938)

        (= (value_pickaxe p0) 0.20100377487682153)
		(= (value_pickaxe p1) 0.4060732421625265)
		(= (value_pickaxe p2) 0.03158329928621084)

        (= (value_shovel s0) 7.029077536972756)
		(= (value_shovel s1) 6.797342843495842)
		(= (value_shovel s2) 3.3848035223251225)
		(= (value_shovel s3) 2.4730574054225647)
		(= (value_shovel s4) 7.633381865948511)

        (= (value_hoe h0) 23.786646206994902)
		(= (value_hoe h1) 22.79856544976924)

        (= (trees_in_map) 34)

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

