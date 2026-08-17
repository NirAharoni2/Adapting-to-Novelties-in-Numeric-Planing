;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_42)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.058429504250729)

        (= (sled_supplies s0) 4.24286113220058)

        (= (factor_value f0) 0.5983827887802642)

        (= (dummy_1_value d1_0) 0.8803199573890104)
		(= (dummy_1_value d1_1) 0.5583273575137835)
		(= (dummy_1_value d1_2) 0.6277499667632134)
		(= (dummy_1_value d1_3) 0.6994503299513974)
		(= (dummy_1_value d1_4) 0.7640049193470887)

        (= (dummy_2_value d2_0) 3.447870716876744)
		(= (dummy_2_value d2_1) 1.9179534062055121)
		(= (dummy_2_value d2_2) 4.262557546708566)
		(= (dummy_2_value d2_3) 8.278087470410465)

        (= (dummy_3_value d3_0) 73.87165023127402)

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

