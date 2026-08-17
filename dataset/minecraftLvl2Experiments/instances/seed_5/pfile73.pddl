;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_73)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5131323775619636)
		(= (value_axe a1) 0.46950940949067177)

        (= (value_pickaxe p0) 0.4430506550059655)
		(= (value_pickaxe p1) 0.15115346330548762)

        (= (value_shovel s0) 2.947548101189843)
		(= (value_shovel s1) 4.146615251949306)

        (= (value_hoe h0) 11.422359491877383)
		(= (value_hoe h1) 23.487663793067235)
		(= (value_hoe h2) 14.870999288708253)
		(= (value_hoe h3) 15.805499677576499)
		(= (value_hoe h4) 11.816579489407474)

        (= (trees_in_map) 29)

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

