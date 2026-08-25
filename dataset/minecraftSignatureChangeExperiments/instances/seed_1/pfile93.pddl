;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_93)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.6647668867194073)
		(= (value_axe a1) 0.11919397903568485)

        (= (value_pickaxe p0) 0.20236779789659987)
		(= (value_pickaxe p1) 0.746162926616987)
		(= (value_pickaxe p2) 0.11593514000939897)
		(= (value_pickaxe p3) 0.9526353686025563)
		(= (value_pickaxe p4) 0.8115599210742824)

        (= (value_shovel s0) 2.5388560933528312)
		(= (value_shovel s1) 3.002779886114146)
		(= (value_shovel s2) 2.764874366599734)

        (= (value_hoe h0) 18.456881027093743)
		(= (value_hoe h1) 14.972792822508627)
		(= (value_hoe h2) 10.645260173668712)

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

