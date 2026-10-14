;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.761870690388413)

        (= (sled_supplies s0) 3.971061253943555)

        (= (factor_value f0) 2.5762425504900346)
		(= (factor_value f1) 2.289207680310888)
		(= (factor_value f2) 1.420734792779252)
		(= (factor_value f3) 1.2163379537131143)

        (= (dummy_1_value d1_0) 0.8831624329503953)
		(= (dummy_1_value d1_1) 0.9695978601573416)
		(= (dummy_1_value d1_2) 0.8098521420736053)

        (= (dummy_2_value d2_0) 8.305552548863005)
		(= (dummy_2_value d2_1) 9.807364589805685)
		(= (dummy_2_value d2_2) 7.131851959165654)
		(= (dummy_2_value d2_3) 7.431920326966333)

        (= (dummy_3_value d3_0) 21.230129651040276)
		(= (dummy_3_value d3_1) 7.6105493350473585)
		(= (dummy_3_value d3_2) 57.55041778915648)
		(= (dummy_3_value d3_3) 64.4621875194548)
		(= (dummy_3_value d3_4) 85.65988759851703)

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

