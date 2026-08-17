;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_66)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.46696994830544836)
		(= (value_axe a1) 0.4745972048877227)
		(= (value_axe a2) 0.8615902799820888)
		(= (value_axe a3) 0.7499887830788833)
		(= (value_axe a4) 0.3229212728612658)

        (= (value_pickaxe p0) 0.042970117318021694)
		(= (value_pickaxe p1) 0.2124505614808374)

        (= (value_shovel s0) 5.616905391647675)
		(= (value_shovel s1) 2.170506825806946)
		(= (value_shovel s2) 5.049391500646226)
		(= (value_shovel s3) 7.9744839299203445)
		(= (value_shovel s4) 5.240335773534153)

        (= (value_hoe h0) 19.802340375329486)
		(= (value_hoe h1) 10.63082177512337)
		(= (value_hoe h2) 12.961227295915421)
		(= (value_hoe h3) 18.368123205931468)
		(= (value_hoe h4) 20.751819077131156)

        (= (trees_in_map) 31)

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

