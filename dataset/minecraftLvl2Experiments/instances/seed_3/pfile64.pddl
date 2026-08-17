;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_64)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.05285216640029)
		(= (value_axe a1) 0.9657257075623208)
		(= (value_axe a2) 0.7322399177488305)
		(= (value_axe a3) 0.20762916073513027)

        (= (value_pickaxe p0) 0.30378529013824485)
		(= (value_pickaxe p1) 0.17292213860778505)
		(= (value_pickaxe p2) 0.1682966891340274)
		(= (value_pickaxe p3) 0.4829771943362071)

        (= (value_shovel s0) 2.4638357200319074)
		(= (value_shovel s1) 6.6756042666409225)
		(= (value_shovel s2) 3.5533535947315964)
		(= (value_shovel s3) 2.6263000088209223)

        (= (value_hoe h0) 23.6794235931419)
		(= (value_hoe h1) 20.613725542162967)
		(= (value_hoe h2) 21.96892463259922)
		(= (value_hoe h3) 18.490718245174094)

        (= (trees_in_map) 25)

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

