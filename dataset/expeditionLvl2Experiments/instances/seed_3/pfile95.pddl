;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_95)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.540063261636542)

        (= (sled_supplies s0) 2.8743507934614794)

        (= (factor_value f0) 0.6612246028786843)
		(= (factor_value f1) 0.9642874142369222)
		(= (factor_value f2) 0.6184067989727764)
		(= (factor_value f3) 0.8336504394254769)
		(= (factor_value f4) 0.5867081783714918)

        (= (dummy_1_value d1_0) 0.8592216410141896)
		(= (dummy_1_value d1_1) 0.6229373767566071)
		(= (dummy_1_value d1_2) 0.6405615915741625)
		(= (dummy_1_value d1_3) 0.6544000657185385)
		(= (dummy_1_value d1_4) 0.6862175146272904)

        (= (dummy_2_value d2_0) 9.963068053971725)

        (= (dummy_3_value d3_0) 37.6718872332162)
		(= (dummy_3_value d3_1) 54.19829110049828)

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

