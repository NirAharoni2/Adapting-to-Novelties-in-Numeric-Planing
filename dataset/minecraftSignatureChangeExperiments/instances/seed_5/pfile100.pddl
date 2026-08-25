;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_100)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.6869786879112774)
		(= (value_axe a1) 0.8901396535897412)

        (= (value_pickaxe p0) 0.11428795532111924)
		(= (value_pickaxe p1) 0.5255896837954795)

        (= (value_shovel s0) 5.661119333830235)
		(= (value_shovel s1) 6.277900295598441)
		(= (value_shovel s2) 5.836375169942326)
		(= (value_shovel s3) 7.881161104947449)

        (= (value_hoe h0) 16.372447652729967)
		(= (value_hoe h1) 23.96814896002256)
		(= (value_hoe h2) 14.071509630977717)
		(= (value_hoe h3) 17.902030752596716)
		(= (value_hoe h4) 13.219897171639495)

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

