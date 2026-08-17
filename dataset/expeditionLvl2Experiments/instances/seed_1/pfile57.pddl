;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_57)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.057138676266469)

        (= (sled_supplies s0) 6.621996201633768)

        (= (factor_value f0) 0.6494675621719477)
		(= (factor_value f1) 0.8526899906376479)

        (= (dummy_1_value d1_0) 0.5109509352233104)
		(= (dummy_1_value d1_1) 0.9002703495703748)
		(= (dummy_1_value d1_2) 0.8110351696334583)

        (= (dummy_2_value d2_0) 1.9273522163679033)
		(= (dummy_2_value d2_1) 4.353691308146246)
		(= (dummy_2_value d2_2) 4.992337042794145)
		(= (dummy_2_value d2_3) 6.565239314170431)

        (= (dummy_3_value d3_0) 6.1543839724881995)
		(= (dummy_3_value d3_1) 78.3440681416162)
		(= (dummy_3_value d3_2) 16.830285216978496)
		(= (dummy_3_value d3_3) 14.10452105631904)
		(= (dummy_3_value d3_4) 92.40901193238744)

        (= (waypoint_supplies w0_0) 1000)
		(= (waypoint_supplies w0_1) 0.0)
		(= (waypoint_supplies w0_2) 0.0)
		(= (waypoint_supplies w0_3) 0.0)
		(= (waypoint_supplies w0_4) 0.0)

		(is_next w0_0 w0_1)
		(is_next w0_1 w0_2)
		(is_next w0_2 w0_3)
		(is_next w0_3 w0_4)
	)
	(:goal
		(and
			(at s0 w0_4)
		)
	)
)

