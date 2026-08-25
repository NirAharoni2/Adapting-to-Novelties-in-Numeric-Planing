;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.9387647833696341)
		(= (value_axe a1) 0.5566387133167509)
		(= (value_axe a2) 0.9663143685703015)
		(= (value_axe a3) 0.3753245957218826)
		(= (value_axe a4) 0.23526409248304703)

        (= (value_pickaxe p0) 0.9294894815447283)
		(= (value_pickaxe p1) 0.8436027224913909)
		(= (value_pickaxe p2) 0.9670912486361003)
		(= (value_pickaxe p3) 0.41527104147403016)

        (= (value_shovel s0) 4.978834377920718)
		(= (value_shovel s1) 5.05877528873824)
		(= (value_shovel s2) 7.46752455547187)
		(= (value_shovel s3) 5.798915664747701)

        (= (value_hoe h0) 13.123492396317868)
		(= (value_hoe h1) 18.02103875538726)
		(= (value_hoe h2) 27.751103512842565)
		(= (value_hoe h3) 13.251667484024274)
		(= (value_hoe h4) 19.9591670555107)

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

