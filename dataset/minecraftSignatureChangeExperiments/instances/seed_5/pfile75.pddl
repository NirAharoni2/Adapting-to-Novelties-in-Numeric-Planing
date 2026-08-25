;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_75)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5133217610930115)
		(= (value_axe a1) 0.09351517890248917)
		(= (value_axe a2) 0.510434438062737)
		(= (value_axe a3) 0.8827193338531493)

        (= (value_pickaxe p0) 0.4129740644756017)
		(= (value_pickaxe p1) 0.19633140873232025)
		(= (value_pickaxe p2) 0.7285799935868909)
		(= (value_pickaxe p3) 0.934114921289097)

        (= (value_shovel s0) 1.8680507907412935)
		(= (value_shovel s1) 1.443288289558288)
		(= (value_shovel s2) 3.2593472238817034)
		(= (value_shovel s3) 1.2656584765172492)
		(= (value_shovel s4) 6.5035890382265364)

        (= (value_hoe h0) 18.420813918604757)
		(= (value_hoe h1) 28.79426428533485)
		(= (value_hoe h2) 12.164390858316334)
		(= (value_hoe h3) 10.186838127063446)

        (= (trees_in_map) 24)

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

