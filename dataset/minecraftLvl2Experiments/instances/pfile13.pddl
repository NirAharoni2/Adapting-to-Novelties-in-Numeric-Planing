;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.18078189576124515)
		(= (value_axe a1) 0.6750887124624605)
		(= (value_axe a2) 0.13449240268165386)

        (= (value_pickaxe p0) 0.2308471255426171)
		(= (value_pickaxe p1) 0.299915334396598)
		(= (value_pickaxe p2) 0.7087211029591076)

        (= (value_shovel s0) 2.8297592746147107)
		(= (value_shovel s1) 6.515108374396901)

        (= (value_hoe h0) 20.36143148472834)
		(= (value_hoe h1) 27.80661548699351)
		(= (value_hoe h2) 26.683125554209347)
		(= (value_hoe h3) 27.67313033787632)

        (= (trees_in_map) 20)

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

