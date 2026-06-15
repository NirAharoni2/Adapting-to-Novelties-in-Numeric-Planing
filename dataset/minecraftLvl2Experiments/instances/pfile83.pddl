;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_83)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5416221078196193)
		(= (value_axe a1) 0.5828399880966055)
		(= (value_axe a2) 0.23857435153948792)
		(= (value_axe a3) 0.6642777516696208)
		(= (value_axe a4) 0.45508080114100424)

        (= (value_pickaxe p0) 0.48050745732991107)
		(= (value_pickaxe p1) 0.444134395497393)

        (= (value_shovel s0) 1.4733450034113686)
		(= (value_shovel s1) 1.8138255461919304)
		(= (value_shovel s2) 6.08574284553129)
		(= (value_shovel s3) 4.077807051195996)

        (= (value_hoe h0) 20.893985987242946)
		(= (value_hoe h1) 10.483497254567585)
		(= (value_hoe h2) 18.540916456077948)
		(= (value_hoe h3) 12.488841266935577)
		(= (value_hoe h4) 11.573251365097313)

        (= (trees_in_map) 28)

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

