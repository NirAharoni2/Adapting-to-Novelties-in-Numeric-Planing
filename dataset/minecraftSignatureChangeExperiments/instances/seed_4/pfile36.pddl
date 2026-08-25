;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_52)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.9472622332317808)
		(= (value_axe a1) 0.16805184136181361)
		(= (value_axe a2) 0.7327183710924642)

        (= (value_pickaxe p0) 0.9323216692427166)
		(= (value_pickaxe p1) 0.18876567280897227)
		(= (value_pickaxe p2) 0.5384706293433823)
		(= (value_pickaxe p3) 0.9421960899945829)
		(= (value_pickaxe p4) 0.32269580012481414)

        (= (value_shovel s0) 5.267277249708023)
		(= (value_shovel s1) 6.701086778613683)
		(= (value_shovel s2) 5.0473956286597845)

        (= (value_hoe h0) 18.59461260146274)
		(= (value_hoe h1) 24.86189327377891)
		(= (value_hoe h2) 17.28721906660886)

        (= (trees_in_map) 22)

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

