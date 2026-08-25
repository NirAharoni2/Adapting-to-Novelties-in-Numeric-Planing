;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_92)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.3344955118200902)
		(= (value_axe a1) 0.4157739095872861)
		(= (value_axe a2) 0.3920536706628982)
		(= (value_axe a3) 0.07845552677835299)

        (= (value_pickaxe p0) 0.15852339377891866)
		(= (value_pickaxe p1) 0.1814586599028254)

        (= (value_shovel s0) 6.208479989545132)
		(= (value_shovel s1) 2.2650313335491274)
		(= (value_shovel s2) 5.172104279268008)

        (= (value_hoe h0) 29.530050581527632)
		(= (value_hoe h1) 18.16800281519157)
		(= (value_hoe h2) 29.98617507746962)
		(= (value_hoe h3) 15.003739588461787)

        (= (trees_in_map) 31)

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

