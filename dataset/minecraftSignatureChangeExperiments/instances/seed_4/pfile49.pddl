;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.034602948798521216)
		(= (value_axe a1) 0.6304980922917751)
		(= (value_axe a2) 0.5329169769909088)
		(= (value_axe a3) 0.9255417699120383)
		(= (value_axe a4) 0.4720128763856716)

        (= (value_pickaxe p0) 0.4412783486130749)
		(= (value_pickaxe p1) 0.9463022765931436)

        (= (value_shovel s0) 4.028651190765583)
		(= (value_shovel s1) 6.987191784983535)
		(= (value_shovel s2) 2.7501722789620855)

        (= (value_hoe h0) 21.415050179872882)
		(= (value_hoe h1) 15.346196502189958)
		(= (value_hoe h2) 23.791249180381524)

        (= (trees_in_map) 30)

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

