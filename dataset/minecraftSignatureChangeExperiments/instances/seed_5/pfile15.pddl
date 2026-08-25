;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.013203296663586661)
		(= (value_axe a1) 0.5325646516704216)
		(= (value_axe a2) 0.27378761949741637)
		(= (value_axe a3) 0.9352531319430322)

        (= (value_pickaxe p0) 0.7819072383401017)
		(= (value_pickaxe p1) 0.24566018201499285)

        (= (value_shovel s0) 2.8738195814743475)
		(= (value_shovel s1) 2.0833595920368575)
		(= (value_shovel s2) 7.9217764288194505)

        (= (value_hoe h0) 15.863765104452366)
		(= (value_hoe h1) 22.160751818490517)
		(= (value_hoe h2) 19.49262850258038)
		(= (value_hoe h3) 22.897532561940192)
		(= (value_hoe h4) 22.07707448015508)

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

