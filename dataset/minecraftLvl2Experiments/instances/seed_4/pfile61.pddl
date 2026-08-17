;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_61)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.10120738778805194)
		(= (value_axe a1) 0.4949147894397242)
		(= (value_axe a2) 0.15807296382269598)
		(= (value_axe a3) 0.2559747246078391)
		(= (value_axe a4) 0.605802856513144)

        (= (value_pickaxe p0) 0.1485948735339141)
		(= (value_pickaxe p1) 0.397773201232825)
		(= (value_pickaxe p2) 0.36659724078385814)

        (= (value_shovel s0) 7.602846339192126)
		(= (value_shovel s1) 1.549525604874261)
		(= (value_shovel s2) 4.5688176559542715)

        (= (value_hoe h0) 19.36183383620985)
		(= (value_hoe h1) 13.24125762583056)
		(= (value_hoe h2) 16.930843554061262)
		(= (value_hoe h3) 17.266243858064378)
		(= (value_hoe h4) 17.16253973668647)

        (= (trees_in_map) 37)

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

