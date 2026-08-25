;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.16517871395709105)
		(= (value_axe a1) 0.7012759650976815)
		(= (value_axe a2) 0.46477836068405065)
		(= (value_axe a3) 0.08497320753542437)

        (= (value_pickaxe p0) 0.1232438973829475)
		(= (value_pickaxe p1) 0.6061051708465726)
		(= (value_pickaxe p2) 0.5139512462260775)
		(= (value_pickaxe p3) 0.377197706522613)

        (= (value_shovel s0) 2.090454554216324)
		(= (value_shovel s1) 3.987270172859212)
		(= (value_shovel s2) 7.5918530671791835)
		(= (value_shovel s3) 6.03718371170946)

        (= (value_hoe h0) 25.645372279306237)
		(= (value_hoe h1) 19.900516671186157)
		(= (value_hoe h2) 17.872144984774778)
		(= (value_hoe h3) 22.739458433982954)

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

