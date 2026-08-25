;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_57)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.11340058036760736)
		(= (value_axe a1) 0.8986096514014973)

        (= (value_pickaxe p0) 0.1432790434450103)
		(= (value_pickaxe p1) 0.5740082043485562)
		(= (value_pickaxe p2) 0.3470016723675662)
		(= (value_pickaxe p3) 0.09182010386086414)

        (= (value_shovel s0) 7.991448825020103)
		(= (value_shovel s1) 3.0999031455750754)
		(= (value_shovel s2) 2.7426654836935054)
		(= (value_shovel s3) 4.7073888134089525)

        (= (value_hoe h0) 17.235136632795626)
		(= (value_hoe h1) 11.566354802107032)
		(= (value_hoe h2) 28.51523658623207)

        (= (trees_in_map) 31)

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

