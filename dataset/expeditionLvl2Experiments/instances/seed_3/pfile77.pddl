;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_77)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.5675164035194475)

        (= (sled_supplies s0) 4.5880139170449565)

        (= (factor_value f0) 0.642919911293855)
		(= (factor_value f1) 0.6245613409188633)
		(= (factor_value f2) 0.9310957520626715)
		(= (factor_value f3) 0.9092955714056946)
		(= (factor_value f4) 0.7896984941386976)

        (= (dummy_1_value d1_0) 0.5744929554100411)
		(= (dummy_1_value d1_1) 0.7143296922371762)
		(= (dummy_1_value d1_2) 0.850998220611437)
		(= (dummy_1_value d1_3) 0.5289541798215904)
		(= (dummy_1_value d1_4) 0.9604680515936728)

        (= (dummy_2_value d2_0) 8.572197714454074)

        (= (dummy_3_value d3_0) 93.23847663438775)

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

