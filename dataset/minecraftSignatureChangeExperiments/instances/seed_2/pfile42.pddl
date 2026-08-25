;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_42)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5930740368358351)
		(= (value_axe a1) 0.9664702916105689)
		(= (value_axe a2) 0.8271307151992943)

        (= (value_pickaxe p0) 0.673161269585832)
		(= (value_pickaxe p1) 0.2947622464588423)
		(= (value_pickaxe p2) 0.9043505629117216)

        (= (value_shovel s0) 1.281480489511985)
		(= (value_shovel s1) 2.7264066261160993)

        (= (value_hoe h0) 25.76145245637184)
		(= (value_hoe h1) 27.893962892828355)

        (= (trees_in_map) 32)

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

