;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_69)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.4795444807851865)

        (= (sled_supplies s0) 3.266822008562206)

        (= (factor_value f0) 0.9945241504199687)
		(= (factor_value f1) 0.8227183411503968)
		(= (factor_value f2) 0.564182422239527)

        (= (dummy_1_value d1_0) 0.8453826281960632)
		(= (dummy_1_value d1_1) 0.9797389261784442)
		(= (dummy_1_value d1_2) 0.8037185309111332)
		(= (dummy_1_value d1_3) 0.6162860469043501)
		(= (dummy_1_value d1_4) 0.9811947630496736)

        (= (dummy_2_value d2_0) 7.304980398764833)

        (= (dummy_3_value d3_0) 19.1154410898483)
		(= (dummy_3_value d3_1) 76.8555750989901)

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

