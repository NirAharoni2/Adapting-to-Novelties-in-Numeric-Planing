;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_69)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.4013915901692592)
		(= (value_axe a1) 0.44754927426895463)
		(= (value_axe a2) 0.604500243424782)

        (= (value_pickaxe p0) 0.676779259412908)
		(= (value_pickaxe p1) 0.8720929202425398)
		(= (value_pickaxe p2) 0.40098498013709316)
		(= (value_pickaxe p3) 0.6535600209159861)

        (= (value_shovel s0) 6.990998863284892)
		(= (value_shovel s1) 6.240740327892979)
		(= (value_shovel s2) 5.151968103167341)
		(= (value_shovel s3) 1.961983807610537)

        (= (value_hoe h0) 28.171138385471725)
		(= (value_hoe h1) 16.30981259082933)
		(= (value_hoe h2) 18.432326375293194)
		(= (value_hoe h3) 21.457884075360763)

        (= (trees_in_map) 32)

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

