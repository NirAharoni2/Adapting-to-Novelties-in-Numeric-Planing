;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.793051001742258)

        (= (sled_supplies s0) 3.641902711650737)

        (= (factor_value f0) 0.661843918267059)
		(= (factor_value f1) 0.5619503909435657)
		(= (factor_value f2) 0.8589838238416319)
		(= (factor_value f3) 0.6751063775449961)
		(= (factor_value f4) 0.7696476742602987)

        (= (dummy_1_value d1_0) 0.669682572719035)
		(= (dummy_1_value d1_1) 0.8655668150015655)
		(= (dummy_1_value d1_2) 0.7857075202923236)

        (= (dummy_2_value d2_0) 2.017858332611725)
		(= (dummy_2_value d2_1) 9.26031121908146)
		(= (dummy_2_value d2_2) 4.441470852756697)
		(= (dummy_2_value d2_3) 6.011997089049822)
		(= (dummy_2_value d2_4) 9.95347757263922)

        (= (dummy_3_value d3_0) 63.91776277287494)
		(= (dummy_3_value d3_1) 72.5065227395641)
		(= (dummy_3_value d3_2) 74.11792507851648)

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

