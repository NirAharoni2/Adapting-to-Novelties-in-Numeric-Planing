;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_58)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 24.431497327156013)

        (= (sled_supplies s0) 0.7323557831169081)

        (= (factor) 0.71896)
		(= (factor) 2.01368)
		(= (factor) 1.91323)
		(= (factor) 0.85918)
		(= (factor) 0.86758)
		(= (factor) 1.30962)
		(= (factor) 1.94438)
		(= (factor) 2.08512)
		(= (factor) 1.95484)
		(= (factor) 1.65018)

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