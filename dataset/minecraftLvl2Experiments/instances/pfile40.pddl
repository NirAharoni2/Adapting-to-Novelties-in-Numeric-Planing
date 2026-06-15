;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.045260129410882644)
		(= (value_axe a1) 0.8490325126075298)
		(= (value_axe a2) 0.26573766568444224)
		(= (value_axe a3) 0.9658992893412545)

        (= (value_pickaxe p0) 0.39413847504289856)
		(= (value_pickaxe p1) 0.8180373518225624)

        (= (value_shovel s0) 3.6944198717184715)
		(= (value_shovel s1) 7.7443742428376074)

        (= (value_hoe h0) 10.05063100420278)
		(= (value_hoe h1) 25.927040271761552)
		(= (value_hoe h2) 24.359094872880384)

        (= (trees_in_map) 23)

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

