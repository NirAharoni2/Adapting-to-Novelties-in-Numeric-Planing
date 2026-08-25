;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.43812894915290224)
		(= (value_axe a1) 0.6224025481111165)
		(= (value_axe a2) 0.48796652227211057)
		(= (value_axe a3) 0.2120151305138076)
		(= (value_axe a4) 0.43126050085335277)

        (= (value_pickaxe p0) 0.53405454313922)
		(= (value_pickaxe p1) 0.9092960366464408)
		(= (value_pickaxe p2) 0.6605097077449822)
		(= (value_pickaxe p3) 0.2776724342123893)
		(= (value_pickaxe p4) 0.37884950451237565)

        (= (value_shovel s0) 4.915618866891135)
		(= (value_shovel s1) 7.7186288858120955)
		(= (value_shovel s2) 4.698542096252825)

        (= (value_hoe h0) 21.581652465616862)
		(= (value_hoe h1) 10.61616787724593)
		(= (value_hoe h2) 29.46182960355692)
		(= (value_hoe h3) 14.844783818026237)

        (= (trees_in_map) 28)

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

