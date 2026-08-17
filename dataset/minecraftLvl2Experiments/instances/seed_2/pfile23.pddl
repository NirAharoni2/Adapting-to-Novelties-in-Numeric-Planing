;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.8945732052166709)
		(= (value_axe a1) 0.9217424520737358)
		(= (value_axe a2) 0.441996484925797)
		(= (value_axe a3) 0.6396202237598902)
		(= (value_axe a4) 0.9296422099548148)

        (= (value_pickaxe p0) 0.32622664540249724)
		(= (value_pickaxe p1) 0.09955438887862345)
		(= (value_pickaxe p2) 0.23784187785454225)
		(= (value_pickaxe p3) 0.18954620325809202)
		(= (value_pickaxe p4) 0.6784706551299812)

        (= (value_shovel s0) 3.616518298516727)
		(= (value_shovel s1) 3.4926854072638727)
		(= (value_shovel s2) 6.56568344643464)
		(= (value_shovel s3) 2.632204583886632)

        (= (value_hoe h0) 26.170727394610612)
		(= (value_hoe h1) 22.658133265079016)
		(= (value_hoe h2) 18.005202384068546)
		(= (value_hoe h3) 26.470382325264367)
		(= (value_hoe h4) 16.845064950100237)

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

