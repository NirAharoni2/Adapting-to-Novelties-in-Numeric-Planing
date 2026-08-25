;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.9804548399750249)
		(= (value_axe a1) 0.27860031930097895)
		(= (value_axe a2) 0.6762127505168285)

        (= (value_pickaxe p0) 0.303997613192308)
		(= (value_pickaxe p1) 0.7894641172328076)
		(= (value_pickaxe p2) 0.08581977454330048)
		(= (value_pickaxe p3) 0.11596625185451537)
		(= (value_pickaxe p4) 0.6093420820191323)

        (= (value_shovel s0) 1.1076349960575067)
		(= (value_shovel s1) 2.618931389411368)

        (= (value_hoe h0) 10.172260474667494)
		(= (value_hoe h1) 28.220384675047235)
		(= (value_hoe h2) 20.644774613543625)
		(= (value_hoe h3) 27.709395710451933)
		(= (value_hoe h4) 19.046171009009953)

        (= (trees_in_map) 32)

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

