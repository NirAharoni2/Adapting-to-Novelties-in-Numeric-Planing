;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.013187976753802011)
		(= (value_axe a1) 0.4323571987780902)

        (= (value_pickaxe p0) 0.3382689791584961)
		(= (value_pickaxe p1) 0.05126266631101639)
		(= (value_pickaxe p2) 0.5460156784297958)
		(= (value_pickaxe p3) 0.09381763227297912)
		(= (value_pickaxe p4) 0.31161519335002985)

        (= (value_shovel s0) 2.7306292854534044)
		(= (value_shovel s1) 6.614889051692666)
		(= (value_shovel s2) 3.927530378552185)

        (= (value_hoe h0) 15.207099518110345)
		(= (value_hoe h1) 10.880150203309022)
		(= (value_hoe h2) 18.591261511641015)

        (= (trees_in_map) 40)

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

