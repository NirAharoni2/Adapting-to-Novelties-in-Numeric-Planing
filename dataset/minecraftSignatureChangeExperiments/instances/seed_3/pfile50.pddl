;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.27088757763966664)
		(= (value_axe a1) 0.9499136882862831)
		(= (value_axe a2) 0.9438038044925102)
		(= (value_axe a3) 0.31739442505363635)
		(= (value_axe a4) 0.39253503497822007)

        (= (value_pickaxe p0) 0.2819476055767497)
		(= (value_pickaxe p1) 0.13151459706844304)
		(= (value_pickaxe p2) 0.2502239377301051)
		(= (value_pickaxe p3) 0.9801710538519083)
		(= (value_pickaxe p4) 0.07926159721019232)

        (= (value_shovel s0) 2.6082642353886327)
		(= (value_shovel s1) 2.399962508397356)
		(= (value_shovel s2) 1.5567241228172968)
		(= (value_shovel s3) 4.6837481096829245)

        (= (value_hoe h0) 24.860380833191613)
		(= (value_hoe h1) 26.765675712170708)

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

