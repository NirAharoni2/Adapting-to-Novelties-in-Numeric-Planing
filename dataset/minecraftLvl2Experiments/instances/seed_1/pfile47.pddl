;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_47)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5124919555126976)
		(= (value_axe a1) 0.9939323868368598)
		(= (value_axe a2) 0.3155520183652022)
		(= (value_axe a3) 0.7765687670039291)

        (= (value_pickaxe p0) 0.6450478328166024)
		(= (value_pickaxe p1) 0.9937916737152398)

        (= (value_shovel s0) 2.9775480008079893)
		(= (value_shovel s1) 3.880056714969008)

        (= (value_hoe h0) 28.792522373582056)
		(= (value_hoe h1) 28.53578849932085)
		(= (value_hoe h2) 20.35729369644832)
		(= (value_hoe h3) 22.05538714378554)

        (= (trees_in_map) 38)

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

