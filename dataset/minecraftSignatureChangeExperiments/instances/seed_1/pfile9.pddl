;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_53)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.7577761485350656)
		(= (value_axe a1) 0.7292824734544929)
		(= (value_axe a2) 0.34687859509745866)
		(= (value_axe a3) 0.8851599318436181)

        (= (value_pickaxe p0) 0.7088006754780835)
		(= (value_pickaxe p1) 0.05643877789777496)
		(= (value_pickaxe p2) 0.6254518735427501)
		(= (value_pickaxe p3) 0.2998642009485901)
		(= (value_pickaxe p4) 0.9041925954996471)

        (= (value_shovel s0) 1.7053104534739334)
		(= (value_shovel s1) 4.556096508517508)

        (= (value_hoe h0) 15.40675322804772)
		(= (value_hoe h1) 14.926986904687142)

        (= (trees_in_map) 24)

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

