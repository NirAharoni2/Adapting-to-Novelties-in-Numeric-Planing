;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_67)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5377317942344237)
		(= (value_axe a1) 0.39079239958264134)

        (= (value_pickaxe p0) 0.005324017585244256)
		(= (value_pickaxe p1) 0.8038632441272912)
		(= (value_pickaxe p2) 0.9821579264325665)
		(= (value_pickaxe p3) 0.9072464418329662)
		(= (value_pickaxe p4) 0.6622685058344358)

        (= (value_shovel s0) 3.397328247404271)
		(= (value_shovel s1) 2.6740517953962177)
		(= (value_shovel s2) 6.425137808580024)
		(= (value_shovel s3) 7.548005580194263)
		(= (value_shovel s4) 7.722282641579502)

        (= (value_hoe h0) 13.512147571993358)
		(= (value_hoe h1) 21.707054975863276)
		(= (value_hoe h2) 20.262365373501623)

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

