;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_70)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.582044655459756)
		(= (value_axe a1) 0.716057901694705)
		(= (value_axe a2) 0.8669460994705043)
		(= (value_axe a3) 0.046167173922663785)
		(= (value_axe a4) 0.821166116993674)

        (= (value_pickaxe p0) 0.9699046450873774)
		(= (value_pickaxe p1) 0.16112710062883295)
		(= (value_pickaxe p2) 0.6332673437499052)

        (= (value_shovel s0) 5.9599403533281015)
		(= (value_shovel s1) 4.030995939200746)
		(= (value_shovel s2) 6.70801955466764)

        (= (value_hoe h0) 22.54569683790531)
		(= (value_hoe h1) 13.642392159534545)
		(= (value_hoe h2) 20.88381143642698)
		(= (value_hoe h3) 24.108538243969875)

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

