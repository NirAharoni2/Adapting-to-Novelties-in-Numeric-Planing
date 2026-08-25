;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.859404960628662)

        (= (sled_supplies s0) 4.066771937011379)

        (= (factor_value f0) 0.8363827207067709)

        (= (dummy_1_value d1_0) 0.5414515887022877)
		(= (dummy_1_value d1_1) 0.9772810826728738)
		(= (dummy_1_value d1_2) 0.5126723574134505)
		(= (dummy_1_value d1_3) 0.864711753720902)

        (= (dummy_2_value d2_0) 1.190303827508356)

        (= (dummy_3_value d3_0) 26.313315351686818)

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

