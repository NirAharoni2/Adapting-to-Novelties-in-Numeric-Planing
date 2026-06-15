;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_77)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7304860338693919)
		(= (value_axe a1) 0.21644428219154932)
		(= (value_axe a2) 0.8039951432722318)
		(= (value_axe a3) 0.2575345938221596)
		(= (value_axe a4) 0.03036725262816442)

        (= (value_pickaxe p0) 0.23231834597037315)
		(= (value_pickaxe p1) 0.809438620142105)

        (= (value_shovel s0) 2.4428572763272878)
		(= (value_shovel s1) 4.54568900174457)
		(= (value_shovel s2) 3.7357297995272534)

        (= (value_hoe h0) 12.192299115209149)
		(= (value_hoe h1) 28.342054840117584)
		(= (value_hoe h2) 18.37681127253807)
		(= (value_hoe h3) 20.840790840422123)
		(= (value_hoe h4) 11.26438929882779)

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

