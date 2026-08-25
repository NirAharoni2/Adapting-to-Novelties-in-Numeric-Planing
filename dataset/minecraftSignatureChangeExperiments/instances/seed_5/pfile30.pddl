;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.8915089132369736)
		(= (value_axe a1) 0.9996822269556934)
		(= (value_axe a2) 0.5544650190747292)

        (= (value_pickaxe p0) 0.13871652865199402)
		(= (value_pickaxe p1) 0.483222932276388)

        (= (value_shovel s0) 6.45933904801931)
		(= (value_shovel s1) 2.844366041839597)
		(= (value_shovel s2) 3.818182998822122)
		(= (value_shovel s3) 1.9286755093089838)

        (= (value_hoe h0) 20.735189032850407)
		(= (value_hoe h1) 19.432195610530606)
		(= (value_hoe h2) 23.943479520726903)
		(= (value_hoe h3) 25.976182286240174)
		(= (value_hoe h4) 29.355392989066658)

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

