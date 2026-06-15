;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_63)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.582423374602534)
		(= (value_axe a1) 0.45763591515730373)
		(= (value_axe a2) 0.8867693314948283)
		(= (value_axe a3) 0.9976131817483929)
		(= (value_axe a4) 0.8142516709711733)

        (= (value_pickaxe p0) 0.2775505619015023)
		(= (value_pickaxe p1) 0.14484869330403372)

        (= (value_shovel s0) 1.3148840694651072)
		(= (value_shovel s1) 5.66827379267424)

        (= (value_hoe h0) 27.535506652551625)
		(= (value_hoe h1) 22.23046365962258)
		(= (value_hoe h2) 10.426558539966468)
		(= (value_hoe h3) 24.881164108476558)

        (= (trees_in_map) 38)

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

