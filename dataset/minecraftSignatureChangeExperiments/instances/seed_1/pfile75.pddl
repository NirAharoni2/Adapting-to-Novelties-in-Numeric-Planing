;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_75)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.4939759231934836)
		(= (value_axe a1) 0.6692852365302057)
		(= (value_axe a2) 0.8337906608700754)
		(= (value_axe a3) 0.18665224730605556)

        (= (value_pickaxe p0) 0.015871408983548774)
		(= (value_pickaxe p1) 0.753788113928187)
		(= (value_pickaxe p2) 0.4884556324358118)
		(= (value_pickaxe p3) 0.39394064115655847)
		(= (value_pickaxe p4) 0.7301233748991758)

        (= (value_shovel s0) 6.756420235863048)
		(= (value_shovel s1) 3.3537492108033433)
		(= (value_shovel s2) 2.704372083084232)
		(= (value_shovel s3) 1.539794756075871)
		(= (value_shovel s4) 6.222668821354263)

        (= (value_hoe h0) 26.928067419330265)
		(= (value_hoe h1) 26.675267285373053)
		(= (value_hoe h2) 13.775821768771518)
		(= (value_hoe h3) 13.464420675533637)

        (= (trees_in_map) 36)

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

