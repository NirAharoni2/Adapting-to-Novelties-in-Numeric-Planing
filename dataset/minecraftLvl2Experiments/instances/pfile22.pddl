;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7032294415401348)
		(= (value_axe a1) 0.8172793948957149)
		(= (value_axe a2) 0.867100324807252)
		(= (value_axe a3) 0.525102389489507)
		(= (value_axe a4) 0.1075869880466559)

        (= (value_pickaxe p0) 0.6260654467577849)
		(= (value_pickaxe p1) 0.4421405147106522)
		(= (value_pickaxe p2) 0.7148013708986652)

        (= (value_shovel s0) 4.900602980257881)
		(= (value_shovel s1) 3.5458475768352895)

        (= (value_hoe h0) 11.110063898121671)
		(= (value_hoe h1) 23.078785926170454)
		(= (value_hoe h2) 19.28414030055885)
		(= (value_hoe h3) 11.148411085130498)
		(= (value_hoe h4) 15.236180620865014)

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

