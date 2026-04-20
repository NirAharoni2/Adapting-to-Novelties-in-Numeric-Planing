;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_66)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.7131408892308715)
		(= (value_axe a1) 0.703008899539035)
		(= (value_axe a2) 0.6881063206187871)
		(= (value_axe a3) 0.35735355889175)
		(= (value_axe a4) 0.5810091339216524)

        (= (value_pickaxe p0) 0.5327145280167107)
		(= (value_pickaxe p1) 0.5120045100486067)

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

