;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.8354988781294496)
		(= (value_axe a1) 0.7359699890685233)

        (= (value_pickaxe p0) 0.6697304014402209)
		(= (value_pickaxe p1) 0.3081364575891442)

        (= (value_shovel s0) 5.241609159749237)
		(= (value_shovel s1) 5.247612135485865)

        (= (value_hoe h0) 21.624080342240063)
		(= (value_hoe h1) 13.167657405096111)
		(= (value_hoe h2) 18.613392805825374)
		(= (value_hoe h3) 17.87063640410743)

        (= (trees_in_map) 36)

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

