;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_51)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5546100828177815)
		(= (value_axe a1) 0.24584243501066239)

        (= (value_pickaxe p0) 0.3460345438976312)
		(= (value_pickaxe p1) 0.3937087540133686)

        (= (value_shovel s0) 1.0998824697699032)
		(= (value_shovel s1) 3.9792125692995266)

        (= (value_hoe h0) 20.274500197972053)
		(= (value_hoe h1) 29.524986935511823)
		(= (value_hoe h2) 17.676081321959977)
		(= (value_hoe h3) 11.982596393230246)

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

