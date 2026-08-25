;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.11807153053066555)
		(= (value_axe a1) 0.7472652346880435)
		(= (value_axe a2) 0.545287089768146)

        (= (value_pickaxe p0) 0.9649453287863279)
		(= (value_pickaxe p1) 0.7610656598531885)
		(= (value_pickaxe p2) 0.9735197845800538)
		(= (value_pickaxe p3) 0.13659401293980755)

        (= (value_shovel s0) 4.502600316823205)
		(= (value_shovel s1) 5.008048010158182)

        (= (value_hoe h0) 16.22502914624947)
		(= (value_hoe h1) 20.060649764129952)

        (= (trees_in_map) 31)

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

