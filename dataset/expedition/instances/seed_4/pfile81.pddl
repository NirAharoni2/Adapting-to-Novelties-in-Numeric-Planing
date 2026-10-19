;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_81)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 64.44184724856521)

        (= (sled_supplies s0) 2.2051026340987683)

        (= (factor) 0.76703)
		(= (factor) 5.36617)
		(= (factor) 5.08489)
		(= (factor) 1.42024)
		(= (factor) 5.35699)
		(= (factor) 5.48398)
		(= (factor) 3.91407)
		(= (factor) 2.12794)
		(= (factor) 0.83553)
		(= (factor) 0.87695)

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