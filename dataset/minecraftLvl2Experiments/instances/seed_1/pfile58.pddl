;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_58)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.007962849104687586)
		(= (value_axe a1) 0.8881921047108448)
		(= (value_axe a2) 0.9589513983478465)

        (= (value_pickaxe p0) 0.11221210176022733)
		(= (value_pickaxe p1) 0.9233322650459617)

        (= (value_shovel s0) 6.536902148189774)
		(= (value_shovel s1) 6.069138928527228)
		(= (value_shovel s2) 1.8812994602555224)
		(= (value_shovel s3) 7.490642905925921)

        (= (value_hoe h0) 15.421596378857341)
		(= (value_hoe h1) 11.82146022900979)
		(= (value_hoe h2) 21.532880309319072)
		(= (value_hoe h3) 24.507486153801338)

        (= (trees_in_map) 35)

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

