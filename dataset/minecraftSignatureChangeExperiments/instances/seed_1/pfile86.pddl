;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_86)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.8715306131904668)
		(= (value_axe a1) 0.915512941838731)
		(= (value_axe a2) 0.2558043282584668)
		(= (value_axe a3) 0.5411071162078288)
		(= (value_axe a4) 0.05402986933618825)

        (= (value_pickaxe p0) 0.37873753171384916)
		(= (value_pickaxe p1) 0.3244778986138014)

        (= (value_shovel s0) 3.161764138372992)
		(= (value_shovel s1) 7.1457304992424655)

        (= (value_hoe h0) 26.48062376236412)
		(= (value_hoe h1) 10.99483001359748)
		(= (value_hoe h2) 24.331738066932086)
		(= (value_hoe h3) 16.5728220522234)

        (= (trees_in_map) 40)

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

