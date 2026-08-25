;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.630953490865203)

        (= (sled_supplies s0) 3.6064216728978615)

        (= (factor_value f0) 0.8392740875078836)
		(= (factor_value f1) 0.7896730990181471)
		(= (factor_value f2) 0.9851563215451392)

        (= (dummy_1_value d1_0) 0.6680051008658309)
		(= (dummy_1_value d1_1) 0.8108124158696384)

        (= (dummy_2_value d2_0) 9.770376068387009)
		(= (dummy_2_value d2_1) 7.295533739635218)
		(= (dummy_2_value d2_2) 9.707455066881785)
		(= (dummy_2_value d2_3) 1.6097115385109062)

        (= (dummy_3_value d3_0) 98.77571375542183)
		(= (dummy_3_value d3_1) 25.515506203436733)
		(= (dummy_3_value d3_2) 96.73343347181229)
		(= (dummy_3_value d3_3) 29.79771444453195)
		(= (dummy_3_value d3_4) 3.0568556360371204)

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

