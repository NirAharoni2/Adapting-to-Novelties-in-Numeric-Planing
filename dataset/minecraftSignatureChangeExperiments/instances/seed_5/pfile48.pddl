;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.9990503029201525)
		(= (value_axe a1) 0.7562461209787062)
		(= (value_axe a2) 0.8917792911709702)
		(= (value_axe a3) 0.14821749406291407)
		(= (value_axe a4) 0.7809172361399265)

        (= (value_pickaxe p0) 0.4221347036526175)
		(= (value_pickaxe p1) 0.9720881139988073)
		(= (value_pickaxe p2) 0.9941724640838737)
		(= (value_pickaxe p3) 0.21669715191111405)
		(= (value_pickaxe p4) 0.4214152186412079)

        (= (value_shovel s0) 2.89633528869438)
		(= (value_shovel s1) 4.2888590883008995)
		(= (value_shovel s2) 3.0055599213891444)
		(= (value_shovel s3) 5.665546047937978)
		(= (value_shovel s4) 1.8633492394155131)

        (= (value_hoe h0) 13.384492659276845)
		(= (value_hoe h1) 19.153306644695054)

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

