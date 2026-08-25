;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_42)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.940131134458557)

        (= (sled_supplies s0) 2.4714192004438673)

        (= (factor_value f0) 0.6508862482263493)

        (= (dummy_1_value d1_0) 0.583322273905855)
		(= (dummy_1_value d1_1) 0.9659454028397216)
		(= (dummy_1_value d1_2) 0.5386909531230615)

        (= (dummy_2_value d2_0) 5.038516689068489)
		(= (dummy_2_value d2_1) 7.6258887716275225)
		(= (dummy_2_value d2_2) 5.758666579227174)
		(= (dummy_2_value d2_3) 4.498700200663097)
		(= (dummy_2_value d2_4) 9.320613053594862)

        (= (dummy_3_value d3_0) 30.621835305728652)
		(= (dummy_3_value d3_1) 55.620860114222126)
		(= (dummy_3_value d3_2) 83.13729239599758)
		(= (dummy_3_value d3_3) 14.66249714168952)
		(= (dummy_3_value d3_4) 35.7456037122972)

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

