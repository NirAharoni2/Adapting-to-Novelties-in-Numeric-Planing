;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_47)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5088301878465372)
		(= (value_axe a1) 0.830996791552341)
		(= (value_axe a2) 0.5518577183315405)

        (= (value_pickaxe p0) 0.27959335607750957)
		(= (value_pickaxe p1) 0.1687379408282208)
		(= (value_pickaxe p2) 0.017046708507992392)

        (= (value_shovel s0) 5.501652810148732)
		(= (value_shovel s1) 7.2788203709878685)
		(= (value_shovel s2) 7.343128973398674)

        (= (value_hoe h0) 19.34973873512984)
		(= (value_hoe h1) 23.309732340969532)
		(= (value_hoe h2) 28.572386631400583)
		(= (value_hoe h3) 26.2801888551505)
		(= (value_hoe h4) 22.052955257183825)

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

