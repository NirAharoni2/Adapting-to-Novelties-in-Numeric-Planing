;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_59)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.41862450953594366)
		(= (value_axe a1) 0.37561510465248327)
		(= (value_axe a2) 0.1837225458627465)
		(= (value_axe a3) 0.42790927966124703)
		(= (value_axe a4) 0.7190003223155109)

        (= (value_pickaxe p0) 0.9447337989086855)
		(= (value_pickaxe p1) 0.6522176985338048)

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

