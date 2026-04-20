;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.5841824088693632)
		(= (value_axe a1) 0.8570746562071495)
		(= (value_axe a2) 0.7784579435670711)
		(= (value_axe a3) 0.6187585165087741)

        (= (value_pickaxe p0) 0.7911780164392175)
		(= (value_pickaxe p1) 0.4699845178936126)

        (= (trees_in_map) 25)

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

