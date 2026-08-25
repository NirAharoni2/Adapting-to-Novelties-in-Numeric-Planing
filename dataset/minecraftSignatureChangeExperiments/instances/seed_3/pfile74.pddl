;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_74)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.38847851016831314)
		(= (value_axe a1) 0.8054176832408594)
		(= (value_axe a2) 0.4451006124582577)
		(= (value_axe a3) 0.6674166300988853)

        (= (value_pickaxe p0) 0.32662129124438255)
		(= (value_pickaxe p1) 0.2245855215274074)

        (= (value_shovel s0) 4.166973364771922)
		(= (value_shovel s1) 6.601440839770185)

        (= (value_hoe h0) 16.9061220012426)
		(= (value_hoe h1) 14.598041796343779)
		(= (value_hoe h2) 18.317299543657718)

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

