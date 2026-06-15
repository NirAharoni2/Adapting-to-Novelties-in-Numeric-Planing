;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_61)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5487121201348292)
		(= (value_axe a1) 0.6194145796852216)
		(= (value_axe a2) 0.9095946367815628)
		(= (value_axe a3) 0.37076689006750607)

        (= (value_pickaxe p0) 0.6965487495371933)
		(= (value_pickaxe p1) 0.07944514492180754)
		(= (value_pickaxe p2) 0.9358204436963177)

        (= (value_shovel s0) 1.7362372302305382)
		(= (value_shovel s1) 6.584412679045263)

        (= (value_hoe h0) 25.92390180038447)
		(= (value_hoe h1) 16.547906483757455)
		(= (value_hoe h2) 25.995243194856297)
		(= (value_hoe h3) 16.29225157989181)

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

