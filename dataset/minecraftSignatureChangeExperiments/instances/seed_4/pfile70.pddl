;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_70)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.23447520250602094)
		(= (value_axe a1) 0.8948860129399262)
		(= (value_axe a2) 0.02362908832725874)
		(= (value_axe a3) 0.15160050688095372)

        (= (value_pickaxe p0) 0.6345662268815119)
		(= (value_pickaxe p1) 0.5303666516921229)
		(= (value_pickaxe p2) 0.5270858262161491)
		(= (value_pickaxe p3) 0.622426909423429)
		(= (value_pickaxe p4) 0.34786110720345564)

        (= (value_shovel s0) 5.6342045398438145)
		(= (value_shovel s1) 3.7772660080558227)
		(= (value_shovel s2) 5.096016542517736)

        (= (value_hoe h0) 24.283672217216424)
		(= (value_hoe h1) 16.1915894194722)
		(= (value_hoe h2) 25.223506218480104)
		(= (value_hoe h3) 26.497544221892827)

        (= (trees_in_map) 22)

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

