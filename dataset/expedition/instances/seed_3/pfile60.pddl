;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_60)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 42.14463428953813)

        (= (sled_supplies s0) 4.630239890737769)

        (= (factor) 2.85512)
		(= (factor) 0.89924)
		(= (factor) 3.308)
		(= (factor) 1.36843)
		(= (factor) 1.143)
		(= (factor) 2.82161)
		(= (factor) 1.23883)
		(= (factor) 3.40527)
		(= (factor) 1.28706)
		(= (factor) 3.51883)

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