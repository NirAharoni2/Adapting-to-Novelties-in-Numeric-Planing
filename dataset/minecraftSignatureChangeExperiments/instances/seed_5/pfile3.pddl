;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_53)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.4562026511949725)
		(= (value_axe a1) 0.06316057215842485)
		(= (value_axe a2) 0.0038304967129093592)
		(= (value_axe a3) 0.5647054702592181)

        (= (value_pickaxe p0) 0.5668284628833831)
		(= (value_pickaxe p1) 0.0422103558467698)
		(= (value_pickaxe p2) 0.7420591197008236)
		(= (value_pickaxe p3) 0.1168771709658385)

        (= (value_shovel s0) 7.196494363296898)
		(= (value_shovel s1) 3.619205055927419)
		(= (value_shovel s2) 3.385475902580577)
		(= (value_shovel s3) 6.705930530504896)
		(= (value_shovel s4) 4.387681204720143)

        (= (value_hoe h0) 12.876938840919385)
		(= (value_hoe h1) 12.487321088032017)
		(= (value_hoe h2) 15.026816551263869)

        (= (trees_in_map) 20)

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

