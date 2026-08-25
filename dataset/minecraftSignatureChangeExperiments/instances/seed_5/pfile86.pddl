;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_86)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.8061314962429083)
		(= (value_axe a1) 0.378731000737069)
		(= (value_axe a2) 0.8080592472668892)

        (= (value_pickaxe p0) 0.06726583451172508)
		(= (value_pickaxe p1) 0.39494537178527744)

        (= (value_shovel s0) 7.854018122301652)
		(= (value_shovel s1) 3.842410196881713)
		(= (value_shovel s2) 7.2408300418135285)

        (= (value_hoe h0) 29.728468131610384)
		(= (value_hoe h1) 28.775443812817986)
		(= (value_hoe h2) 11.235862191101527)
		(= (value_hoe h3) 29.76826816146773)

        (= (trees_in_map) 32)

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

