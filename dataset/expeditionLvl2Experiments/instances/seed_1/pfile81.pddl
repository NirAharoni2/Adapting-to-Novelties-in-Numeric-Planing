;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_81)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.049992645805964)

        (= (sled_supplies s0) 4.321437169180221)

        (= (factor_value f0) 0.9087316701278074)
		(= (factor_value f1) 0.9346869897328822)
		(= (factor_value f2) 0.9760623741432434)

        (= (dummy_1_value d1_0) 0.707980006749955)

        (= (dummy_2_value d2_0) 1.1078600261407687)
		(= (dummy_2_value d2_1) 2.461198782200659)

        (= (dummy_3_value d3_0) 29.787551260078985)
		(= (dummy_3_value d3_1) 12.464762447123006)
		(= (dummy_3_value d3_2) 43.6314522087134)

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

