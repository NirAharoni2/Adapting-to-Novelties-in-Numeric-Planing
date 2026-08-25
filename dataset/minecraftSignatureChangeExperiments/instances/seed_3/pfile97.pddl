;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_97)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7400445343589294)
		(= (value_axe a1) 0.9286977666171756)
		(= (value_axe a2) 0.6959710463757097)

        (= (value_pickaxe p0) 0.35648211068407387)
		(= (value_pickaxe p1) 0.5078335421733775)
		(= (value_pickaxe p2) 0.7485323172123487)
		(= (value_pickaxe p3) 0.8149023233594743)
		(= (value_pickaxe p4) 0.3699009023161206)

        (= (value_shovel s0) 3.4875267000125585)
		(= (value_shovel s1) 5.301514827559599)
		(= (value_shovel s2) 2.598658051669179)
		(= (value_shovel s3) 7.180781730674457)

        (= (value_hoe h0) 10.001477337600885)
		(= (value_hoe h1) 22.974041276741325)
		(= (value_hoe h2) 19.7125474010518)
		(= (value_hoe h3) 13.900116255497236)
		(= (value_hoe h4) 21.403772066930692)

        (= (trees_in_map) 35)

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

