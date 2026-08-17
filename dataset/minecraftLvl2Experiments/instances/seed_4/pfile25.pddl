;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.1167808734443394)
		(= (value_axe a1) 0.9785167864617185)

        (= (value_pickaxe p0) 0.8266850100821808)
		(= (value_pickaxe p1) 0.5093007671750268)
		(= (value_pickaxe p2) 0.0009014462790822853)
		(= (value_pickaxe p3) 0.8438568281093831)

        (= (value_shovel s0) 5.363534464832734)
		(= (value_shovel s1) 5.355786127457275)
		(= (value_shovel s2) 1.1278601678779703)

        (= (value_hoe h0) 24.66056167683596)
		(= (value_hoe h1) 10.685935320035608)
		(= (value_hoe h2) 19.561631783497447)
		(= (value_hoe h3) 12.897264244130595)

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

