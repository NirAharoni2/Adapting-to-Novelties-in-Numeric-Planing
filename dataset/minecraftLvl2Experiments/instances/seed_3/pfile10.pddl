;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5894807512289966)
		(= (value_axe a1) 0.42127239176588416)
		(= (value_axe a2) 0.5183976202745878)
		(= (value_axe a3) 0.8499721830425746)

        (= (value_pickaxe p0) 0.4647207956489494)
		(= (value_pickaxe p1) 0.6341794089742429)
		(= (value_pickaxe p2) 0.2903987573070167)
		(= (value_pickaxe p3) 0.5683322579378047)

        (= (value_shovel s0) 1.248809825213899)
		(= (value_shovel s1) 3.8928594223557784)

        (= (value_hoe h0) 13.991421163776783)
		(= (value_hoe h1) 19.547050586829755)
		(= (value_hoe h2) 26.65079159736309)
		(= (value_hoe h3) 22.45320960684324)

        (= (trees_in_map) 36)

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

