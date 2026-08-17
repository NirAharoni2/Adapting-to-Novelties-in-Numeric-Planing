;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_55)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.4005427519705265)

        (= (sled_supplies s0) 1.389092941754539)

        (= (factor_value f0) 0.6846764567777849)
		(= (factor_value f1) 0.5445991090393265)
		(= (factor_value f2) 0.6100957408383038)
		(= (factor_value f3) 0.5016469584163905)

        (= (dummy_1_value d1_0) 0.7143358702136999)
		(= (dummy_1_value d1_1) 0.6500035084318985)
		(= (dummy_1_value d1_2) 0.8643941166680875)
		(= (dummy_1_value d1_3) 0.694372796980458)
		(= (dummy_1_value d1_4) 0.5830122074925937)

        (= (dummy_2_value d2_0) 9.580567494258379)
		(= (dummy_2_value d2_1) 9.050347964873385)

        (= (dummy_3_value d3_0) 69.2333705991727)

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

