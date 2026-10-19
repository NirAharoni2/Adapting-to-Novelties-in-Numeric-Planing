;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_83)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 184.2269181899322)

        (= (sled_supplies s0) 4.852937348372369)

        (= (factor) 8.46984)
		(= (factor) 2.19278)
		(= (factor) 0.8305)
		(= (factor) 1.04448)
		(= (factor) 9.34423)
		(= (factor) 13.29974)
		(= (factor) 1.41855)
		(= (factor) 6.4113)
		(= (factor) 9.07433)
		(= (factor) 16.58706)

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