
(define (problem simple_escape)
    (:domain wumpus_world)
    (:objects
        p1_0 p2_0 p3_0 p4_0 p5_0 p9_0 p10_0 p11_0 p0_1 p2_1 p4_1 p6_1 p7_1 p8_1 p10_1 p1_2 p5_2 p6_2 p7_2 p8_2 p9_2 p11_2 p0_3 p2_3 p3_3 p5_3 p7_3 p8_3 p9_3 p11_3 p0_4 p1_4 p2_4 p3_4 p5_4 p6_4 p9_4 p0_5 p1_5 p3_5 p4_5 p5_5 p6_5 p8_5 p9_5 p10_5 p11_5 p0_6 p2_6 p3_6 p4_6 p6_6 p7_6 p8_6 p9_6 p2_7 p4_7 p6_7 p7_7 p9_7 p1_-1 p2_-1 p2_8 p3_-1 p4_-1 p4_8 p5_-1 p6_8 p7_8 p9_-1 p9_8 p10_-1 p11_-1 p12_0 p-1_1 p12_2 p-1_3 p12_3 p-1_4 p-1_5 p12_5 p-1_6 - pos
         - crate
        wumpus1 wumpus2 wumpus3 wumpus4 wumpus5 wumpus6 wumpus7 wumpus8 wumpus9 wumpus10 wumpus11 wumpus12 wumpus13 - wumpus
         - arrow
        firework1 firework2 firework3 firework4 firework5 firework6 firework7 firework8 firework9 firework10 firework11 firework12 firework13 firework14 - firework
         - halfcrate
         - pit

    )
    (:init
        (agent-at p6_2)
        (firework-count-0);
        
        (path p1_0 p2_0) (path p2_0 p1_0) (path p2_0 p3_0) (path p3_0 p2_0) (path p2_0 p2_1) (path p2_1 p2_0) (path p3_0 p4_0) (path p4_0 p3_0) (path p4_0 p5_0) (path p5_0 p4_0) (path p4_0 p4_1) (path p4_1 p4_0) (path p9_0 p10_0) (path p10_0 p9_0) (path p10_0 p11_0) (path p11_0 p10_0) (path p10_0 p10_1) (path p10_1 p10_0) (path p6_1 p7_1) (path p7_1 p6_1) (path p6_1 p6_2) (path p6_2 p6_1) (path p7_1 p8_1) (path p8_1 p7_1) (path p7_1 p7_2) (path p7_2 p7_1) (path p8_1 p8_2) (path p8_2 p8_1) (path p5_2 p6_2) (path p6_2 p5_2) (path p5_2 p5_3) (path p5_3 p5_2) (path p6_2 p7_2) (path p7_2 p6_2) (path p7_2 p8_2) (path p8_2 p7_2) (path p7_2 p7_3) (path p7_3 p7_2) (path p8_2 p9_2) (path p9_2 p8_2) (path p8_2 p8_3) (path p8_3 p8_2) (path p9_2 p9_3) (path p9_3 p9_2) (path p11_2 p11_3) (path p11_3 p11_2) (path p0_3 p0_4) (path p0_4 p0_3) (path p2_3 p3_3) (path p3_3 p2_3) (path p2_3 p2_4) (path p2_4 p2_3) (path p3_3 p3_4) (path p3_4 p3_3) (path p5_3 p5_4) (path p5_4 p5_3) (path p7_3 p8_3) (path p8_3 p7_3) (path p8_3 p9_3) (path p9_3 p8_3) (path p9_3 p9_4) (path p9_4 p9_3) (path p0_4 p1_4) (path p1_4 p0_4) (path p0_4 p0_5) (path p0_5 p0_4) (path p1_4 p2_4) (path p2_4 p1_4) (path p1_4 p1_5) (path p1_5 p1_4) (path p2_4 p3_4) (path p3_4 p2_4) (path p3_4 p3_5) (path p3_5 p3_4) (path p5_4 p6_4) (path p6_4 p5_4) (path p5_4 p5_5) (path p5_5 p5_4) (path p6_4 p6_5) (path p6_5 p6_4) (path p9_4 p9_5) (path p9_5 p9_4) (path p0_5 p1_5) (path p1_5 p0_5) (path p0_5 p0_6) (path p0_6 p0_5) (path p3_5 p4_5) (path p4_5 p3_5) (path p3_5 p3_6) (path p3_6 p3_5) (path p4_5 p5_5) (path p5_5 p4_5) (path p4_5 p4_6) (path p4_6 p4_5) (path p5_5 p6_5) (path p6_5 p5_5) (path p6_5 p6_6) (path p6_6 p6_5) (path p8_5 p9_5) (path p9_5 p8_5) (path p8_5 p8_6) (path p8_6 p8_5) (path p9_5 p10_5) (path p10_5 p9_5) (path p9_5 p9_6) (path p9_6 p9_5) (path p10_5 p11_5) (path p11_5 p10_5) (path p2_6 p3_6) (path p3_6 p2_6) (path p2_6 p2_7) (path p2_7 p2_6) (path p3_6 p4_6) (path p4_6 p3_6) (path p4_6 p4_7) (path p4_7 p4_6) (path p6_6 p7_6) (path p7_6 p6_6) (path p6_6 p6_7) (path p6_7 p6_6) (path p7_6 p8_6) (path p8_6 p7_6) (path p7_6 p7_7) (path p7_7 p7_6) (path p8_6 p9_6) (path p9_6 p8_6) (path p9_6 p9_7) (path p9_7 p9_6) (path p6_7 p7_7) (path p7_7 p6_7) (path p1_0 p1_-1) (path p2_0 p2_-1) (path p2_7 p2_8) (path p3_0 p3_-1) (path p4_0 p4_-1) (path p4_7 p4_8) (path p5_0 p5_-1) (path p6_7 p6_8) (path p7_7 p7_8) (path p9_0 p9_-1) (path p9_7 p9_8) (path p10_0 p10_-1) (path p11_0 p11_-1) (path p11_0 p12_0) (path p0_1 p-1_1) (path p11_2 p12_2) (path p0_3 p-1_3) (path p11_3 p12_3) (path p0_4 p-1_4) (path p0_5 p-1_5) (path p11_5 p12_5) (path p0_6 p-1_6)
        
        (wumpus-at wumpus1 p1_0) (wumpus-at wumpus2 p9_2) (wumpus-at wumpus3 p5_3) (wumpus-at wumpus4 p8_3) (wumpus-at wumpus5 p11_3) (wumpus-at wumpus6 p1_4) (wumpus-at wumpus7 p9_4) (wumpus-at wumpus8 p1_5) (wumpus-at wumpus9 p10_5) (wumpus-at wumpus10 p2_6) (wumpus-at wumpus11 p6_6) (wumpus-at wumpus12 p4_7) (wumpus-at wumpus13 p7_7)
        
        (firework-at firework1 p3_0) (firework-at firework2 p5_0) (firework-at firework3 p9_0) (firework-at firework4 p4_1) (firework-at firework5 p8_1) (firework-at firework6 p1_2) (firework-at firework7 p11_2) (firework-at firework8 p7_3) (firework-at firework9 p6_5) (firework-at firework10 p8_5) (firework-at firework11 p11_5) (firework-at firework12 p0_6) (firework-at firework13 p8_6) (firework-at firework14 p9_6)
        (empty p2_0) (empty p4_0) (empty p10_0) (empty p11_0) (empty p0_1) (empty p2_1) (empty p6_1) (empty p7_1) (empty p10_1) (empty p5_2) (empty p7_2) (empty p8_2) (empty p0_3) (empty p2_3) (empty p3_3) (empty p9_3) (empty p0_4) (empty p2_4) (empty p3_4) (empty p5_4) (empty p6_4) (empty p0_5) (empty p3_5) (empty p4_5) (empty p5_5) (empty p9_5) (empty p3_6) (empty p4_6) (empty p7_6) (empty p2_7) (empty p6_7) (empty p9_7)
        (empty p1_-1) (empty p2_-1) (empty p2_8) (empty p3_-1) (empty p4_-1) (empty p4_8) (empty p5_-1) (empty p6_8) (empty p7_8) (empty p9_-1) (empty p9_8) (empty p10_-1) (empty p11_-1) (empty p12_0) (empty p-1_1) (empty p12_2) (empty p-1_3) (empty p12_3) (empty p-1_4) (empty p-1_5) (empty p12_5) (empty p-1_6)
        (outside p1_-1) (outside p2_-1) (outside p2_8) (outside p3_-1) (outside p4_-1) (outside p4_8) (outside p5_-1) (outside p6_8) (outside p7_8) (outside p9_-1) (outside p9_8) (outside p10_-1) (outside p11_-1) (outside p12_0) (outside p-1_1) (outside p12_2) (outside p-1_3) (outside p12_3) (outside p-1_4) (outside p-1_5) (outside p12_5) (outside p-1_6)
        (walkable p2_0) (walkable p4_0) (walkable p10_0) (walkable p11_0) (walkable p0_1) (walkable p2_1) (walkable p6_1) (walkable p7_1) (walkable p10_1) (walkable p5_2) (walkable p7_2) (walkable p8_2) (walkable p0_3) (walkable p2_3) (walkable p3_3) (walkable p9_3) (walkable p0_4) (walkable p2_4) (walkable p3_4) (walkable p5_4) (walkable p6_4) (walkable p0_5) (walkable p3_5) (walkable p4_5) (walkable p5_5) (walkable p9_5) (walkable p3_6) (walkable p4_6) (walkable p7_6) (walkable p2_7) (walkable p6_7) (walkable p9_7)
        (walkable p1_-1) (walkable p2_-1) (walkable p2_8) (walkable p3_-1) (walkable p4_-1) (walkable p4_8) (walkable p5_-1) (walkable p6_8) (walkable p7_8) (walkable p9_-1) (walkable p9_8) (walkable p10_-1) (walkable p11_-1) (walkable p12_0) (walkable p-1_1) (walkable p12_2) (walkable p-1_3) (walkable p12_3) (walkable p-1_4) (walkable p-1_5) (walkable p12_5) (walkable p-1_6)
        
        (walkable p3_0) (walkable p5_0) (walkable p9_0) (walkable p4_1) (walkable p8_1) (walkable p1_2) (walkable p11_2) (walkable p7_3) (walkable p6_5) (walkable p8_5) (walkable p11_5) (walkable p0_6) (walkable p8_6) (walkable p9_6)
        
        
        (is_same_line p1_0 p2_0) (is_same_line p1_0 p3_0) (is_same_line p1_0 p4_0) (is_same_line p1_0 p5_0) (is_same_line p1_0 p9_0) (is_same_line p1_0 p10_0) (is_same_line p1_0 p11_0) (is_same_line p1_0 p1_2) (is_same_line p1_0 p1_4) (is_same_line p1_0 p1_5) (is_same_line p1_0 p1_-1) (is_same_line p1_0 p12_0) (is_same_line p2_0 p1_0) (is_same_line p2_0 p3_0) (is_same_line p2_0 p4_0) (is_same_line p2_0 p5_0) (is_same_line p2_0 p9_0) (is_same_line p2_0 p10_0) (is_same_line p2_0 p11_0) (is_same_line p2_0 p2_1) (is_same_line p2_0 p2_3) (is_same_line p2_0 p2_4) (is_same_line p2_0 p2_6) (is_same_line p2_0 p2_7) (is_same_line p2_0 p2_-1) (is_same_line p2_0 p2_8) (is_same_line p2_0 p12_0) (is_same_line p3_0 p1_0) (is_same_line p3_0 p2_0) (is_same_line p3_0 p4_0) (is_same_line p3_0 p5_0) (is_same_line p3_0 p9_0) (is_same_line p3_0 p10_0) (is_same_line p3_0 p11_0) (is_same_line p3_0 p3_3) (is_same_line p3_0 p3_4) (is_same_line p3_0 p3_5) (is_same_line p3_0 p3_6) (is_same_line p3_0 p3_-1) (is_same_line p3_0 p12_0) (is_same_line p4_0 p1_0) (is_same_line p4_0 p2_0) (is_same_line p4_0 p3_0) (is_same_line p4_0 p5_0) (is_same_line p4_0 p9_0) (is_same_line p4_0 p10_0) (is_same_line p4_0 p11_0) (is_same_line p4_0 p4_1) (is_same_line p4_0 p4_5) (is_same_line p4_0 p4_6) (is_same_line p4_0 p4_7) (is_same_line p4_0 p4_-1) (is_same_line p4_0 p4_8) (is_same_line p4_0 p12_0) (is_same_line p5_0 p1_0) (is_same_line p5_0 p2_0) (is_same_line p5_0 p3_0) (is_same_line p5_0 p4_0) (is_same_line p5_0 p9_0) (is_same_line p5_0 p10_0) (is_same_line p5_0 p11_0) (is_same_line p5_0 p5_2) (is_same_line p5_0 p5_3) (is_same_line p5_0 p5_4) (is_same_line p5_0 p5_5) (is_same_line p5_0 p5_-1) (is_same_line p5_0 p12_0) (is_same_line p9_0 p1_0) (is_same_line p9_0 p2_0) (is_same_line p9_0 p3_0) (is_same_line p9_0 p4_0) (is_same_line p9_0 p5_0) (is_same_line p9_0 p10_0) (is_same_line p9_0 p11_0) (is_same_line p9_0 p9_2) (is_same_line p9_0 p9_3) (is_same_line p9_0 p9_4) (is_same_line p9_0 p9_5) (is_same_line p9_0 p9_6) (is_same_line p9_0 p9_7) (is_same_line p9_0 p9_-1) (is_same_line p9_0 p9_8) (is_same_line p9_0 p12_0) (is_same_line p10_0 p1_0) (is_same_line p10_0 p2_0) (is_same_line p10_0 p3_0) (is_same_line p10_0 p4_0) (is_same_line p10_0 p5_0) (is_same_line p10_0 p9_0) (is_same_line p10_0 p11_0) (is_same_line p10_0 p10_1) (is_same_line p10_0 p10_5) (is_same_line p10_0 p10_-1) (is_same_line p10_0 p12_0) (is_same_line p11_0 p1_0) (is_same_line p11_0 p2_0) (is_same_line p11_0 p3_0) (is_same_line p11_0 p4_0) (is_same_line p11_0 p5_0) (is_same_line p11_0 p9_0) (is_same_line p11_0 p10_0) (is_same_line p11_0 p11_2) (is_same_line p11_0 p11_3) (is_same_line p11_0 p11_5) (is_same_line p11_0 p11_-1) (is_same_line p11_0 p12_0) (is_same_line p0_1 p2_1) (is_same_line p0_1 p4_1) (is_same_line p0_1 p6_1) (is_same_line p0_1 p7_1) (is_same_line p0_1 p8_1) (is_same_line p0_1 p10_1) (is_same_line p0_1 p0_3) (is_same_line p0_1 p0_4) (is_same_line p0_1 p0_5) (is_same_line p0_1 p0_6) (is_same_line p0_1 p-1_1) (is_same_line p2_1 p2_0) (is_same_line p2_1 p0_1) (is_same_line p2_1 p4_1) (is_same_line p2_1 p6_1) (is_same_line p2_1 p7_1) (is_same_line p2_1 p8_1) (is_same_line p2_1 p10_1) (is_same_line p2_1 p2_3) (is_same_line p2_1 p2_4) (is_same_line p2_1 p2_6) (is_same_line p2_1 p2_7) (is_same_line p2_1 p2_-1) (is_same_line p2_1 p2_8) (is_same_line p2_1 p-1_1) (is_same_line p4_1 p4_0) (is_same_line p4_1 p0_1) (is_same_line p4_1 p2_1) (is_same_line p4_1 p6_1) (is_same_line p4_1 p7_1) (is_same_line p4_1 p8_1) (is_same_line p4_1 p10_1) (is_same_line p4_1 p4_5) (is_same_line p4_1 p4_6) (is_same_line p4_1 p4_7) (is_same_line p4_1 p4_-1) (is_same_line p4_1 p4_8) (is_same_line p4_1 p-1_1) (is_same_line p6_1 p0_1) (is_same_line p6_1 p2_1) (is_same_line p6_1 p4_1) (is_same_line p6_1 p7_1) (is_same_line p6_1 p8_1) (is_same_line p6_1 p10_1) (is_same_line p6_1 p6_2) (is_same_line p6_1 p6_4) (is_same_line p6_1 p6_5) (is_same_line p6_1 p6_6) (is_same_line p6_1 p6_7) (is_same_line p6_1 p6_8) (is_same_line p6_1 p-1_1) (is_same_line p7_1 p0_1) (is_same_line p7_1 p2_1) (is_same_line p7_1 p4_1) (is_same_line p7_1 p6_1) (is_same_line p7_1 p8_1) (is_same_line p7_1 p10_1) (is_same_line p7_1 p7_2) (is_same_line p7_1 p7_3) (is_same_line p7_1 p7_6) (is_same_line p7_1 p7_7) (is_same_line p7_1 p7_8) (is_same_line p7_1 p-1_1) (is_same_line p8_1 p0_1) (is_same_line p8_1 p2_1) (is_same_line p8_1 p4_1) (is_same_line p8_1 p6_1) (is_same_line p8_1 p7_1) (is_same_line p8_1 p10_1) (is_same_line p8_1 p8_2) (is_same_line p8_1 p8_3) (is_same_line p8_1 p8_5) (is_same_line p8_1 p8_6) (is_same_line p8_1 p-1_1) (is_same_line p10_1 p10_0) (is_same_line p10_1 p0_1) (is_same_line p10_1 p2_1) (is_same_line p10_1 p4_1) (is_same_line p10_1 p6_1) (is_same_line p10_1 p7_1) (is_same_line p10_1 p8_1) (is_same_line p10_1 p10_5) (is_same_line p10_1 p10_-1) (is_same_line p10_1 p-1_1) (is_same_line p1_2 p1_0) (is_same_line p1_2 p5_2) (is_same_line p1_2 p6_2) (is_same_line p1_2 p7_2) (is_same_line p1_2 p8_2) (is_same_line p1_2 p9_2) (is_same_line p1_2 p11_2) (is_same_line p1_2 p1_4) (is_same_line p1_2 p1_5) (is_same_line p1_2 p1_-1) (is_same_line p1_2 p12_2) (is_same_line p5_2 p5_0) (is_same_line p5_2 p1_2) (is_same_line p5_2 p6_2) (is_same_line p5_2 p7_2) (is_same_line p5_2 p8_2) (is_same_line p5_2 p9_2) (is_same_line p5_2 p11_2) (is_same_line p5_2 p5_3) (is_same_line p5_2 p5_4) (is_same_line p5_2 p5_5) (is_same_line p5_2 p5_-1) (is_same_line p5_2 p12_2) (is_same_line p6_2 p6_1) (is_same_line p6_2 p1_2) (is_same_line p6_2 p5_2) (is_same_line p6_2 p7_2) (is_same_line p6_2 p8_2) (is_same_line p6_2 p9_2) (is_same_line p6_2 p11_2) (is_same_line p6_2 p6_4) (is_same_line p6_2 p6_5) (is_same_line p6_2 p6_6) (is_same_line p6_2 p6_7) (is_same_line p6_2 p6_8) (is_same_line p6_2 p12_2) (is_same_line p7_2 p7_1) (is_same_line p7_2 p1_2) (is_same_line p7_2 p5_2) (is_same_line p7_2 p6_2) (is_same_line p7_2 p8_2) (is_same_line p7_2 p9_2) (is_same_line p7_2 p11_2) (is_same_line p7_2 p7_3) (is_same_line p7_2 p7_6) (is_same_line p7_2 p7_7) (is_same_line p7_2 p7_8) (is_same_line p7_2 p12_2) (is_same_line p8_2 p8_1) (is_same_line p8_2 p1_2) (is_same_line p8_2 p5_2) (is_same_line p8_2 p6_2) (is_same_line p8_2 p7_2) (is_same_line p8_2 p9_2) (is_same_line p8_2 p11_2) (is_same_line p8_2 p8_3) (is_same_line p8_2 p8_5) (is_same_line p8_2 p8_6) (is_same_line p8_2 p12_2) (is_same_line p9_2 p9_0) (is_same_line p9_2 p1_2) (is_same_line p9_2 p5_2) (is_same_line p9_2 p6_2) (is_same_line p9_2 p7_2) (is_same_line p9_2 p8_2) (is_same_line p9_2 p11_2) (is_same_line p9_2 p9_3) (is_same_line p9_2 p9_4) (is_same_line p9_2 p9_5) (is_same_line p9_2 p9_6) (is_same_line p9_2 p9_7) (is_same_line p9_2 p9_-1) (is_same_line p9_2 p9_8) (is_same_line p9_2 p12_2) (is_same_line p11_2 p11_0) (is_same_line p11_2 p1_2) (is_same_line p11_2 p5_2) (is_same_line p11_2 p6_2) (is_same_line p11_2 p7_2) (is_same_line p11_2 p8_2) (is_same_line p11_2 p9_2) (is_same_line p11_2 p11_3) (is_same_line p11_2 p11_5) (is_same_line p11_2 p11_-1) (is_same_line p11_2 p12_2) (is_same_line p0_3 p0_1) (is_same_line p0_3 p2_3) (is_same_line p0_3 p3_3) (is_same_line p0_3 p5_3) (is_same_line p0_3 p7_3) (is_same_line p0_3 p8_3) (is_same_line p0_3 p9_3) (is_same_line p0_3 p11_3) (is_same_line p0_3 p0_4) (is_same_line p0_3 p0_5) (is_same_line p0_3 p0_6) (is_same_line p0_3 p-1_3) (is_same_line p0_3 p12_3) (is_same_line p2_3 p2_0) (is_same_line p2_3 p2_1) (is_same_line p2_3 p0_3) (is_same_line p2_3 p3_3) (is_same_line p2_3 p5_3) (is_same_line p2_3 p7_3) (is_same_line p2_3 p8_3) (is_same_line p2_3 p9_3) (is_same_line p2_3 p11_3) (is_same_line p2_3 p2_4) (is_same_line p2_3 p2_6) (is_same_line p2_3 p2_7) (is_same_line p2_3 p2_-1) (is_same_line p2_3 p2_8) (is_same_line p2_3 p-1_3) (is_same_line p2_3 p12_3) (is_same_line p3_3 p3_0) (is_same_line p3_3 p0_3) (is_same_line p3_3 p2_3) (is_same_line p3_3 p5_3) (is_same_line p3_3 p7_3) (is_same_line p3_3 p8_3) (is_same_line p3_3 p9_3) (is_same_line p3_3 p11_3) (is_same_line p3_3 p3_4) (is_same_line p3_3 p3_5) (is_same_line p3_3 p3_6) (is_same_line p3_3 p3_-1) (is_same_line p3_3 p-1_3) (is_same_line p3_3 p12_3) (is_same_line p5_3 p5_0) (is_same_line p5_3 p5_2) (is_same_line p5_3 p0_3) (is_same_line p5_3 p2_3) (is_same_line p5_3 p3_3) (is_same_line p5_3 p7_3) (is_same_line p5_3 p8_3) (is_same_line p5_3 p9_3) (is_same_line p5_3 p11_3) (is_same_line p5_3 p5_4) (is_same_line p5_3 p5_5) (is_same_line p5_3 p5_-1) (is_same_line p5_3 p-1_3) (is_same_line p5_3 p12_3) (is_same_line p7_3 p7_1) (is_same_line p7_3 p7_2) (is_same_line p7_3 p0_3) (is_same_line p7_3 p2_3) (is_same_line p7_3 p3_3) (is_same_line p7_3 p5_3) (is_same_line p7_3 p8_3) (is_same_line p7_3 p9_3) (is_same_line p7_3 p11_3) (is_same_line p7_3 p7_6) (is_same_line p7_3 p7_7) (is_same_line p7_3 p7_8) (is_same_line p7_3 p-1_3) (is_same_line p7_3 p12_3) (is_same_line p8_3 p8_1) (is_same_line p8_3 p8_2) (is_same_line p8_3 p0_3) (is_same_line p8_3 p2_3) (is_same_line p8_3 p3_3) (is_same_line p8_3 p5_3) (is_same_line p8_3 p7_3) (is_same_line p8_3 p9_3) (is_same_line p8_3 p11_3) (is_same_line p8_3 p8_5) (is_same_line p8_3 p8_6) (is_same_line p8_3 p-1_3) (is_same_line p8_3 p12_3) (is_same_line p9_3 p9_0) (is_same_line p9_3 p9_2) (is_same_line p9_3 p0_3) (is_same_line p9_3 p2_3) (is_same_line p9_3 p3_3) (is_same_line p9_3 p5_3) (is_same_line p9_3 p7_3) (is_same_line p9_3 p8_3) (is_same_line p9_3 p11_3) (is_same_line p9_3 p9_4) (is_same_line p9_3 p9_5) (is_same_line p9_3 p9_6) (is_same_line p9_3 p9_7) (is_same_line p9_3 p9_-1) (is_same_line p9_3 p9_8) (is_same_line p9_3 p-1_3) (is_same_line p9_3 p12_3) (is_same_line p11_3 p11_0) (is_same_line p11_3 p11_2) (is_same_line p11_3 p0_3) (is_same_line p11_3 p2_3) (is_same_line p11_3 p3_3) (is_same_line p11_3 p5_3) (is_same_line p11_3 p7_3) (is_same_line p11_3 p8_3) (is_same_line p11_3 p9_3) (is_same_line p11_3 p11_5) (is_same_line p11_3 p11_-1) (is_same_line p11_3 p-1_3) (is_same_line p11_3 p12_3) (is_same_line p0_4 p0_1) (is_same_line p0_4 p0_3) (is_same_line p0_4 p1_4) (is_same_line p0_4 p2_4) (is_same_line p0_4 p3_4) (is_same_line p0_4 p5_4) (is_same_line p0_4 p6_4) (is_same_line p0_4 p9_4) (is_same_line p0_4 p0_5) (is_same_line p0_4 p0_6) (is_same_line p0_4 p-1_4) (is_same_line p1_4 p1_0) (is_same_line p1_4 p1_2) (is_same_line p1_4 p0_4) (is_same_line p1_4 p2_4) (is_same_line p1_4 p3_4) (is_same_line p1_4 p5_4) (is_same_line p1_4 p6_4) (is_same_line p1_4 p9_4) (is_same_line p1_4 p1_5) (is_same_line p1_4 p1_-1) (is_same_line p1_4 p-1_4) (is_same_line p2_4 p2_0) (is_same_line p2_4 p2_1) (is_same_line p2_4 p2_3) (is_same_line p2_4 p0_4) (is_same_line p2_4 p1_4) (is_same_line p2_4 p3_4) (is_same_line p2_4 p5_4) (is_same_line p2_4 p6_4) (is_same_line p2_4 p9_4) (is_same_line p2_4 p2_6) (is_same_line p2_4 p2_7) (is_same_line p2_4 p2_-1) (is_same_line p2_4 p2_8) (is_same_line p2_4 p-1_4) (is_same_line p3_4 p3_0) (is_same_line p3_4 p3_3) (is_same_line p3_4 p0_4) (is_same_line p3_4 p1_4) (is_same_line p3_4 p2_4) (is_same_line p3_4 p5_4) (is_same_line p3_4 p6_4) (is_same_line p3_4 p9_4) (is_same_line p3_4 p3_5) (is_same_line p3_4 p3_6) (is_same_line p3_4 p3_-1) (is_same_line p3_4 p-1_4) (is_same_line p5_4 p5_0) (is_same_line p5_4 p5_2) (is_same_line p5_4 p5_3) (is_same_line p5_4 p0_4) (is_same_line p5_4 p1_4) (is_same_line p5_4 p2_4) (is_same_line p5_4 p3_4) (is_same_line p5_4 p6_4) (is_same_line p5_4 p9_4) (is_same_line p5_4 p5_5) (is_same_line p5_4 p5_-1) (is_same_line p5_4 p-1_4) (is_same_line p6_4 p6_1) (is_same_line p6_4 p6_2) (is_same_line p6_4 p0_4) (is_same_line p6_4 p1_4) (is_same_line p6_4 p2_4) (is_same_line p6_4 p3_4) (is_same_line p6_4 p5_4) (is_same_line p6_4 p9_4) (is_same_line p6_4 p6_5) (is_same_line p6_4 p6_6) (is_same_line p6_4 p6_7) (is_same_line p6_4 p6_8) (is_same_line p6_4 p-1_4) (is_same_line p9_4 p9_0) (is_same_line p9_4 p9_2) (is_same_line p9_4 p9_3) (is_same_line p9_4 p0_4) (is_same_line p9_4 p1_4) (is_same_line p9_4 p2_4) (is_same_line p9_4 p3_4) (is_same_line p9_4 p5_4) (is_same_line p9_4 p6_4) (is_same_line p9_4 p9_5) (is_same_line p9_4 p9_6) (is_same_line p9_4 p9_7) (is_same_line p9_4 p9_-1) (is_same_line p9_4 p9_8) (is_same_line p9_4 p-1_4) (is_same_line p0_5 p0_1) (is_same_line p0_5 p0_3) (is_same_line p0_5 p0_4) (is_same_line p0_5 p1_5) (is_same_line p0_5 p3_5) (is_same_line p0_5 p4_5) (is_same_line p0_5 p5_5) (is_same_line p0_5 p6_5) (is_same_line p0_5 p8_5) (is_same_line p0_5 p9_5) (is_same_line p0_5 p10_5) (is_same_line p0_5 p11_5) (is_same_line p0_5 p0_6) (is_same_line p0_5 p-1_5) (is_same_line p0_5 p12_5) (is_same_line p1_5 p1_0) (is_same_line p1_5 p1_2) (is_same_line p1_5 p1_4) (is_same_line p1_5 p0_5) (is_same_line p1_5 p3_5) (is_same_line p1_5 p4_5) (is_same_line p1_5 p5_5) (is_same_line p1_5 p6_5) (is_same_line p1_5 p8_5) (is_same_line p1_5 p9_5) (is_same_line p1_5 p10_5) (is_same_line p1_5 p11_5) (is_same_line p1_5 p1_-1) (is_same_line p1_5 p-1_5) (is_same_line p1_5 p12_5) (is_same_line p3_5 p3_0) (is_same_line p3_5 p3_3) (is_same_line p3_5 p3_4) (is_same_line p3_5 p0_5) (is_same_line p3_5 p1_5) (is_same_line p3_5 p4_5) (is_same_line p3_5 p5_5) (is_same_line p3_5 p6_5) (is_same_line p3_5 p8_5) (is_same_line p3_5 p9_5) (is_same_line p3_5 p10_5) (is_same_line p3_5 p11_5) (is_same_line p3_5 p3_6) (is_same_line p3_5 p3_-1) (is_same_line p3_5 p-1_5) (is_same_line p3_5 p12_5) (is_same_line p4_5 p4_0) (is_same_line p4_5 p4_1) (is_same_line p4_5 p0_5) (is_same_line p4_5 p1_5) (is_same_line p4_5 p3_5) (is_same_line p4_5 p5_5) (is_same_line p4_5 p6_5) (is_same_line p4_5 p8_5) (is_same_line p4_5 p9_5) (is_same_line p4_5 p10_5) (is_same_line p4_5 p11_5) (is_same_line p4_5 p4_6) (is_same_line p4_5 p4_7) (is_same_line p4_5 p4_-1) (is_same_line p4_5 p4_8) (is_same_line p4_5 p-1_5) (is_same_line p4_5 p12_5) (is_same_line p5_5 p5_0) (is_same_line p5_5 p5_2) (is_same_line p5_5 p5_3) (is_same_line p5_5 p5_4) (is_same_line p5_5 p0_5) (is_same_line p5_5 p1_5) (is_same_line p5_5 p3_5) (is_same_line p5_5 p4_5) (is_same_line p5_5 p6_5) (is_same_line p5_5 p8_5) (is_same_line p5_5 p9_5) (is_same_line p5_5 p10_5) (is_same_line p5_5 p11_5) (is_same_line p5_5 p5_-1) (is_same_line p5_5 p-1_5) (is_same_line p5_5 p12_5) (is_same_line p6_5 p6_1) (is_same_line p6_5 p6_2) (is_same_line p6_5 p6_4) (is_same_line p6_5 p0_5) (is_same_line p6_5 p1_5) (is_same_line p6_5 p3_5) (is_same_line p6_5 p4_5) (is_same_line p6_5 p5_5) (is_same_line p6_5 p8_5) (is_same_line p6_5 p9_5) (is_same_line p6_5 p10_5) (is_same_line p6_5 p11_5) (is_same_line p6_5 p6_6) (is_same_line p6_5 p6_7) (is_same_line p6_5 p6_8) (is_same_line p6_5 p-1_5) (is_same_line p6_5 p12_5) (is_same_line p8_5 p8_1) (is_same_line p8_5 p8_2) (is_same_line p8_5 p8_3) (is_same_line p8_5 p0_5) (is_same_line p8_5 p1_5) (is_same_line p8_5 p3_5) (is_same_line p8_5 p4_5) (is_same_line p8_5 p5_5) (is_same_line p8_5 p6_5) (is_same_line p8_5 p9_5) (is_same_line p8_5 p10_5) (is_same_line p8_5 p11_5) (is_same_line p8_5 p8_6) (is_same_line p8_5 p-1_5) (is_same_line p8_5 p12_5) (is_same_line p9_5 p9_0) (is_same_line p9_5 p9_2) (is_same_line p9_5 p9_3) (is_same_line p9_5 p9_4) (is_same_line p9_5 p0_5) (is_same_line p9_5 p1_5) (is_same_line p9_5 p3_5) (is_same_line p9_5 p4_5) (is_same_line p9_5 p5_5) (is_same_line p9_5 p6_5) (is_same_line p9_5 p8_5) (is_same_line p9_5 p10_5) (is_same_line p9_5 p11_5) (is_same_line p9_5 p9_6) (is_same_line p9_5 p9_7) (is_same_line p9_5 p9_-1) (is_same_line p9_5 p9_8) (is_same_line p9_5 p-1_5) (is_same_line p9_5 p12_5) (is_same_line p10_5 p10_0) (is_same_line p10_5 p10_1) (is_same_line p10_5 p0_5) (is_same_line p10_5 p1_5) (is_same_line p10_5 p3_5) (is_same_line p10_5 p4_5) (is_same_line p10_5 p5_5) (is_same_line p10_5 p6_5) (is_same_line p10_5 p8_5) (is_same_line p10_5 p9_5) (is_same_line p10_5 p11_5) (is_same_line p10_5 p10_-1) (is_same_line p10_5 p-1_5) (is_same_line p10_5 p12_5) (is_same_line p11_5 p11_0) (is_same_line p11_5 p11_2) (is_same_line p11_5 p11_3) (is_same_line p11_5 p0_5) (is_same_line p11_5 p1_5) (is_same_line p11_5 p3_5) (is_same_line p11_5 p4_5) (is_same_line p11_5 p5_5) (is_same_line p11_5 p6_5) (is_same_line p11_5 p8_5) (is_same_line p11_5 p9_5) (is_same_line p11_5 p10_5) (is_same_line p11_5 p11_-1) (is_same_line p11_5 p-1_5) (is_same_line p11_5 p12_5) (is_same_line p0_6 p0_1) (is_same_line p0_6 p0_3) (is_same_line p0_6 p0_4) (is_same_line p0_6 p0_5) (is_same_line p0_6 p2_6) (is_same_line p0_6 p3_6) (is_same_line p0_6 p4_6) (is_same_line p0_6 p6_6) (is_same_line p0_6 p7_6) (is_same_line p0_6 p8_6) (is_same_line p0_6 p9_6) (is_same_line p0_6 p-1_6) (is_same_line p2_6 p2_0) (is_same_line p2_6 p2_1) (is_same_line p2_6 p2_3) (is_same_line p2_6 p2_4) (is_same_line p2_6 p0_6) (is_same_line p2_6 p3_6) (is_same_line p2_6 p4_6) (is_same_line p2_6 p6_6) (is_same_line p2_6 p7_6) (is_same_line p2_6 p8_6) (is_same_line p2_6 p9_6) (is_same_line p2_6 p2_7) (is_same_line p2_6 p2_-1) (is_same_line p2_6 p2_8) (is_same_line p2_6 p-1_6) (is_same_line p3_6 p3_0) (is_same_line p3_6 p3_3) (is_same_line p3_6 p3_4) (is_same_line p3_6 p3_5) (is_same_line p3_6 p0_6) (is_same_line p3_6 p2_6) (is_same_line p3_6 p4_6) (is_same_line p3_6 p6_6) (is_same_line p3_6 p7_6) (is_same_line p3_6 p8_6) (is_same_line p3_6 p9_6) (is_same_line p3_6 p3_-1) (is_same_line p3_6 p-1_6) (is_same_line p4_6 p4_0) (is_same_line p4_6 p4_1) (is_same_line p4_6 p4_5) (is_same_line p4_6 p0_6) (is_same_line p4_6 p2_6) (is_same_line p4_6 p3_6) (is_same_line p4_6 p6_6) (is_same_line p4_6 p7_6) (is_same_line p4_6 p8_6) (is_same_line p4_6 p9_6) (is_same_line p4_6 p4_7) (is_same_line p4_6 p4_-1) (is_same_line p4_6 p4_8) (is_same_line p4_6 p-1_6) (is_same_line p6_6 p6_1) (is_same_line p6_6 p6_2) (is_same_line p6_6 p6_4) (is_same_line p6_6 p6_5) (is_same_line p6_6 p0_6) (is_same_line p6_6 p2_6) (is_same_line p6_6 p3_6) (is_same_line p6_6 p4_6) (is_same_line p6_6 p7_6) (is_same_line p6_6 p8_6) (is_same_line p6_6 p9_6) (is_same_line p6_6 p6_7) (is_same_line p6_6 p6_8) (is_same_line p6_6 p-1_6) (is_same_line p7_6 p7_1) (is_same_line p7_6 p7_2) (is_same_line p7_6 p7_3) (is_same_line p7_6 p0_6) (is_same_line p7_6 p2_6) (is_same_line p7_6 p3_6) (is_same_line p7_6 p4_6) (is_same_line p7_6 p6_6) (is_same_line p7_6 p8_6) (is_same_line p7_6 p9_6) (is_same_line p7_6 p7_7) (is_same_line p7_6 p7_8) (is_same_line p7_6 p-1_6) (is_same_line p8_6 p8_1) (is_same_line p8_6 p8_2) (is_same_line p8_6 p8_3) (is_same_line p8_6 p8_5) (is_same_line p8_6 p0_6) (is_same_line p8_6 p2_6) (is_same_line p8_6 p3_6) (is_same_line p8_6 p4_6) (is_same_line p8_6 p6_6) (is_same_line p8_6 p7_6) (is_same_line p8_6 p9_6) (is_same_line p8_6 p-1_6) (is_same_line p9_6 p9_0) (is_same_line p9_6 p9_2) (is_same_line p9_6 p9_3) (is_same_line p9_6 p9_4) (is_same_line p9_6 p9_5) (is_same_line p9_6 p0_6) (is_same_line p9_6 p2_6) (is_same_line p9_6 p3_6) (is_same_line p9_6 p4_6) (is_same_line p9_6 p6_6) (is_same_line p9_6 p7_6) (is_same_line p9_6 p8_6) (is_same_line p9_6 p9_7) (is_same_line p9_6 p9_-1) (is_same_line p9_6 p9_8) (is_same_line p9_6 p-1_6) (is_same_line p2_7 p2_0) (is_same_line p2_7 p2_1) (is_same_line p2_7 p2_3) (is_same_line p2_7 p2_4) (is_same_line p2_7 p2_6) (is_same_line p2_7 p4_7) (is_same_line p2_7 p6_7) (is_same_line p2_7 p7_7) (is_same_line p2_7 p9_7) (is_same_line p2_7 p2_-1) (is_same_line p2_7 p2_8) (is_same_line p4_7 p4_0) (is_same_line p4_7 p4_1) (is_same_line p4_7 p4_5) (is_same_line p4_7 p4_6) (is_same_line p4_7 p2_7) (is_same_line p4_7 p6_7) (is_same_line p4_7 p7_7) (is_same_line p4_7 p9_7) (is_same_line p4_7 p4_-1) (is_same_line p4_7 p4_8) (is_same_line p6_7 p6_1) (is_same_line p6_7 p6_2) (is_same_line p6_7 p6_4) (is_same_line p6_7 p6_5) (is_same_line p6_7 p6_6) (is_same_line p6_7 p2_7) (is_same_line p6_7 p4_7) (is_same_line p6_7 p7_7) (is_same_line p6_7 p9_7) (is_same_line p6_7 p6_8) (is_same_line p7_7 p7_1) (is_same_line p7_7 p7_2) (is_same_line p7_7 p7_3) (is_same_line p7_7 p7_6) (is_same_line p7_7 p2_7) (is_same_line p7_7 p4_7) (is_same_line p7_7 p6_7) (is_same_line p7_7 p9_7) (is_same_line p7_7 p7_8) (is_same_line p9_7 p9_0) (is_same_line p9_7 p9_2) (is_same_line p9_7 p9_3) (is_same_line p9_7 p9_4) (is_same_line p9_7 p9_5) (is_same_line p9_7 p9_6) (is_same_line p9_7 p2_7) (is_same_line p9_7 p4_7) (is_same_line p9_7 p6_7) (is_same_line p9_7 p7_7) (is_same_line p9_7 p9_-1) (is_same_line p9_7 p9_8) (is_same_line p1_-1 p1_0) (is_same_line p1_-1 p1_2) (is_same_line p1_-1 p1_4) (is_same_line p1_-1 p1_5) (is_same_line p1_-1 p2_-1) (is_same_line p1_-1 p3_-1) (is_same_line p1_-1 p4_-1) (is_same_line p1_-1 p5_-1) (is_same_line p1_-1 p9_-1) (is_same_line p1_-1 p10_-1) (is_same_line p1_-1 p11_-1) (is_same_line p2_-1 p2_0) (is_same_line p2_-1 p2_1) (is_same_line p2_-1 p2_3) (is_same_line p2_-1 p2_4) (is_same_line p2_-1 p2_6) (is_same_line p2_-1 p2_7) (is_same_line p2_-1 p1_-1) (is_same_line p2_-1 p2_8) (is_same_line p2_-1 p3_-1) (is_same_line p2_-1 p4_-1) (is_same_line p2_-1 p5_-1) (is_same_line p2_-1 p9_-1) (is_same_line p2_-1 p10_-1) (is_same_line p2_-1 p11_-1) (is_same_line p2_8 p2_0) (is_same_line p2_8 p2_1) (is_same_line p2_8 p2_3) (is_same_line p2_8 p2_4) (is_same_line p2_8 p2_6) (is_same_line p2_8 p2_7) (is_same_line p2_8 p2_-1) (is_same_line p2_8 p4_8) (is_same_line p2_8 p6_8) (is_same_line p2_8 p7_8) (is_same_line p2_8 p9_8) (is_same_line p3_-1 p3_0) (is_same_line p3_-1 p3_3) (is_same_line p3_-1 p3_4) (is_same_line p3_-1 p3_5) (is_same_line p3_-1 p3_6) (is_same_line p3_-1 p1_-1) (is_same_line p3_-1 p2_-1) (is_same_line p3_-1 p4_-1) (is_same_line p3_-1 p5_-1) (is_same_line p3_-1 p9_-1) (is_same_line p3_-1 p10_-1) (is_same_line p3_-1 p11_-1) (is_same_line p4_-1 p4_0) (is_same_line p4_-1 p4_1) (is_same_line p4_-1 p4_5) (is_same_line p4_-1 p4_6) (is_same_line p4_-1 p4_7) (is_same_line p4_-1 p1_-1) (is_same_line p4_-1 p2_-1) (is_same_line p4_-1 p3_-1) (is_same_line p4_-1 p4_8) (is_same_line p4_-1 p5_-1) (is_same_line p4_-1 p9_-1) (is_same_line p4_-1 p10_-1) (is_same_line p4_-1 p11_-1) (is_same_line p4_8 p4_0) (is_same_line p4_8 p4_1) (is_same_line p4_8 p4_5) (is_same_line p4_8 p4_6) (is_same_line p4_8 p4_7) (is_same_line p4_8 p2_8) (is_same_line p4_8 p4_-1) (is_same_line p4_8 p6_8) (is_same_line p4_8 p7_8) (is_same_line p4_8 p9_8) (is_same_line p5_-1 p5_0) (is_same_line p5_-1 p5_2) (is_same_line p5_-1 p5_3) (is_same_line p5_-1 p5_4) (is_same_line p5_-1 p5_5) (is_same_line p5_-1 p1_-1) (is_same_line p5_-1 p2_-1) (is_same_line p5_-1 p3_-1) (is_same_line p5_-1 p4_-1) (is_same_line p5_-1 p9_-1) (is_same_line p5_-1 p10_-1) (is_same_line p5_-1 p11_-1) (is_same_line p6_8 p6_1) (is_same_line p6_8 p6_2) (is_same_line p6_8 p6_4) (is_same_line p6_8 p6_5) (is_same_line p6_8 p6_6) (is_same_line p6_8 p6_7) (is_same_line p6_8 p2_8) (is_same_line p6_8 p4_8) (is_same_line p6_8 p7_8) (is_same_line p6_8 p9_8) (is_same_line p7_8 p7_1) (is_same_line p7_8 p7_2) (is_same_line p7_8 p7_3) (is_same_line p7_8 p7_6) (is_same_line p7_8 p7_7) (is_same_line p7_8 p2_8) (is_same_line p7_8 p4_8) (is_same_line p7_8 p6_8) (is_same_line p7_8 p9_8) (is_same_line p9_-1 p9_0) (is_same_line p9_-1 p9_2) (is_same_line p9_-1 p9_3) (is_same_line p9_-1 p9_4) (is_same_line p9_-1 p9_5) (is_same_line p9_-1 p9_6) (is_same_line p9_-1 p9_7) (is_same_line p9_-1 p1_-1) (is_same_line p9_-1 p2_-1) (is_same_line p9_-1 p3_-1) (is_same_line p9_-1 p4_-1) (is_same_line p9_-1 p5_-1) (is_same_line p9_-1 p9_8) (is_same_line p9_-1 p10_-1) (is_same_line p9_-1 p11_-1) (is_same_line p9_8 p9_0) (is_same_line p9_8 p9_2) (is_same_line p9_8 p9_3) (is_same_line p9_8 p9_4) (is_same_line p9_8 p9_5) (is_same_line p9_8 p9_6) (is_same_line p9_8 p9_7) (is_same_line p9_8 p2_8) (is_same_line p9_8 p4_8) (is_same_line p9_8 p6_8) (is_same_line p9_8 p7_8) (is_same_line p9_8 p9_-1) (is_same_line p10_-1 p10_0) (is_same_line p10_-1 p10_1) (is_same_line p10_-1 p10_5) (is_same_line p10_-1 p1_-1) (is_same_line p10_-1 p2_-1) (is_same_line p10_-1 p3_-1) (is_same_line p10_-1 p4_-1) (is_same_line p10_-1 p5_-1) (is_same_line p10_-1 p9_-1) (is_same_line p10_-1 p11_-1) (is_same_line p11_-1 p11_0) (is_same_line p11_-1 p11_2) (is_same_line p11_-1 p11_3) (is_same_line p11_-1 p11_5) (is_same_line p11_-1 p1_-1) (is_same_line p11_-1 p2_-1) (is_same_line p11_-1 p3_-1) (is_same_line p11_-1 p4_-1) (is_same_line p11_-1 p5_-1) (is_same_line p11_-1 p9_-1) (is_same_line p11_-1 p10_-1) (is_same_line p12_0 p1_0) (is_same_line p12_0 p2_0) (is_same_line p12_0 p3_0) (is_same_line p12_0 p4_0) (is_same_line p12_0 p5_0) (is_same_line p12_0 p9_0) (is_same_line p12_0 p10_0) (is_same_line p12_0 p11_0) (is_same_line p12_0 p12_2) (is_same_line p12_0 p12_3) (is_same_line p12_0 p12_5) (is_same_line p-1_1 p0_1) (is_same_line p-1_1 p2_1) (is_same_line p-1_1 p4_1) (is_same_line p-1_1 p6_1) (is_same_line p-1_1 p7_1) (is_same_line p-1_1 p8_1) (is_same_line p-1_1 p10_1) (is_same_line p-1_1 p-1_3) (is_same_line p-1_1 p-1_4) (is_same_line p-1_1 p-1_5) (is_same_line p-1_1 p-1_6) (is_same_line p12_2 p1_2) (is_same_line p12_2 p5_2) (is_same_line p12_2 p6_2) (is_same_line p12_2 p7_2) (is_same_line p12_2 p8_2) (is_same_line p12_2 p9_2) (is_same_line p12_2 p11_2) (is_same_line p12_2 p12_0) (is_same_line p12_2 p12_3) (is_same_line p12_2 p12_5) (is_same_line p-1_3 p0_3) (is_same_line p-1_3 p2_3) (is_same_line p-1_3 p3_3) (is_same_line p-1_3 p5_3) (is_same_line p-1_3 p7_3) (is_same_line p-1_3 p8_3) (is_same_line p-1_3 p9_3) (is_same_line p-1_3 p11_3) (is_same_line p-1_3 p-1_1) (is_same_line p-1_3 p12_3) (is_same_line p-1_3 p-1_4) (is_same_line p-1_3 p-1_5) (is_same_line p-1_3 p-1_6) (is_same_line p12_3 p0_3) (is_same_line p12_3 p2_3) (is_same_line p12_3 p3_3) (is_same_line p12_3 p5_3) (is_same_line p12_3 p7_3) (is_same_line p12_3 p8_3) (is_same_line p12_3 p9_3) (is_same_line p12_3 p11_3) (is_same_line p12_3 p12_0) (is_same_line p12_3 p12_2) (is_same_line p12_3 p-1_3) (is_same_line p12_3 p12_5) (is_same_line p-1_4 p0_4) (is_same_line p-1_4 p1_4) (is_same_line p-1_4 p2_4) (is_same_line p-1_4 p3_4) (is_same_line p-1_4 p5_4) (is_same_line p-1_4 p6_4) (is_same_line p-1_4 p9_4) (is_same_line p-1_4 p-1_1) (is_same_line p-1_4 p-1_3) (is_same_line p-1_4 p-1_5) (is_same_line p-1_4 p-1_6) (is_same_line p-1_5 p0_5) (is_same_line p-1_5 p1_5) (is_same_line p-1_5 p3_5) (is_same_line p-1_5 p4_5) (is_same_line p-1_5 p5_5) (is_same_line p-1_5 p6_5) (is_same_line p-1_5 p8_5) (is_same_line p-1_5 p9_5) (is_same_line p-1_5 p10_5) (is_same_line p-1_5 p11_5) (is_same_line p-1_5 p-1_1) (is_same_line p-1_5 p-1_3) (is_same_line p-1_5 p-1_4) (is_same_line p-1_5 p12_5) (is_same_line p-1_5 p-1_6) (is_same_line p12_5 p0_5) (is_same_line p12_5 p1_5) (is_same_line p12_5 p3_5) (is_same_line p12_5 p4_5) (is_same_line p12_5 p5_5) (is_same_line p12_5 p6_5) (is_same_line p12_5 p8_5) (is_same_line p12_5 p9_5) (is_same_line p12_5 p10_5) (is_same_line p12_5 p11_5) (is_same_line p12_5 p12_0) (is_same_line p12_5 p12_2) (is_same_line p12_5 p12_3) (is_same_line p12_5 p-1_5) (is_same_line p-1_6 p0_6) (is_same_line p-1_6 p2_6) (is_same_line p-1_6 p3_6) (is_same_line p-1_6 p4_6) (is_same_line p-1_6 p6_6) (is_same_line p-1_6 p7_6) (is_same_line p-1_6 p8_6) (is_same_line p-1_6 p9_6) (is_same_line p-1_6 p-1_1) (is_same_line p-1_6 p-1_3) (is_same_line p-1_6 p-1_4) (is_same_line p-1_6 p-1_5)
    )
    (:goal
        (or (agent-at p1_-1) (agent-at p2_-1) (agent-at p2_8) (agent-at p3_-1) (agent-at p4_-1) (agent-at p4_8) (agent-at p5_-1) (agent-at p6_8) (agent-at p7_8) (agent-at p9_-1) (agent-at p9_8) (agent-at p10_-1) (agent-at p11_-1) (agent-at p12_0) (agent-at p-1_1) (agent-at p12_2) (agent-at p-1_3) (agent-at p12_3) (agent-at p-1_4) (agent-at p-1_5) (agent-at p12_5) (agent-at p-1_6))
    )
)
