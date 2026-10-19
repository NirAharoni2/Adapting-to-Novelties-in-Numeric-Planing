;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_53)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 103.00823273708833)

        (= (sled_supplies s0) 3.3532896664987906)

        (= (factor) 7.2624)
		(= (factor) 9.79885)
		(= (factor) 7.7777)
		(= (factor) 7.86049)
		(= (factor) 9.01996)
		(= (factor) 9.66936)
		(= (factor) 7.88526)
		(= (factor) 10.09568)
		(= (factor) 3.35798)
		(= (factor) 6.60088)

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