;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_56)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 17.02922633400483)

        (= (sled_supplies s0) 1.9728680039851114)

        (= (factor) 0.67327)
		(= (factor) 1.52347)
		(= (factor) 1.01699)
		(= (factor) 1.43684)
		(= (factor) 0.65974)
		(= (factor) 1.12912)
		(= (factor) 1.51692)
		(= (factor) 0.90664)
		(= (factor) 1.42406)
		(= (factor) 1.23424)

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