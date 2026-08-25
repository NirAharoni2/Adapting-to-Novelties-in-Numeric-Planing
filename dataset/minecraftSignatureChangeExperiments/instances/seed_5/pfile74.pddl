;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_74)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.09594246119061656)
		(= (value_axe a1) 0.3457837970995006)

        (= (value_pickaxe p0) 0.9450469570155549)
		(= (value_pickaxe p1) 0.08793810001248015)
		(= (value_pickaxe p2) 0.3424697806748852)
		(= (value_pickaxe p3) 0.2090164375021505)
		(= (value_pickaxe p4) 0.6818154089446032)

        (= (value_shovel s0) 4.231331953965773)
		(= (value_shovel s1) 1.6881129429594228)
		(= (value_shovel s2) 7.035931732324724)
		(= (value_shovel s3) 3.296703936517039)

        (= (value_hoe h0) 23.721393341674997)
		(= (value_hoe h1) 19.05662710970325)
		(= (value_hoe h2) 27.434409697464194)
		(= (value_hoe h3) 11.163217513997497)
		(= (value_hoe h4) 14.561591131904786)

        (= (trees_in_map) 29)

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

