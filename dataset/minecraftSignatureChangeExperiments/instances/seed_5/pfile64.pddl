;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_64)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.9763797132156631)
		(= (value_axe a1) 0.12824451394262038)
		(= (value_axe a2) 0.655066961010373)
		(= (value_axe a3) 0.7570261951650078)
		(= (value_axe a4) 0.7282949986519555)

        (= (value_pickaxe p0) 0.001045901235078417)
		(= (value_pickaxe p1) 0.943651200530027)
		(= (value_pickaxe p2) 0.31244412782472963)
		(= (value_pickaxe p3) 0.8530643613448944)

        (= (value_shovel s0) 5.6293783335000365)
		(= (value_shovel s1) 3.9456549119368383)
		(= (value_shovel s2) 6.8636939834072255)
		(= (value_shovel s3) 5.730435186822814)
		(= (value_shovel s4) 3.3789152160440046)

        (= (value_hoe h0) 24.636714238557136)
		(= (value_hoe h1) 20.10305901286685)
		(= (value_hoe h2) 24.231211645780242)
		(= (value_hoe h3) 22.287521032851508)

        (= (trees_in_map) 20)

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

