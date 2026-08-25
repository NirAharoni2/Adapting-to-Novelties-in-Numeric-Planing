;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_96)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.30554973606014124)
		(= (value_axe a1) 0.12317894405142638)

        (= (value_pickaxe p0) 0.1803875786302387)
		(= (value_pickaxe p1) 0.7984673216783833)

        (= (value_shovel s0) 1.6666170496543398)
		(= (value_shovel s1) 6.208897540776696)
		(= (value_shovel s2) 3.7738670842774322)
		(= (value_shovel s3) 7.143308706305602)

        (= (value_hoe h0) 25.192650742823776)
		(= (value_hoe h1) 23.7365634854778)
		(= (value_hoe h2) 26.900163655618748)
		(= (value_hoe h3) 10.850641719709284)
		(= (value_hoe h4) 15.308646104008037)

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

