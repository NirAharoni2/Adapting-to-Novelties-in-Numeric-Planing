;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_81)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.8593843990279285)
		(= (value_axe a1) 0.13325329151192067)

        (= (value_pickaxe p0) 0.4422243447164529)
		(= (value_pickaxe p1) 0.3639424204756041)
		(= (value_pickaxe p2) 0.7474696638978153)
		(= (value_pickaxe p3) 0.028709642509242794)

        (= (value_shovel s0) 3.2083387518113238)
		(= (value_shovel s1) 6.248457134862871)
		(= (value_shovel s2) 7.2080912060961495)
		(= (value_shovel s3) 1.2843844141673266)

        (= (value_hoe h0) 21.767068609902623)
		(= (value_hoe h1) 23.272170965288566)
		(= (value_hoe h2) 27.458337325731556)
		(= (value_hoe h3) 18.491588560398036)

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

