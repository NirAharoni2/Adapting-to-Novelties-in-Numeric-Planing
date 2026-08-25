;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_54)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5326441464420508)
		(= (value_axe a1) 0.19121318659772357)
		(= (value_axe a2) 0.7149317090953732)
		(= (value_axe a3) 0.4584161736165312)

        (= (value_pickaxe p0) 0.3876663541196821)
		(= (value_pickaxe p1) 0.33383863744263387)
		(= (value_pickaxe p2) 0.2070336393688217)

        (= (value_shovel s0) 5.526751274277965)
		(= (value_shovel s1) 6.155900595416124)
		(= (value_shovel s2) 5.007390516884262)

        (= (value_hoe h0) 25.569079054874596)
		(= (value_hoe h1) 21.03735270964711)
		(= (value_hoe h2) 24.923146489910195)
		(= (value_hoe h3) 26.74379095941026)
		(= (value_hoe h4) 20.618020071582407)

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

