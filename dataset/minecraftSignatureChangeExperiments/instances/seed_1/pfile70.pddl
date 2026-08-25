;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_70)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.7310380068460375)
		(= (value_axe a1) 0.3361145774153067)
		(= (value_axe a2) 0.14271145506552207)
		(= (value_axe a3) 0.25500966051425156)

        (= (value_pickaxe p0) 0.34935364413456904)
		(= (value_pickaxe p1) 0.27913377110264137)
		(= (value_pickaxe p2) 0.4677614049126817)
		(= (value_pickaxe p3) 0.14903233165931407)

        (= (value_shovel s0) 1.911832501826372)
		(= (value_shovel s1) 2.7690670682594756)
		(= (value_shovel s2) 2.37552584330155)

        (= (value_hoe h0) 26.034012523196004)
		(= (value_hoe h1) 20.7511364845077)

        (= (trees_in_map) 26)

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

