;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_57)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5584358584096767)
		(= (value_axe a1) 0.2141938707163179)
		(= (value_axe a2) 0.2075629511366608)
		(= (value_axe a3) 0.2843976874368095)

        (= (value_pickaxe p0) 0.8038299820669125)
		(= (value_pickaxe p1) 0.23499260214659423)
		(= (value_pickaxe p2) 0.8535193822763918)

        (= (value_shovel s0) 3.2906498221594287)
		(= (value_shovel s1) 6.810279794970846)

        (= (value_hoe h0) 28.49393887163246)
		(= (value_hoe h1) 25.00097160956866)
		(= (value_hoe h2) 22.77590200029875)
		(= (value_hoe h3) 27.947261562605185)
		(= (value_hoe h4) 23.09920775347468)

        (= (trees_in_map) 26)

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

