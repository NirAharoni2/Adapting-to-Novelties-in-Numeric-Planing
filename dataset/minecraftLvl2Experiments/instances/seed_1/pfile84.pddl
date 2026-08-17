;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_84)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.6136631926448726)
		(= (value_axe a1) 0.3634773420033621)
		(= (value_axe a2) 0.48734007046115035)

        (= (value_pickaxe p0) 0.930035249179362)
		(= (value_pickaxe p1) 0.6591581972362703)
		(= (value_pickaxe p2) 0.5779638563435033)

        (= (value_shovel s0) 5.33836369712191)
		(= (value_shovel s1) 6.921454079652474)
		(= (value_shovel s2) 6.791205212128862)
		(= (value_shovel s3) 5.075379613080732)

        (= (value_hoe h0) 16.777808081218886)
		(= (value_hoe h1) 22.938543918756462)
		(= (value_hoe h2) 13.905870869997788)
		(= (value_hoe h3) 20.284432739648793)
		(= (value_hoe h4) 19.886728965041577)

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

