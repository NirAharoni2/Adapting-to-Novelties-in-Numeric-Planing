;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.9562961600402223)
		(= (value_axe a1) 0.5841403192367585)
		(= (value_axe a2) 0.10468793011995758)

        (= (value_pickaxe p0) 0.6525749326846105)
		(= (value_pickaxe p1) 0.4486117178480802)
		(= (value_pickaxe p2) 0.988030557026313)
		(= (value_pickaxe p3) 0.7193814951479868)

        (= (value_shovel s0) 6.843502745550463)
		(= (value_shovel s1) 5.9090038213174845)
		(= (value_shovel s2) 4.749333040504743)
		(= (value_shovel s3) 7.277728742796878)

        (= (value_hoe h0) 26.63234129416018)
		(= (value_hoe h1) 15.82651775228658)
		(= (value_hoe h2) 13.140637904401748)
		(= (value_hoe h3) 17.407037375753898)
		(= (value_hoe h4) 20.421553451451715)

        (= (trees_in_map) 23)

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

