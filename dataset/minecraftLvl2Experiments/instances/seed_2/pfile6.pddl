;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.17188099212573238)
		(= (value_axe a1) 0.6727654414135418)

        (= (value_pickaxe p0) 0.08290317740457553)
		(= (value_pickaxe p1) 0.9545621653457477)

        (= (value_shovel s0) 1.1774130037883073)
		(= (value_shovel s1) 6.105964552092629)
		(= (value_shovel s2) 1.1480140880620546)
		(= (value_shovel s3) 2.7898303784020984)

        (= (value_hoe h0) 26.267087748045515)
		(= (value_hoe h1) 13.142365773735499)
		(= (value_hoe h2) 13.674776185019525)
		(= (value_hoe h3) 23.829908520271815)

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

