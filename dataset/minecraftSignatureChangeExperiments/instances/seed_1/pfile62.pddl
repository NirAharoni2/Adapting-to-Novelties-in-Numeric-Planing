;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_62)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.6460830174694423)
		(= (value_axe a1) 0.6973646953745949)

        (= (value_pickaxe p0) 0.8121876794253704)
		(= (value_pickaxe p1) 0.8317651384407699)

        (= (value_shovel s0) 5.111739225514413)
		(= (value_shovel s1) 4.713107791219268)
		(= (value_shovel s2) 6.342420410320302)
		(= (value_shovel s3) 4.857204294922376)
		(= (value_shovel s4) 6.480484194199481)

        (= (value_hoe h0) 21.364479647427785)
		(= (value_hoe h1) 29.37208185417389)

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

