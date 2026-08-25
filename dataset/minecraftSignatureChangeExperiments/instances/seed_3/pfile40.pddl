;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.04131810237104738)
		(= (value_axe a1) 0.8062938832680294)
		(= (value_axe a2) 0.5981505365967342)

        (= (value_pickaxe p0) 0.8588832390786352)
		(= (value_pickaxe p1) 0.10140420644921655)
		(= (value_pickaxe p2) 0.9431791446602629)
		(= (value_pickaxe p3) 0.25503528182038926)
		(= (value_pickaxe p4) 0.10905123848642928)

        (= (value_shovel s0) 3.793895680898937)
		(= (value_shovel s1) 6.778222350823157)
		(= (value_shovel s2) 5.764533887117727)

        (= (value_hoe h0) 12.176863497764682)
		(= (value_hoe h1) 19.711671436041822)

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

