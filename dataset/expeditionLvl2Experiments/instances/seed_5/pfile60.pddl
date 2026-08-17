;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_60)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.727261635778413)

        (= (sled_supplies s0) 7.173715592087234)

        (= (factor_value f0) 0.7308094252832695)
		(= (factor_value f1) 0.5491509244971016)
		(= (factor_value f2) 0.9311379808803375)

        (= (dummy_1_value d1_0) 0.6640502811797885)
		(= (dummy_1_value d1_1) 0.8430348335418749)
		(= (dummy_1_value d1_2) 0.7264156777425812)
		(= (dummy_1_value d1_3) 0.9358602424366048)

        (= (dummy_2_value d2_0) 1.5234478812988734)

        (= (dummy_3_value d3_0) 23.579876102928687)
		(= (dummy_3_value d3_1) 29.27684899897028)
		(= (dummy_3_value d3_2) 27.16962550977382)

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

