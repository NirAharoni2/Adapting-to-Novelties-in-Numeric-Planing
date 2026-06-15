;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.9730234962469071)
		(= (value_axe a1) 0.6435558571005296)
		(= (value_axe a2) 0.3509002976045972)

        (= (value_pickaxe p0) 0.33558828348321657)
		(= (value_pickaxe p1) 0.31333276837837787)
		(= (value_pickaxe p2) 0.9843439337141051)
		(= (value_pickaxe p3) 0.7623224264146881)
		(= (value_pickaxe p4) 0.5802309111565003)

        (= (value_shovel s0) 7.397996106558352)
		(= (value_shovel s1) 6.366985289931797)
		(= (value_shovel s2) 1.8157464854073453)

        (= (value_hoe h0) 23.92677702258094)
		(= (value_hoe h1) 25.507972050772217)

        (= (trees_in_map) 21)

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

