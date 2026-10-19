;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_94)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 43.88384780353509)

        (= (sled_supplies s0) 4.924959721461787)

        (= (factor) 2.70695)
		(= (factor) 3.93844)
		(= (factor) 2.14193)
		(= (factor) 0.51647)
		(= (factor) 0.57797)
		(= (factor) 1.68714)
		(= (factor) 2.89281)
		(= (factor) 0.82882)
		(= (factor) 1.37298)
		(= (factor) 3.14679)

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