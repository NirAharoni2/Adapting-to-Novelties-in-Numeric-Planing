;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.972697465951802)
		(= (value_axe a1) 0.6650627515572735)
		(= (value_axe a2) 0.8205961824320323)
		(= (value_axe a3) 0.13976522312678064)
		(= (value_axe a4) 0.6247974736680786)

        (= (value_pickaxe p0) 0.354298262564966)
		(= (value_pickaxe p1) 0.2350188440814771)
		(= (value_pickaxe p2) 0.3332650805304944)

        (= (value_shovel s0) 5.2963015879487685)
		(= (value_shovel s1) 3.440702181848067)

        (= (value_hoe h0) 17.714958992323112)
		(= (value_hoe h1) 12.728508073497194)

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

