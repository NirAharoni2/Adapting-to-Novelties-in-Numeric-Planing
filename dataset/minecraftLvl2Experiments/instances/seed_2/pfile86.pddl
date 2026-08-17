;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_86)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.8250609313289715)
		(= (value_axe a1) 0.43085618174507767)
		(= (value_axe a2) 0.5062513669468699)
		(= (value_axe a3) 0.6057122824750993)
		(= (value_axe a4) 0.3925445994032595)

        (= (value_pickaxe p0) 0.0004902352750411065)
		(= (value_pickaxe p1) 0.18207186360841643)
		(= (value_pickaxe p2) 0.2877875865018462)
		(= (value_pickaxe p3) 0.1989642010774597)

        (= (value_shovel s0) 2.3933521605131376)
		(= (value_shovel s1) 3.2820316813385086)
		(= (value_shovel s2) 2.9433308690076165)
		(= (value_shovel s3) 2.333537945906304)
		(= (value_shovel s4) 5.7506324862722655)

        (= (value_hoe h0) 16.734420044453486)
		(= (value_hoe h1) 17.779492525262924)
		(= (value_hoe h2) 12.527213695917546)

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

