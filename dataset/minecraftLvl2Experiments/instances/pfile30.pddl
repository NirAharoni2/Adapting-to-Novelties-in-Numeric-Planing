;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.30079425639588786)
		(= (value_axe a1) 0.8462914090554653)
		(= (value_axe a2) 0.7620683710414654)

        (= (value_pickaxe p0) 0.8560527592865855)
		(= (value_pickaxe p1) 0.7578859862162822)
		(= (value_pickaxe p2) 0.850294384244035)

        (= (value_shovel s0) 4.183213399901599)
		(= (value_shovel s1) 6.637469888687841)
		(= (value_shovel s2) 6.264890137725893)

        (= (value_hoe h0) 26.871430484484723)
		(= (value_hoe h1) 12.938497837328555)

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

