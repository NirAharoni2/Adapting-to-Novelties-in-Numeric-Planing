;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.18243168584795078)
		(= (value_axe a1) 0.167427305300768)
		(= (value_axe a2) 0.991188023901922)
		(= (value_axe a3) 0.742855779534472)
		(= (value_axe a4) 0.3091351468956961)

        (= (value_pickaxe p0) 0.6806910156588113)
		(= (value_pickaxe p1) 0.4774368411355121)

        (= (value_shovel s0) 2.36681137504718)
		(= (value_shovel s1) 5.1951908430007805)
		(= (value_shovel s2) 1.394570463543611)
		(= (value_shovel s3) 6.26888735676082)
		(= (value_shovel s4) 1.5850440972322157)

        (= (value_hoe h0) 21.91874980630784)
		(= (value_hoe h1) 15.947916013320508)

        (= (trees_in_map) 35)

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

