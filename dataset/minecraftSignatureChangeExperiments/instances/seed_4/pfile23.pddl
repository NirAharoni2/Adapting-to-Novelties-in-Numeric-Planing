;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.4749095635059992)
		(= (value_axe a1) 0.9030798592547867)
		(= (value_axe a2) 0.3567865364637087)
		(= (value_axe a3) 0.9304601598296203)

        (= (value_pickaxe p0) 0.8318395383444602)
		(= (value_pickaxe p1) 0.4134111300118335)
		(= (value_pickaxe p2) 0.738081358650519)

        (= (value_shovel s0) 6.744920614537861)
		(= (value_shovel s1) 2.48401167832079)
		(= (value_shovel s2) 5.052823476536177)

        (= (value_hoe h0) 26.04556376665089)
		(= (value_hoe h1) 21.820677564649586)

        (= (trees_in_map) 35)

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

