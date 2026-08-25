;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_47)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5983453687634599)
		(= (value_axe a1) 0.8391790366699209)

        (= (value_pickaxe p0) 0.47035526117543236)
		(= (value_pickaxe p1) 0.022498138643767374)
		(= (value_pickaxe p2) 0.16001037800845397)
		(= (value_pickaxe p3) 0.7708718536677955)
		(= (value_pickaxe p4) 0.5001694741449906)

        (= (value_shovel s0) 7.021082171460772)
		(= (value_shovel s1) 7.578706974659161)

        (= (value_hoe h0) 23.22033578829967)
		(= (value_hoe h1) 22.363950406886666)
		(= (value_hoe h2) 21.742779170878592)
		(= (value_hoe h3) 14.311932179900902)

        (= (trees_in_map) 33)

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

