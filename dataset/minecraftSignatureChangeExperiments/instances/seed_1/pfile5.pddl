;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.9820766375385342)
		(= (value_axe a1) 0.7705231398308006)
		(= (value_axe a2) 0.5396174484497788)
		(= (value_axe a3) 0.8602897789205496)
		(= (value_axe a4) 0.23217612806301458)

        (= (value_pickaxe p0) 0.513771663187637)
		(= (value_pickaxe p1) 0.9524673882682695)
		(= (value_pickaxe p2) 0.5777948078012031)

        (= (value_shovel s0) 4.213922123374679)
		(= (value_shovel s1) 2.8849563420899487)
		(= (value_shovel s2) 4.8359741662637425)

        (= (value_hoe h0) 29.14232562920454)
		(= (value_hoe h1) 10.114182589007859)
		(= (value_hoe h2) 25.673104652307796)

        (= (trees_in_map) 36)

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

