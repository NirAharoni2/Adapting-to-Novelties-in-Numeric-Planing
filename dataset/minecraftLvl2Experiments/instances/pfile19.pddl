;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.2824351346927486)
		(= (value_axe a1) 0.7357124491393567)
		(= (value_axe a2) 0.9579854152838561)
		(= (value_axe a3) 0.98765259235775)
		(= (value_axe a4) 0.2074829887650398)

        (= (value_pickaxe p0) 0.8946503429420292)
		(= (value_pickaxe p1) 0.8993137674212076)
		(= (value_pickaxe p2) 0.9040745040979172)
		(= (value_pickaxe p3) 0.06941985572441334)
		(= (value_pickaxe p4) 0.8209888508854455)

        (= (value_shovel s0) 1.8752843995676978)
		(= (value_shovel s1) 1.7150561383754743)
		(= (value_shovel s2) 1.7470383727852807)
		(= (value_shovel s3) 2.687295595707577)

        (= (value_hoe h0) 16.882164920823534)
		(= (value_hoe h1) 21.815803776490903)
		(= (value_hoe h2) 20.249610657350516)
		(= (value_hoe h3) 27.130683683737914)

        (= (trees_in_map) 39)

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

