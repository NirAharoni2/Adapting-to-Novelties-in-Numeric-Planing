;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_53)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.9345493703482872)
		(= (value_axe a1) 0.007424644673676539)
		(= (value_axe a2) 0.3708940595157362)

        (= (value_pickaxe p0) 0.14250644281449643)
		(= (value_pickaxe p1) 0.4783866423811549)
		(= (value_pickaxe p2) 0.06429237391331444)
		(= (value_pickaxe p3) 0.5460361313137233)
		(= (value_pickaxe p4) 0.8950035682698798)

        (= (value_shovel s0) 1.7266440981915743)
		(= (value_shovel s1) 6.928106063551475)
		(= (value_shovel s2) 4.309039355437431)
		(= (value_shovel s3) 6.176101672780479)

        (= (value_hoe h0) 20.617561004784104)
		(= (value_hoe h1) 27.081231293370834)

        (= (trees_in_map) 34)

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

