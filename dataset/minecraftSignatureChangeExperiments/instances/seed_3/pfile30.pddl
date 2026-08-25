;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.13558778514892045)
		(= (value_axe a1) 0.7923756620938723)
		(= (value_axe a2) 0.6232778945828132)
		(= (value_axe a3) 0.050606988560535804)
		(= (value_axe a4) 0.3599010155971557)

        (= (value_pickaxe p0) 0.23341378946567992)
		(= (value_pickaxe p1) 0.07783631606845709)

        (= (value_shovel s0) 4.772160195799923)
		(= (value_shovel s1) 7.50875801874293)
		(= (value_shovel s2) 3.261822635668745)
		(= (value_shovel s3) 7.0935753167169056)

        (= (value_hoe h0) 23.89319430193563)
		(= (value_hoe h1) 12.687133413629944)
		(= (value_hoe h2) 27.165824299915673)

        (= (trees_in_map) 39)

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

