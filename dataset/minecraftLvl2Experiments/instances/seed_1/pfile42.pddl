;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_42)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.043574618551851296)
		(= (value_axe a1) 0.8149486765188295)
		(= (value_axe a2) 0.651117045683278)
		(= (value_axe a3) 0.3136501715897636)
		(= (value_axe a4) 0.2983209812551685)

        (= (value_pickaxe p0) 0.35261614078782044)
		(= (value_pickaxe p1) 0.325288696205143)
		(= (value_pickaxe p2) 0.7485137769587532)
		(= (value_pickaxe p3) 0.5010568574712526)

        (= (value_shovel s0) 4.682898781098782)
		(= (value_shovel s1) 2.041295492796416)
		(= (value_shovel s2) 7.400926016924084)

        (= (value_hoe h0) 16.51145857344667)
		(= (value_hoe h1) 16.55128904776424)

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

