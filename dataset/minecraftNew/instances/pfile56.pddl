;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_56)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.8494829685882691)
		(= (value_axe a1) 0.5921364430313665)
		(= (value_axe a2) 0.509879976244574)
		(= (value_axe a3) 0.19409633188425213)
		(= (value_axe a4) 0.06650544947192827)

        (= (value_pickaxe p0) 0.46358015799502217)
		(= (value_pickaxe p1) 0.8173885005691461)
		(= (value_pickaxe p2) 0.9359738971263698)

        (= (trees_in_map) 38)

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

