;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_84)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.2846586563405571)
		(= (value_axe a1) 0.760378358580623)

        (= (value_pickaxe p0) 0.1432163471015443)
		(= (value_pickaxe p1) 0.9964640097783787)
		(= (value_pickaxe p2) 0.7613447982328411)

        (= (value_shovel s0) 2.866213345194239)
		(= (value_shovel s1) 7.807150737913976)

        (= (value_hoe h0) 21.514304729194468)
		(= (value_hoe h1) 15.256449137293691)
		(= (value_hoe h2) 15.039893235601971)
		(= (value_hoe h3) 24.606964312763708)
		(= (value_hoe h4) 12.688759189911782)

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

