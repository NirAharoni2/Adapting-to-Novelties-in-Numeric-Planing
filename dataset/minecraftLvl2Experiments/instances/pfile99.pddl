;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_99)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5689192558047264)
		(= (value_axe a1) 0.9139853610689358)
		(= (value_axe a2) 0.6239630184673566)

        (= (value_pickaxe p0) 0.9029759049877357)
		(= (value_pickaxe p1) 0.34261069273350164)

        (= (value_shovel s0) 5.131001880768288)
		(= (value_shovel s1) 4.22553417638434)
		(= (value_shovel s2) 6.484461587556268)

        (= (value_hoe h0) 16.590225713794602)
		(= (value_hoe h1) 10.689175911680792)

        (= (trees_in_map) 21)

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

