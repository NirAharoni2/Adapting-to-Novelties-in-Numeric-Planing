;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_59)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.499319078919765)

        (= (sled_supplies s0) 5.937882967448264)

        (= (factor_value f0) 0.9421753349922124)
		(= (factor_value f1) 0.5690582025623423)
		(= (factor_value f2) 0.503550062693186)

        (= (dummy_1_value d1_0) 0.5414044209905097)
		(= (dummy_1_value d1_1) 0.8926066514796026)
		(= (dummy_1_value d1_2) 0.6953901339621378)
		(= (dummy_1_value d1_3) 0.7278908548984133)
		(= (dummy_1_value d1_4) 0.9970122376950284)

        (= (dummy_2_value d2_0) 6.500308960559383)
		(= (dummy_2_value d2_1) 3.36987309593673)

        (= (dummy_3_value d3_0) 70.39533003308563)
		(= (dummy_3_value d3_1) 1.1959248254169386)
		(= (dummy_3_value d3_2) 28.871763360219)

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

