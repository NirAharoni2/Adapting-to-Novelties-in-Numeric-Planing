;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.844200205204729)

        (= (sled_supplies s0) 3.5559028412711418)

        (= (factor_value f0) 0.6424134232666814)
		(= (factor_value f1) 0.6203044922056717)
		(= (factor_value f2) 0.5274804664127637)
		(= (factor_value f3) 0.7624412134938598)

        (= (dummy_1_value d1_0) 0.9430633823964829)

        (= (dummy_2_value d2_0) 6.426164154043527)
		(= (dummy_2_value d2_1) 5.891793601741583)
		(= (dummy_2_value d2_2) 1.032244715723515)
		(= (dummy_2_value d2_3) 4.485179561104595)

        (= (dummy_3_value d3_0) 43.63002086245433)
		(= (dummy_3_value d3_1) 23.910200059066348)
		(= (dummy_3_value d3_2) 28.004700176394195)
		(= (dummy_3_value d3_3) 37.08098411201693)

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

