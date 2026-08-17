;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_67)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.10311557978271546)
		(= (value_axe a1) 0.007295348323843931)
		(= (value_axe a2) 0.20542299019681554)

        (= (value_pickaxe p0) 0.7207287589452044)
		(= (value_pickaxe p1) 0.8472789895430078)
		(= (value_pickaxe p2) 0.769746384245096)
		(= (value_pickaxe p3) 0.8869853207994869)
		(= (value_pickaxe p4) 0.030483112893414765)

        (= (value_shovel s0) 1.200123712921057)
		(= (value_shovel s1) 2.7869684237192094)
		(= (value_shovel s2) 1.1266695298459593)
		(= (value_shovel s3) 5.101952144047305)
		(= (value_shovel s4) 7.507718536627141)

        (= (value_hoe h0) 27.97819201280502)
		(= (value_hoe h1) 12.12639725015974)
		(= (value_hoe h2) 23.283205912054676)
		(= (value_hoe h3) 23.420934473653535)

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

