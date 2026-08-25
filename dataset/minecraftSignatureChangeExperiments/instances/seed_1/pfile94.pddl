;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_94)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.45426475826238855)
		(= (value_axe a1) 0.8743122139751826)
		(= (value_axe a2) 0.6595559706334061)

        (= (value_pickaxe p0) 0.6154822288636055)
		(= (value_pickaxe p1) 0.8645290186919932)
		(= (value_pickaxe p2) 0.3865334472758961)
		(= (value_pickaxe p3) 0.4260938982049727)

        (= (value_shovel s0) 2.7114657001502374)
		(= (value_shovel s1) 6.811414483378998)
		(= (value_shovel s2) 7.14152487669837)
		(= (value_shovel s3) 7.37580259330828)

        (= (value_hoe h0) 22.098530031611133)
		(= (value_hoe h1) 12.276764845805928)
		(= (value_hoe h2) 11.445373411911222)
		(= (value_hoe h3) 25.950690125911294)

        (= (trees_in_map) 28)

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

