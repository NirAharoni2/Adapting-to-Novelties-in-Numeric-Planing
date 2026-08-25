;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_96)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.1149252942652701)
		(= (value_axe a1) 0.4685245178437355)
		(= (value_axe a2) 0.07196982935412577)
		(= (value_axe a3) 0.4620102369997997)
		(= (value_axe a4) 0.6681729325975556)

        (= (value_pickaxe p0) 0.3600629257942112)
		(= (value_pickaxe p1) 0.6072881440410492)
		(= (value_pickaxe p2) 0.9808323810023248)

        (= (value_shovel s0) 2.7084513642884347)
		(= (value_shovel s1) 4.608120813645636)
		(= (value_shovel s2) 5.613139715714316)
		(= (value_shovel s3) 3.5981612008835704)

        (= (value_hoe h0) 16.13351086987499)
		(= (value_hoe h1) 20.38151786312983)
		(= (value_hoe h2) 24.866891853158073)
		(= (value_hoe h3) 17.430148027103314)
		(= (value_hoe h4) 25.711303378818982)

        (= (trees_in_map) 27)

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

