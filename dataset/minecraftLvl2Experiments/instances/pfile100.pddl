;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_100)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.7030898086276398)
		(= (value_axe a1) 0.22037884382673023)
		(= (value_axe a2) 0.08141167957661233)
		(= (value_axe a3) 0.7038091603031437)

        (= (value_pickaxe p0) 0.808547908409649)
		(= (value_pickaxe p1) 0.685874068206582)
		(= (value_pickaxe p2) 0.15244891152725037)
		(= (value_pickaxe p3) 0.8781013358203502)
		(= (value_pickaxe p4) 0.6355067540850146)

        (= (value_shovel s0) 5.6811896231432435)
		(= (value_shovel s1) 2.0313031685840004)

        (= (value_hoe h0) 23.895802909211206)
		(= (value_hoe h1) 26.17087202816561)
		(= (value_hoe h2) 13.182030297394093)
		(= (value_hoe h3) 21.720693262862437)

        (= (trees_in_map) 30)

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

