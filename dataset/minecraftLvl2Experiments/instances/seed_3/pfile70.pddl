;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_70)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.04262750347837818)
		(= (value_axe a1) 0.49088552794936724)

        (= (value_pickaxe p0) 0.9952372722983301)
		(= (value_pickaxe p1) 0.13301577696486477)
		(= (value_pickaxe p2) 0.8998864506954276)
		(= (value_pickaxe p3) 0.4411180298392182)

        (= (value_shovel s0) 3.9969894627411673)
		(= (value_shovel s1) 4.960214643259843)
		(= (value_shovel s2) 5.019405476701562)

        (= (value_hoe h0) 29.560068071526217)
		(= (value_hoe h1) 18.599322178581236)
		(= (value_hoe h2) 15.90668835403752)

        (= (trees_in_map) 28)

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

