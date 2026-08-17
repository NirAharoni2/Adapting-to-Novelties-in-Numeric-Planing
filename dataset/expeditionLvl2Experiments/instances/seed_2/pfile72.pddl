;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_72)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.112143852261258)

        (= (sled_supplies s0) 3.253513508899254)

        (= (factor_value f0) 0.7647945182404872)
		(= (factor_value f1) 0.9550560239639565)

        (= (dummy_1_value d1_0) 0.6576172717569035)
		(= (dummy_1_value d1_1) 0.7867251110061224)
		(= (dummy_1_value d1_2) 0.974902900435861)
		(= (dummy_1_value d1_3) 0.7087103875360355)

        (= (dummy_2_value d2_0) 1.7490592438425616)
		(= (dummy_2_value d2_1) 8.542501782375489)
		(= (dummy_2_value d2_2) 9.304525261485004)

        (= (dummy_3_value d3_0) 17.94720994593839)
		(= (dummy_3_value d3_1) 29.382127343311453)

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

