;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.8509833700144621)
		(= (value_axe a1) 0.008495172812777785)
		(= (value_axe a2) 0.35393954915396875)
		(= (value_axe a3) 0.8909373650211041)
		(= (value_axe a4) 0.47111341534097406)

        (= (value_pickaxe p0) 0.9103515663189453)
		(= (value_pickaxe p1) 0.7566977541390711)

        (= (value_shovel s0) 5.472099891053387)
		(= (value_shovel s1) 7.308104130452442)

        (= (value_hoe h0) 18.006038541721082)
		(= (value_hoe h1) 26.718157546886548)
		(= (value_hoe h2) 18.931288859859634)
		(= (value_hoe h3) 14.591001462017177)
		(= (value_hoe h4) 27.81627698949106)

        (= (trees_in_map) 27)

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

