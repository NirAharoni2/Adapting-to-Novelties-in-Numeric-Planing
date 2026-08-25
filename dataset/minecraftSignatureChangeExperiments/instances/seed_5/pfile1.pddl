;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7759585674357169)
		(= (value_axe a1) 0.24905265606175775)
		(= (value_axe a2) 0.05185325369909766)
		(= (value_axe a3) 0.15685132230226662)

        (= (value_pickaxe p0) 0.3717933555623072)
		(= (value_pickaxe p1) 0.8684454578650953)
		(= (value_pickaxe p2) 0.38075791704476514)
		(= (value_pickaxe p3) 0.1019744021739154)

        (= (value_shovel s0) 2.745315001098806)
		(= (value_shovel s1) 6.1182860174559694)

        (= (value_hoe h0) 18.16302109949028)
		(= (value_hoe h1) 13.641513275555575)
		(= (value_hoe h2) 27.349181885380364)
		(= (value_hoe h3) 17.78874623173538)
		(= (value_hoe h4) 25.23850855188772)

        (= (trees_in_map) 22)

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

