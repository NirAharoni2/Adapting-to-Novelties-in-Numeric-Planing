;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.990546108352362)

        (= (sled_supplies s0) 2.541531604088622)

        (= (factor_value f0) 0.5611366288172097)
		(= (factor_value f1) 0.7646207932118603)
		(= (factor_value f2) 0.8868960626308089)
		(= (factor_value f3) 0.7046606155172443)
		(= (factor_value f4) 0.9938286922881805)

        (= (dummy_1_value d1_0) 0.7388809815115212)

        (= (dummy_2_value d2_0) 3.176759495953676)
		(= (dummy_2_value d2_1) 4.69560239782518)
		(= (dummy_2_value d2_2) 1.3318226633336652)
		(= (dummy_2_value d2_3) 4.79098865383505)
		(= (dummy_2_value d2_4) 3.2372737663009827)

        (= (dummy_3_value d3_0) 89.04074124511969)
		(= (dummy_3_value d3_1) 83.27366481241776)
		(= (dummy_3_value d3_2) 50.359392237538835)
		(= (dummy_3_value d3_3) 4.133385365037544)

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

