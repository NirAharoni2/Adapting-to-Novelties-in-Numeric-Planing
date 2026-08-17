;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.8987919599055768)
		(= (value_axe a1) 0.49116020718177145)
		(= (value_axe a2) 0.9357362201159075)
		(= (value_axe a3) 0.053761487325957535)

        (= (value_pickaxe p0) 0.24346361789290383)
		(= (value_pickaxe p1) 0.0504577420459541)

        (= (value_shovel s0) 3.7812323903354903)
		(= (value_shovel s1) 1.4209712321706671)

        (= (value_hoe h0) 15.108600979064043)
		(= (value_hoe h1) 18.149439162891646)
		(= (value_hoe h2) 16.11897776134216)

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

