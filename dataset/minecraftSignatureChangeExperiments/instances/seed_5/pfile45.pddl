;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.9057316221204487)
		(= (value_axe a1) 0.6424845434491748)
		(= (value_axe a2) 0.7661270707026128)
		(= (value_axe a3) 0.08860502075911059)

        (= (value_pickaxe p0) 0.10989014279819798)
		(= (value_pickaxe p1) 0.4081023658584543)
		(= (value_pickaxe p2) 0.9430724520088255)
		(= (value_pickaxe p3) 0.06324478625687824)
		(= (value_pickaxe p4) 0.4323911745130623)

        (= (value_shovel s0) 2.5423873658874516)
		(= (value_shovel s1) 7.901708637661206)
		(= (value_shovel s2) 2.8974170436216102)

        (= (value_hoe h0) 24.40055684348578)
		(= (value_hoe h1) 12.916684042072326)
		(= (value_hoe h2) 29.349382683041686)
		(= (value_hoe h3) 21.0669476505454)

        (= (trees_in_map) 33)

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

