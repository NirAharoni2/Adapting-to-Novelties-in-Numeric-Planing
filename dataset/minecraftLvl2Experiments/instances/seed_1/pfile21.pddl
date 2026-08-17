;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.686949360957942)
		(= (value_axe a1) 0.9565397294242834)
		(= (value_axe a2) 0.7128461108524063)

        (= (value_pickaxe p0) 0.33695149839227967)
		(= (value_pickaxe p1) 0.6112867363314293)
		(= (value_pickaxe p2) 0.7282207229562594)

        (= (value_shovel s0) 5.573854021180998)
		(= (value_shovel s1) 7.8064763808615965)
		(= (value_shovel s2) 2.5362842778666415)
		(= (value_shovel s3) 7.451224561787097)

        (= (value_hoe h0) 25.263886080934363)
		(= (value_hoe h1) 22.905768584821235)
		(= (value_hoe h2) 17.37380238763507)
		(= (value_hoe h3) 20.232636297647336)
		(= (value_hoe h4) 25.849601161928412)

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

