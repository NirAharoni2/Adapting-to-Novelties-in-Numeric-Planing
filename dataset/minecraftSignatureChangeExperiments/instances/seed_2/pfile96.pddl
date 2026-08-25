;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_96)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.4652866980028362)
		(= (value_axe a1) 0.6967461187154943)
		(= (value_axe a2) 0.788278167677459)
		(= (value_axe a3) 0.6630404380936541)
		(= (value_axe a4) 0.9774130824897637)

        (= (value_pickaxe p0) 0.7399350281910801)
		(= (value_pickaxe p1) 0.3935477161586233)

        (= (value_shovel s0) 6.845027839819605)
		(= (value_shovel s1) 5.286332579298505)

        (= (value_hoe h0) 21.948895789821094)
		(= (value_hoe h1) 21.87199483246804)
		(= (value_hoe h2) 25.052525658052314)
		(= (value_hoe h3) 24.17452656552922)
		(= (value_hoe h4) 19.165681837021637)

        (= (trees_in_map) 33)

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

