;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_79)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.17584918891842038)
		(= (value_axe a1) 0.4464224426421094)

        (= (value_pickaxe p0) 0.7855183713429233)
		(= (value_pickaxe p1) 0.16558234390252846)
		(= (value_pickaxe p2) 0.2647376074105613)
		(= (value_pickaxe p3) 0.5276145959616892)
		(= (value_pickaxe p4) 0.465483033298037)

        (= (value_shovel s0) 7.797936519712879)
		(= (value_shovel s1) 4.662059259219289)
		(= (value_shovel s2) 7.479163238171477)

        (= (value_hoe h0) 10.106313450637568)
		(= (value_hoe h1) 14.198295592511897)
		(= (value_hoe h2) 27.555931992367416)
		(= (value_hoe h3) 23.33108062515023)

        (= (trees_in_map) 31)

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

