;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_92)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5989006652873594)
		(= (value_axe a1) 0.7557365693157224)
		(= (value_axe a2) 0.8623147861221004)
		(= (value_axe a3) 0.32367509719235676)

        (= (value_pickaxe p0) 0.5823825146487096)
		(= (value_pickaxe p1) 0.6298527643761178)
		(= (value_pickaxe p2) 0.685205165471304)

        (= (value_shovel s0) 5.08772272899629)
		(= (value_shovel s1) 4.2565172867864645)
		(= (value_shovel s2) 6.665840725147764)
		(= (value_shovel s3) 1.1393681441568169)
		(= (value_shovel s4) 6.503087544295139)

        (= (value_hoe h0) 13.341891452589591)
		(= (value_hoe h1) 13.644101656419807)
		(= (value_hoe h2) 23.435370641715316)

        (= (trees_in_map) 34)

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

