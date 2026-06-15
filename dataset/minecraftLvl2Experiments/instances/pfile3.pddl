;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.29464533880141575)
		(= (value_axe a1) 0.695980315152842)
		(= (value_axe a2) 0.5395909769311095)
		(= (value_axe a3) 0.8140944626209901)

        (= (value_pickaxe p0) 0.9898792521427515)
		(= (value_pickaxe p1) 0.2774790836292015)
		(= (value_pickaxe p2) 0.7336383490633376)
		(= (value_pickaxe p3) 0.9797286592489982)
		(= (value_pickaxe p4) 0.2639337681750229)

        (= (value_shovel s0) 3.0442513674026594)
		(= (value_shovel s1) 3.505759833735386)
		(= (value_shovel s2) 3.919220974973088)

        (= (value_hoe h0) 23.370244819763062)
		(= (value_hoe h1) 13.708016532599764)
		(= (value_hoe h2) 23.20678173130137)

        (= (trees_in_map) 38)

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

