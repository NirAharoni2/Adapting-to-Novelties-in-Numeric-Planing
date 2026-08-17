;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_82)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.05828157548659407)
		(= (value_axe a1) 0.5598499828221127)
		(= (value_axe a2) 0.1614982032404586)
		(= (value_axe a3) 0.021940255123258257)
		(= (value_axe a4) 0.566405839405943)

        (= (value_pickaxe p0) 0.6836571678545204)
		(= (value_pickaxe p1) 0.9624108129215865)
		(= (value_pickaxe p2) 0.09738799169288559)

        (= (value_shovel s0) 6.715768292286747)
		(= (value_shovel s1) 3.7728568124485893)
		(= (value_shovel s2) 4.589152569292674)
		(= (value_shovel s3) 1.8112015042770957)
		(= (value_shovel s4) 1.7293432739577077)

        (= (value_hoe h0) 14.288730017394647)
		(= (value_hoe h1) 28.37296505168357)
		(= (value_hoe h2) 20.98596794236735)
		(= (value_hoe h3) 12.573024020540359)
		(= (value_hoe h4) 18.442609673008434)

        (= (trees_in_map) 24)

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

