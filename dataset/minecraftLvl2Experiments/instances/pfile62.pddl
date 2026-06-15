;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_62)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.8981050261666923)
		(= (value_axe a1) 0.5485083589021609)

        (= (value_pickaxe p0) 0.19128152901288697)
		(= (value_pickaxe p1) 0.6546476621907669)
		(= (value_pickaxe p2) 0.9076316459020142)
		(= (value_pickaxe p3) 0.442420382104171)

        (= (value_shovel s0) 5.22604439661932)
		(= (value_shovel s1) 2.1117640975701355)

        (= (value_hoe h0) 21.12997003289174)
		(= (value_hoe h1) 18.605256160966)

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

