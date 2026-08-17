;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_79)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.76394075446901)
		(= (value_axe a1) 0.6267727982424156)
		(= (value_axe a2) 0.747676831977489)
		(= (value_axe a3) 0.417641317835178)

        (= (value_pickaxe p0) 0.16217063119049535)
		(= (value_pickaxe p1) 0.17180124000240482)
		(= (value_pickaxe p2) 0.20369257366680804)
		(= (value_pickaxe p3) 0.15578217320100374)

        (= (value_shovel s0) 5.072677595755519)
		(= (value_shovel s1) 5.7080443636663905)
		(= (value_shovel s2) 7.482081633521701)
		(= (value_shovel s3) 1.3443890108694971)
		(= (value_shovel s4) 4.21187992579345)

        (= (value_hoe h0) 10.175089020739577)
		(= (value_hoe h1) 27.225281254410937)
		(= (value_hoe h2) 27.199108058535526)
		(= (value_hoe h3) 20.5109082797871)
		(= (value_hoe h4) 24.844485486520135)

        (= (trees_in_map) 26)

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

