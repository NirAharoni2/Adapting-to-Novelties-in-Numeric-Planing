;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_74)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.984651706467949)

        (= (sled_supplies s0) 3.799106527573711)

        (= (factor_value f0) 0.5579675700046995)
		(= (factor_value f1) 0.9763176843012782)

        (= (dummy_1_value d1_0) 0.9057799605371413)
		(= (dummy_1_value d1_1) 0.6099182923823451)

        (= (dummy_2_value d2_0) 3.575002710718188)

        (= (dummy_3_value d3_0) 25.96036604191052)

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

