;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_66)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.996514348448652)

        (= (sled_supplies s0) 0.5424717715651994)

        (= (factor_value f0) 0.778162495953694)

        (= (dummy_1_value d1_0) 0.9798049673421529)
		(= (dummy_1_value d1_1) 0.5597640861353633)
		(= (dummy_1_value d1_2) 0.5123518139864061)
		(= (dummy_1_value d1_3) 0.5876011410285737)
		(= (dummy_1_value d1_4) 0.6597913897941047)

        (= (dummy_2_value d2_0) 9.869126319179781)
		(= (dummy_2_value d2_1) 2.153478319418082)
		(= (dummy_2_value d2_2) 5.692914584324123)

        (= (dummy_3_value d3_0) 85.76650358922012)
		(= (dummy_3_value d3_1) 31.134312028862475)
		(= (dummy_3_value d3_2) 29.828562174230505)
		(= (dummy_3_value d3_3) 22.035508012979154)

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

