;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.6872421966577477)
		(= (value_axe a1) 0.5627755309150185)
		(= (value_axe a2) 0.9068062611875043)

        (= (value_pickaxe p0) 0.18460034404937076)
		(= (value_pickaxe p1) 0.41110881372687)

        (= (value_shovel s0) 6.095721530451849)
		(= (value_shovel s1) 1.3507352373160155)
		(= (value_shovel s2) 1.6945568460983964)

        (= (value_hoe h0) 20.91415802856041)
		(= (value_hoe h1) 15.314584331908495)
		(= (value_hoe h2) 12.13875192468535)
		(= (value_hoe h3) 15.233951369937245)

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

