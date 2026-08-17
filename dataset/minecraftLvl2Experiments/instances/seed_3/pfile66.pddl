;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_66)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.3490183243757218)
		(= (value_axe a1) 0.1465811122271231)
		(= (value_axe a2) 0.2979292607143412)
		(= (value_axe a3) 0.6293043236383885)

        (= (value_pickaxe p0) 0.1519370068843564)
		(= (value_pickaxe p1) 0.9219097751874787)
		(= (value_pickaxe p2) 0.3748237452856402)

        (= (value_shovel s0) 1.2930007806395716)
		(= (value_shovel s1) 3.43116388296335)
		(= (value_shovel s2) 5.442878890200154)
		(= (value_shovel s3) 5.363394838980632)

        (= (value_hoe h0) 24.04005300420412)
		(= (value_hoe h1) 29.50880699643271)

        (= (trees_in_map) 38)

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

