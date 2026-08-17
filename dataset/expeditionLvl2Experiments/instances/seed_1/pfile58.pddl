;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_58)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.64341324338887)

        (= (sled_supplies s0) 2.0149298337381496)

        (= (factor_value f0) 0.7587226708753212)
		(= (factor_value f1) 0.9069464531401175)
		(= (factor_value f2) 0.7891742596574277)
		(= (factor_value f3) 0.8625339754061089)
		(= (factor_value f4) 0.8588553001019785)

        (= (dummy_1_value d1_0) 0.9043092362640204)
		(= (dummy_1_value d1_1) 0.9930733917778181)
		(= (dummy_1_value d1_2) 0.7813563807981088)
		(= (dummy_1_value d1_3) 0.8315254728571722)
		(= (dummy_1_value d1_4) 0.7724982895463028)

        (= (dummy_2_value d2_0) 3.0760132328342147)
		(= (dummy_2_value d2_1) 1.339372171058522)
		(= (dummy_2_value d2_2) 2.5099715370248803)
		(= (dummy_2_value d2_3) 7.035379315110463)

        (= (dummy_3_value d3_0) 55.882476305841024)

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

