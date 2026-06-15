;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_97)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.3638637573503841)
		(= (value_axe a1) 0.5659471174893265)
		(= (value_axe a2) 0.9251718611583242)

        (= (value_pickaxe p0) 0.5404614878931574)
		(= (value_pickaxe p1) 0.18224407944383603)
		(= (value_pickaxe p2) 0.9645011492242996)

        (= (value_shovel s0) 2.491356555141989)
		(= (value_shovel s1) 7.990633988049906)
		(= (value_shovel s2) 3.9460639145029184)

        (= (value_hoe h0) 26.633708619600263)
		(= (value_hoe h1) 16.76522163997175)
		(= (value_hoe h2) 14.153861652383897)
		(= (value_hoe h3) 19.93324868027621)
		(= (value_hoe h4) 10.30985839775991)

        (= (trees_in_map) 34)

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

