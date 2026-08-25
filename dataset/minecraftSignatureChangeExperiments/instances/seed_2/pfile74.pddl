;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_74)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.6680797271749014)
		(= (value_axe a1) 0.9056018565058062)

        (= (value_pickaxe p0) 0.801288269339221)
		(= (value_pickaxe p1) 0.4601219405798257)
		(= (value_pickaxe p2) 0.0176077160568634)

        (= (value_shovel s0) 7.254741870640832)
		(= (value_shovel s1) 1.0185577116120172)

        (= (value_hoe h0) 27.927748705392517)
		(= (value_hoe h1) 14.541805955447032)

        (= (trees_in_map) 30)

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

