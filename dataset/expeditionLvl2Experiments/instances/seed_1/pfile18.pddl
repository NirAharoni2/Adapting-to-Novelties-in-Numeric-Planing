;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_18)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.192789373445615)

        (= (sled_supplies s0) 1.0916394906292735)

        (= (factor_value f0) 0.5357756941139485)
		(= (factor_value f1) 0.7558458546001032)
		(= (factor_value f2) 0.9387120394732436)
		(= (factor_value f3) 0.5797338653789155)

        (= (dummy_1_value d1_0) 0.8830139293986561)
		(= (dummy_1_value d1_1) 0.9415047846877732)
		(= (dummy_1_value d1_2) 0.6559010159176512)

        (= (dummy_2_value d2_0) 7.233012681425331)
		(= (dummy_2_value d2_1) 8.640920102379177)
		(= (dummy_2_value d2_2) 4.344528976728084)
		(= (dummy_2_value d2_3) 7.311543966170278)
		(= (dummy_2_value d2_4) 7.627763049177863)

        (= (dummy_3_value d3_0) 59.86320267924925)
		(= (dummy_3_value d3_1) 85.77143675238747)
		(= (dummy_3_value d3_2) 89.76383274051854)
		(= (dummy_3_value d3_3) 96.04780287952104)
		(= (dummy_3_value d3_4) 57.55203672753701)

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

