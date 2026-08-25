;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_80)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.46118397658298327)
		(= (value_axe a1) 0.8303874556605501)
		(= (value_axe a2) 0.17069209037477684)

        (= (value_pickaxe p0) 0.173662642385491)
		(= (value_pickaxe p1) 0.6164935301522667)
		(= (value_pickaxe p2) 0.1450607606502684)
		(= (value_pickaxe p3) 0.5453143183257613)
		(= (value_pickaxe p4) 0.12437050429272867)

        (= (value_shovel s0) 2.307960772460246)
		(= (value_shovel s1) 3.339850664761453)

        (= (value_hoe h0) 25.662108369860373)
		(= (value_hoe h1) 22.223240098948686)
		(= (value_hoe h2) 22.166444550955347)
		(= (value_hoe h3) 22.555198640726726)
		(= (value_hoe h4) 17.935011733157218)

        (= (trees_in_map) 39)

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

