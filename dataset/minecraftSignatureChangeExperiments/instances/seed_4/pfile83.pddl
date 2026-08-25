;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_83)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.26864410465523225)
		(= (value_axe a1) 0.6378709675541998)
		(= (value_axe a2) 0.21004307135127787)
		(= (value_axe a3) 0.23870779953552534)
		(= (value_axe a4) 0.17723874634304992)

        (= (value_pickaxe p0) 0.8164488102773375)
		(= (value_pickaxe p1) 0.07701335761049366)
		(= (value_pickaxe p2) 0.6165827945411105)
		(= (value_pickaxe p3) 0.818279238294167)

        (= (value_shovel s0) 1.1728272918551224)
		(= (value_shovel s1) 1.5688157476192284)
		(= (value_shovel s2) 6.677254419866332)

        (= (value_hoe h0) 24.481413182632405)
		(= (value_hoe h1) 13.012753236493953)
		(= (value_hoe h2) 19.128045185038047)
		(= (value_hoe h3) 28.83280014275453)
		(= (value_hoe h4) 24.100341674975645)

        (= (trees_in_map) 40)

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

