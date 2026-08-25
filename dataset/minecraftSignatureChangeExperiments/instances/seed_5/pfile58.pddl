;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_58)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.4254050355968645)
		(= (value_axe a1) 0.8460234022862152)
		(= (value_axe a2) 0.5162538160726244)
		(= (value_axe a3) 0.48668785862162334)

        (= (value_pickaxe p0) 0.7092405530857366)
		(= (value_pickaxe p1) 0.08626905796091566)

        (= (value_shovel s0) 6.693806736285332)
		(= (value_shovel s1) 5.827762092569267)
		(= (value_shovel s2) 1.7736624282216833)

        (= (value_hoe h0) 11.91892193301824)
		(= (value_hoe h1) 27.41472909331851)
		(= (value_hoe h2) 15.691342777660392)
		(= (value_hoe h3) 25.115865108739623)

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

