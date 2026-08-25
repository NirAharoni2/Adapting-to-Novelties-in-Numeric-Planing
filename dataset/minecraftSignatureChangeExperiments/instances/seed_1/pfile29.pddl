;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_29)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.782473685370823)
		(= (value_axe a1) 0.8462680666010907)

        (= (value_pickaxe p0) 0.7674997901425722)
		(= (value_pickaxe p1) 0.8153258619910289)
		(= (value_pickaxe p2) 0.6054623947302108)
		(= (value_pickaxe p3) 0.3494500883866837)
		(= (value_pickaxe p4) 0.26458325831813634)

        (= (value_shovel s0) 5.956140189453806)
		(= (value_shovel s1) 7.117594523692333)
		(= (value_shovel s2) 4.809727304620161)

        (= (value_hoe h0) 13.041399339150004)
		(= (value_hoe h1) 26.659505703948565)
		(= (value_hoe h2) 19.690861578229352)
		(= (value_hoe h3) 19.342052565563684)
		(= (value_hoe h4) 10.907761196914386)

        (= (trees_in_map) 36)

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

