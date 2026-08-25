;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.344530984019634)

        (= (sled_supplies s0) 1.6164764364501645)

        (= (factor_value f0) 0.5196896752097172)
		(= (factor_value f1) 0.5472557015364534)
		(= (factor_value f2) 0.8686146285248664)

        (= (dummy_1_value d1_0) 0.9790497552841021)
		(= (dummy_1_value d1_1) 0.7033079605705237)
		(= (dummy_1_value d1_2) 0.7308877424007202)
		(= (dummy_1_value d1_3) 0.5358547837517922)

        (= (dummy_2_value d2_0) 4.795449139490098)
		(= (dummy_2_value d2_1) 9.45354910258022)
		(= (dummy_2_value d2_2) 5.870300431622653)
		(= (dummy_2_value d2_3) 6.863872781177616)

        (= (dummy_3_value d3_0) 68.48151425752833)

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

