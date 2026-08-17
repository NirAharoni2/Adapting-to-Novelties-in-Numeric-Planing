;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.02526940239022)

        (= (sled_supplies s0) 3.7266513565332864)

        (= (factor_value f0) 0.7931338293117539)
		(= (factor_value f1) 0.7749972334970129)
		(= (factor_value f2) 0.9882898516004991)
		(= (factor_value f3) 0.5814856188473991)
		(= (factor_value f4) 0.8183322064936378)

        (= (dummy_1_value d1_0) 0.9972655043906644)
		(= (dummy_1_value d1_1) 0.8680676432756644)
		(= (dummy_1_value d1_2) 0.7829542571166522)
		(= (dummy_1_value d1_3) 0.6841815762999208)
		(= (dummy_1_value d1_4) 0.7010694417415372)

        (= (dummy_2_value d2_0) 9.428707830093266)
		(= (dummy_2_value d2_1) 9.057974046164158)
		(= (dummy_2_value d2_2) 7.027086601890447)

        (= (dummy_3_value d3_0) 89.97604129431551)
		(= (dummy_3_value d3_1) 92.59120131964312)
		(= (dummy_3_value d3_2) 84.78801337984962)
		(= (dummy_3_value d3_3) 38.95820308192555)

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

