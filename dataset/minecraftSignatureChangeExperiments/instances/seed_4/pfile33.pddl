;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.6216412264308528)
		(= (value_axe a1) 0.1339745088142238)
		(= (value_axe a2) 0.6051544866380063)
		(= (value_axe a3) 0.23351271029670873)
		(= (value_axe a4) 0.7399500780878553)

        (= (value_pickaxe p0) 0.5409524264514526)
		(= (value_pickaxe p1) 0.37194320686235405)
		(= (value_pickaxe p2) 0.7299540590161945)
		(= (value_pickaxe p3) 0.9283082908075277)
		(= (value_pickaxe p4) 0.8367649357344545)

        (= (value_shovel s0) 5.6155236416382195)
		(= (value_shovel s1) 5.007360835026091)
		(= (value_shovel s2) 3.4141782135221583)

        (= (value_hoe h0) 21.936529626708882)
		(= (value_hoe h1) 29.30229612255443)
		(= (value_hoe h2) 10.642649314415614)

        (= (trees_in_map) 24)

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

