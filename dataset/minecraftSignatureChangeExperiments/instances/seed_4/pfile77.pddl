;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_77)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.44349015236039413)
		(= (value_axe a1) 0.6753356962412255)
		(= (value_axe a2) 0.4073020285127783)

        (= (value_pickaxe p0) 0.8575079108016426)
		(= (value_pickaxe p1) 0.2966214798472919)
		(= (value_pickaxe p2) 0.32303387768309144)
		(= (value_pickaxe p3) 0.48981708784213895)
		(= (value_pickaxe p4) 0.7668438604471013)

        (= (value_shovel s0) 7.624438033380888)
		(= (value_shovel s1) 1.9315614840334736)
		(= (value_shovel s2) 2.285719525242208)

        (= (value_hoe h0) 11.918470173171894)
		(= (value_hoe h1) 14.474148807017528)
		(= (value_hoe h2) 25.054376535026286)
		(= (value_hoe h3) 15.120002026227436)
		(= (value_hoe h4) 26.618788432335172)

        (= (trees_in_map) 23)

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

