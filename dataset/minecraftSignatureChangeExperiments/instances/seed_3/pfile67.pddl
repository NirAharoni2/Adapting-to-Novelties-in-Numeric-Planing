;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_67)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.8359632933412916)
		(= (value_axe a1) 0.7480496216653506)
		(= (value_axe a2) 0.2912820422927942)
		(= (value_axe a3) 0.010819915108138622)

        (= (value_pickaxe p0) 0.6785933118958584)
		(= (value_pickaxe p1) 0.7351163757143658)
		(= (value_pickaxe p2) 0.3506668763068854)
		(= (value_pickaxe p3) 0.478761057332452)

        (= (value_shovel s0) 4.970204571413965)
		(= (value_shovel s1) 2.748829365279244)
		(= (value_shovel s2) 5.88333138319483)
		(= (value_shovel s3) 4.9375665920857355)

        (= (value_hoe h0) 17.710562901654665)
		(= (value_hoe h1) 12.192079473144403)
		(= (value_hoe h2) 21.07894274027432)
		(= (value_hoe h3) 16.393529015061908)
		(= (value_hoe h4) 24.497587306191733)

        (= (trees_in_map) 25)

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

