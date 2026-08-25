;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5715527413293309)
		(= (value_axe a1) 0.39178097036424775)
		(= (value_axe a2) 0.4632243822490074)

        (= (value_pickaxe p0) 0.7535805057357183)
		(= (value_pickaxe p1) 0.3950425601578629)
		(= (value_pickaxe p2) 0.12172948013366958)
		(= (value_pickaxe p3) 0.12177009972153996)
		(= (value_pickaxe p4) 0.08051071775362983)

        (= (value_shovel s0) 6.950496117333936)
		(= (value_shovel s1) 5.486941156817456)
		(= (value_shovel s2) 7.717679943770685)

        (= (value_hoe h0) 23.85305093309299)
		(= (value_hoe h1) 10.49337545308202)

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

