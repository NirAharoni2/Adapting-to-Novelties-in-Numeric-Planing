;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_77)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.10517783121954083)
		(= (value_axe a1) 0.13363222479582948)
		(= (value_axe a2) 0.24698941041689548)
		(= (value_axe a3) 0.7225791521259085)
		(= (value_axe a4) 0.5828663680957108)

        (= (value_pickaxe p0) 0.16469931785880143)
		(= (value_pickaxe p1) 0.8931042110008817)
		(= (value_pickaxe p2) 0.624788786161919)
		(= (value_pickaxe p3) 0.5817830296714152)
		(= (value_pickaxe p4) 0.2415520487814259)

        (= (trees_in_map) 24)

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

