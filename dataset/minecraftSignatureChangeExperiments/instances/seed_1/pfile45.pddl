;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5114762400227343)
		(= (value_axe a1) 0.4320898281175597)

        (= (value_pickaxe p0) 0.5903591466553866)
		(= (value_pickaxe p1) 0.9000131998034546)

        (= (value_shovel s0) 4.406710654288149)
		(= (value_shovel s1) 6.652165323393544)
		(= (value_shovel s2) 2.539544003002125)

        (= (value_hoe h0) 14.007709860515297)
		(= (value_hoe h1) 19.872306863292053)
		(= (value_hoe h2) 27.97719596218964)

        (= (trees_in_map) 27)

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

