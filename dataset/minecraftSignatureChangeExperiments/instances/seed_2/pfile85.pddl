;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_85)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.45188350690888557)
		(= (value_axe a1) 0.8453533349430538)
		(= (value_axe a2) 0.26738735227755994)
		(= (value_axe a3) 0.916189879094061)
		(= (value_axe a4) 0.8137730247008347)

        (= (value_pickaxe p0) 0.019728448594303782)
		(= (value_pickaxe p1) 0.4974465581122781)

        (= (value_shovel s0) 4.728998605318577)
		(= (value_shovel s1) 5.41696834524867)
		(= (value_shovel s2) 7.212786802926676)
		(= (value_shovel s3) 2.412041747891289)
		(= (value_shovel s4) 6.799152989545744)

        (= (value_hoe h0) 10.178674634173838)
		(= (value_hoe h1) 26.662929903920624)
		(= (value_hoe h2) 15.235917823557998)
		(= (value_hoe h3) 10.524262084352113)
		(= (value_hoe h4) 26.25792815771258)

        (= (trees_in_map) 21)

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

