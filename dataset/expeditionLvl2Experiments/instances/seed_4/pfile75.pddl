;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_75)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.25009474357677)

        (= (sled_supplies s0) 4.564230433669622)

        (= (factor_value f0) 0.8003987662351576)
		(= (factor_value f1) 0.8577066822604332)

        (= (dummy_1_value d1_0) 0.8745611905447526)
		(= (dummy_1_value d1_1) 0.8221601357536534)
		(= (dummy_1_value d1_2) 0.660938954132373)
		(= (dummy_1_value d1_3) 0.926428543736326)
		(= (dummy_1_value d1_4) 0.9723068684158032)

        (= (dummy_2_value d2_0) 1.1027446005597956)
		(= (dummy_2_value d2_1) 3.2417709700869146)
		(= (dummy_2_value d2_2) 8.79154185856849)
		(= (dummy_2_value d2_3) 3.9464490712468288)
		(= (dummy_2_value d2_4) 6.604206940099337)

        (= (dummy_3_value d3_0) 51.14181320975209)
		(= (dummy_3_value d3_1) 93.1130113956861)

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

