;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.09560667272715218)
		(= (value_axe a1) 0.0011615061159416795)

        (= (value_pickaxe p0) 0.14693605517637087)
		(= (value_pickaxe p1) 0.48062598841678816)
		(= (value_pickaxe p2) 0.2172933700523494)

        (= (value_shovel s0) 3.4180250762655477)
		(= (value_shovel s1) 6.414413948134622)
		(= (value_shovel s2) 5.830056367351791)
		(= (value_shovel s3) 4.680970997499479)

        (= (value_hoe h0) 26.693459101511948)
		(= (value_hoe h1) 25.50287898434796)
		(= (value_hoe h2) 22.24898860728301)
		(= (value_hoe h3) 26.702908768345797)
		(= (value_hoe h4) 18.53858579208915)

        (= (trees_in_map) 39)

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

