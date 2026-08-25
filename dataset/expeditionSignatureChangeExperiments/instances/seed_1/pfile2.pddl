;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.818504975657447)

        (= (sled_supplies s0) 3.146764524003245)

        (= (factor_value f0) 0.9695835094742933)

        (= (dummy_1_value d1_0) 0.7764297881464826)
		(= (dummy_1_value d1_1) 0.6728502073543763)
		(= (dummy_1_value d1_2) 0.8384242699249872)
		(= (dummy_1_value d1_3) 0.8804738687709103)

        (= (dummy_2_value d2_0) 9.570200097620743)
		(= (dummy_2_value d2_1) 9.338559614072794)

        (= (dummy_3_value d3_0) 42.20181395054026)
		(= (dummy_3_value d3_1) 91.71071371502413)
		(= (dummy_3_value d3_2) 92.29666768451885)
		(= (dummy_3_value d3_3) 10.900026838516592)

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

