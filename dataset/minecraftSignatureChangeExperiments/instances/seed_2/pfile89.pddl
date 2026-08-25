;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_89)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.6552057802351497)
		(= (value_axe a1) 0.7603239338274709)
		(= (value_axe a2) 0.6288717916271191)

        (= (value_pickaxe p0) 0.10277475044720774)
		(= (value_pickaxe p1) 0.2544411609272277)
		(= (value_pickaxe p2) 0.4530320341705327)
		(= (value_pickaxe p3) 0.5062488224815295)

        (= (value_shovel s0) 2.0239485575238962)
		(= (value_shovel s1) 2.3235468686000305)
		(= (value_shovel s2) 1.8286937260008913)
		(= (value_shovel s3) 4.673883709340059)

        (= (value_hoe h0) 25.187852901166938)
		(= (value_hoe h1) 19.067758565004375)
		(= (value_hoe h2) 23.876381929865214)

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

