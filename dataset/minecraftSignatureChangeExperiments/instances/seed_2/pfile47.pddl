;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_47)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.14690558041204793)
		(= (value_axe a1) 0.664569682600623)
		(= (value_axe a2) 0.6492423875175228)
		(= (value_axe a3) 0.4085017699834037)
		(= (value_axe a4) 0.49884655109271303)

        (= (value_pickaxe p0) 0.9879276359233344)
		(= (value_pickaxe p1) 0.8080668983805169)
		(= (value_pickaxe p2) 0.40699962723236016)
		(= (value_pickaxe p3) 0.911710041110168)

        (= (value_shovel s0) 4.992395955437171)
		(= (value_shovel s1) 3.8344536579723316)
		(= (value_shovel s2) 5.527905114000253)
		(= (value_shovel s3) 6.4850464223904245)

        (= (value_hoe h0) 27.925668249209966)
		(= (value_hoe h1) 23.406094955435535)
		(= (value_hoe h2) 23.348218651342357)

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

