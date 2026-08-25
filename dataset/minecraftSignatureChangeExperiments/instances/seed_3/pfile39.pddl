;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.9354491281848905)
		(= (value_axe a1) 0.14309223432509077)
		(= (value_axe a2) 0.9853177518521077)

        (= (value_pickaxe p0) 0.11210890285614616)
		(= (value_pickaxe p1) 0.28750207250750626)
		(= (value_pickaxe p2) 0.20876024827421913)

        (= (value_shovel s0) 6.955274328121193)
		(= (value_shovel s1) 4.608966134021809)

        (= (value_hoe h0) 20.098833558134462)
		(= (value_hoe h1) 28.144005776100332)
		(= (value_hoe h2) 16.378325192427813)

        (= (trees_in_map) 37)

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

