;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_92)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.22489299756683112)
		(= (value_axe a1) 0.304185501528476)
		(= (value_axe a2) 0.8060369796885566)

        (= (value_pickaxe p0) 0.05879651602253644)
		(= (value_pickaxe p1) 0.31385907439926186)

        (= (value_shovel s0) 6.085330851555554)
		(= (value_shovel s1) 1.4397325503142233)
		(= (value_shovel s2) 4.102226071435189)

        (= (value_hoe h0) 14.61876258896395)
		(= (value_hoe h1) 24.952223939632386)
		(= (value_hoe h2) 29.235690138388165)

        (= (trees_in_map) 21)

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

