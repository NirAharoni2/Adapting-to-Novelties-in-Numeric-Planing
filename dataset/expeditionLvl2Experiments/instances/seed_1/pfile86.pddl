;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_86)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.650587777757654)

        (= (sled_supplies s0) 4.519257244014688)

        (= (factor_value f0) 0.8879365241384007)
		(= (factor_value f1) 0.5867616006802658)

        (= (dummy_1_value d1_0) 0.7989430325973215)
		(= (dummy_1_value d1_1) 0.5902024204934722)
		(= (dummy_1_value d1_2) 0.8878602684570926)
		(= (dummy_1_value d1_3) 0.7782163771262691)
		(= (dummy_1_value d1_4) 0.8992948966910548)

        (= (dummy_2_value d2_0) 1.5843473283847642)
		(= (dummy_2_value d2_1) 9.352056122949474)
		(= (dummy_2_value d2_2) 3.068299546919255)
		(= (dummy_2_value d2_3) 8.648032433323579)

        (= (dummy_3_value d3_0) 44.7181519060908)
		(= (dummy_3_value d3_1) 88.99619146334066)
		(= (dummy_3_value d3_2) 11.062542568477195)
		(= (dummy_3_value d3_3) 6.325530975827444)

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

