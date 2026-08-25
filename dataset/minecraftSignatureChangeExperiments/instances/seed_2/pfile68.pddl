;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_68)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.8861932319629189)
		(= (value_axe a1) 0.9036492378881162)
		(= (value_axe a2) 0.7164581003479222)
		(= (value_axe a3) 0.543722963845028)
		(= (value_axe a4) 0.03295134436234992)

        (= (value_pickaxe p0) 0.27661670075468203)
		(= (value_pickaxe p1) 0.23960505862228976)

        (= (value_shovel s0) 2.6989022145434918)
		(= (value_shovel s1) 2.512157743666903)
		(= (value_shovel s2) 5.676271875612575)

        (= (value_hoe h0) 23.597753468795744)
		(= (value_hoe h1) 13.519059810693093)
		(= (value_hoe h2) 28.036482604313694)

        (= (trees_in_map) 20)

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

