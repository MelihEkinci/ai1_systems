
(define (problem simple_escape)
    (:domain wumpus_world)
    (:objects
        p0_0 p2_0 p3_0 p4_0 p6_0 p8_0 p9_0 p11_0 p0_1 p3_1 p4_1 p5_1 p8_1 p9_1 p11_1 p0_2 p1_2 p5_2 p6_2 p7_2 p8_2 p9_2 p0_3 p1_3 p2_3 p3_3 p4_3 p5_3 p6_3 p8_3 p9_3 p11_3 p0_4 p1_4 p5_4 p6_4 p7_4 p9_4 p10_4 p11_4 p1_5 p3_5 p4_5 p6_5 p8_5 p0_6 p1_6 p4_6 p5_6 p6_6 p8_6 p9_6 p10_6 p11_6 p3_7 p4_7 p8_7 p9_7 p10_7 p11_7 p0_-1 p2_-1 p3_-1 p3_8 p4_-1 p4_8 p6_-1 p8_-1 p8_8 p9_-1 p9_8 p10_8 p11_-1 p11_8 p-1_0 p12_0 p-1_1 p12_1 p-1_2 p-1_3 p12_3 p-1_4 p12_4 p-1_6 p12_6 p12_7 - pos
         - crate
        wumpus1 wumpus2 wumpus3 wumpus4 wumpus5 wumpus6 wumpus7 wumpus8 wumpus9 wumpus10 wumpus11 wumpus12 wumpus13 wumpus14 wumpus15 wumpus16 wumpus17 - wumpus
         - arrow
        firework1 firework2 firework3 firework4 firework5 firework6 firework7 firework8 firework9 firework10 - firework
         - halfcrate
         - pit

    )
    (:init
        (agent-at p6_4)
        (firework-count-0);
        
        (path p0_0 p0_1) (path p0_1 p0_0) (path p2_0 p3_0) (path p3_0 p2_0) (path p3_0 p4_0) (path p4_0 p3_0) (path p3_0 p3_1) (path p3_1 p3_0) (path p4_0 p4_1) (path p4_1 p4_0) (path p8_0 p9_0) (path p9_0 p8_0) (path p8_0 p8_1) (path p8_1 p8_0) (path p9_0 p9_1) (path p9_1 p9_0) (path p11_0 p11_1) (path p11_1 p11_0) (path p0_1 p0_2) (path p0_2 p0_1) (path p3_1 p4_1) (path p4_1 p3_1) (path p4_1 p5_1) (path p5_1 p4_1) (path p5_1 p5_2) (path p5_2 p5_1) (path p8_1 p9_1) (path p9_1 p8_1) (path p8_1 p8_2) (path p8_2 p8_1) (path p9_1 p9_2) (path p9_2 p9_1) (path p0_2 p1_2) (path p1_2 p0_2) (path p0_2 p0_3) (path p0_3 p0_2) (path p1_2 p1_3) (path p1_3 p1_2) (path p5_2 p6_2) (path p6_2 p5_2) (path p5_2 p5_3) (path p5_3 p5_2) (path p6_2 p7_2) (path p7_2 p6_2) (path p6_2 p6_3) (path p6_3 p6_2) (path p7_2 p8_2) (path p8_2 p7_2) (path p8_2 p9_2) (path p9_2 p8_2) (path p8_2 p8_3) (path p8_3 p8_2) (path p9_2 p9_3) (path p9_3 p9_2) (path p0_3 p1_3) (path p1_3 p0_3) (path p0_3 p0_4) (path p0_4 p0_3) (path p1_3 p2_3) (path p2_3 p1_3) (path p1_3 p1_4) (path p1_4 p1_3) (path p2_3 p3_3) (path p3_3 p2_3) (path p3_3 p4_3) (path p4_3 p3_3) (path p4_3 p5_3) (path p5_3 p4_3) (path p5_3 p6_3) (path p6_3 p5_3) (path p5_3 p5_4) (path p5_4 p5_3) (path p6_3 p6_4) (path p6_4 p6_3) (path p8_3 p9_3) (path p9_3 p8_3) (path p9_3 p9_4) (path p9_4 p9_3) (path p11_3 p11_4) (path p11_4 p11_3) (path p0_4 p1_4) (path p1_4 p0_4) (path p1_4 p1_5) (path p1_5 p1_4) (path p5_4 p6_4) (path p6_4 p5_4) (path p6_4 p7_4) (path p7_4 p6_4) (path p6_4 p6_5) (path p6_5 p6_4) (path p9_4 p10_4) (path p10_4 p9_4) (path p10_4 p11_4) (path p11_4 p10_4) (path p1_5 p1_6) (path p1_6 p1_5) (path p3_5 p4_5) (path p4_5 p3_5) (path p4_5 p4_6) (path p4_6 p4_5) (path p6_5 p6_6) (path p6_6 p6_5) (path p8_5 p8_6) (path p8_6 p8_5) (path p0_6 p1_6) (path p1_6 p0_6) (path p4_6 p5_6) (path p5_6 p4_6) (path p4_6 p4_7) (path p4_7 p4_6) (path p5_6 p6_6) (path p6_6 p5_6) (path p8_6 p9_6) (path p9_6 p8_6) (path p8_6 p8_7) (path p8_7 p8_6) (path p9_6 p10_6) (path p10_6 p9_6) (path p9_6 p9_7) (path p9_7 p9_6) (path p10_6 p11_6) (path p11_6 p10_6) (path p10_6 p10_7) (path p10_7 p10_6) (path p11_6 p11_7) (path p11_7 p11_6) (path p3_7 p4_7) (path p4_7 p3_7) (path p8_7 p9_7) (path p9_7 p8_7) (path p9_7 p10_7) (path p10_7 p9_7) (path p10_7 p11_7) (path p11_7 p10_7) (path p0_0 p0_-1) (path p2_0 p2_-1) (path p3_0 p3_-1) (path p3_7 p3_8) (path p4_0 p4_-1) (path p4_7 p4_8) (path p6_0 p6_-1) (path p8_0 p8_-1) (path p8_7 p8_8) (path p9_0 p9_-1) (path p9_7 p9_8) (path p10_7 p10_8) (path p11_0 p11_-1) (path p11_7 p11_8) (path p0_0 p-1_0) (path p11_0 p12_0) (path p0_1 p-1_1) (path p11_1 p12_1) (path p0_2 p-1_2) (path p0_3 p-1_3) (path p11_3 p12_3) (path p0_4 p-1_4) (path p11_4 p12_4) (path p0_6 p-1_6) (path p11_6 p12_6) (path p11_7 p12_7)
        
        (wumpus-at wumpus1 p0_0) (wumpus-at wumpus2 p3_0) (wumpus-at wumpus3 p6_0) (wumpus-at wumpus4 p8_0) (wumpus-at wumpus5 p5_2) (wumpus-at wumpus6 p7_2) (wumpus-at wumpus7 p9_2) (wumpus-at wumpus8 p4_3) (wumpus-at wumpus9 p8_3) (wumpus-at wumpus10 p0_4) (wumpus-at wumpus11 p11_4) (wumpus-at wumpus12 p4_5) (wumpus-at wumpus13 p6_5) (wumpus-at wumpus14 p10_6) (wumpus-at wumpus15 p4_7) (wumpus-at wumpus16 p8_7) (wumpus-at wumpus17 p9_7)
        
        (firework-at firework1 p0_2) (firework-at firework2 p8_2) (firework-at firework3 p0_3) (firework-at firework4 p2_3) (firework-at firework5 p3_3) (firework-at firework6 p5_3) (firework-at firework7 p11_3) (firework-at firework8 p1_4) (firework-at firework9 p5_4) (firework-at firework10 p1_5)
        (empty p2_0) (empty p4_0) (empty p9_0) (empty p11_0) (empty p0_1) (empty p3_1) (empty p4_1) (empty p5_1) (empty p8_1) (empty p9_1) (empty p11_1) (empty p1_2) (empty p6_2) (empty p1_3) (empty p6_3) (empty p9_3) (empty p7_4) (empty p9_4) (empty p10_4) (empty p3_5) (empty p8_5) (empty p0_6) (empty p1_6) (empty p4_6) (empty p5_6) (empty p6_6) (empty p8_6) (empty p9_6) (empty p11_6) (empty p3_7) (empty p10_7) (empty p11_7)
        (empty p0_-1) (empty p2_-1) (empty p3_-1) (empty p3_8) (empty p4_-1) (empty p4_8) (empty p6_-1) (empty p8_-1) (empty p8_8) (empty p9_-1) (empty p9_8) (empty p10_8) (empty p11_-1) (empty p11_8) (empty p-1_0) (empty p12_0) (empty p-1_1) (empty p12_1) (empty p-1_2) (empty p-1_3) (empty p12_3) (empty p-1_4) (empty p12_4) (empty p-1_6) (empty p12_6) (empty p12_7)
        (outside p0_-1) (outside p2_-1) (outside p3_-1) (outside p3_8) (outside p4_-1) (outside p4_8) (outside p6_-1) (outside p8_-1) (outside p8_8) (outside p9_-1) (outside p9_8) (outside p10_8) (outside p11_-1) (outside p11_8) (outside p-1_0) (outside p12_0) (outside p-1_1) (outside p12_1) (outside p-1_2) (outside p-1_3) (outside p12_3) (outside p-1_4) (outside p12_4) (outside p-1_6) (outside p12_6) (outside p12_7)
        (walkable p2_0) (walkable p4_0) (walkable p9_0) (walkable p11_0) (walkable p0_1) (walkable p3_1) (walkable p4_1) (walkable p5_1) (walkable p8_1) (walkable p9_1) (walkable p11_1) (walkable p1_2) (walkable p6_2) (walkable p1_3) (walkable p6_3) (walkable p9_3) (walkable p7_4) (walkable p9_4) (walkable p10_4) (walkable p3_5) (walkable p8_5) (walkable p0_6) (walkable p1_6) (walkable p4_6) (walkable p5_6) (walkable p6_6) (walkable p8_6) (walkable p9_6) (walkable p11_6) (walkable p3_7) (walkable p10_7) (walkable p11_7)
        (walkable p0_-1) (walkable p2_-1) (walkable p3_-1) (walkable p3_8) (walkable p4_-1) (walkable p4_8) (walkable p6_-1) (walkable p8_-1) (walkable p8_8) (walkable p9_-1) (walkable p9_8) (walkable p10_8) (walkable p11_-1) (walkable p11_8) (walkable p-1_0) (walkable p12_0) (walkable p-1_1) (walkable p12_1) (walkable p-1_2) (walkable p-1_3) (walkable p12_3) (walkable p-1_4) (walkable p12_4) (walkable p-1_6) (walkable p12_6) (walkable p12_7)
        
        (walkable p0_2) (walkable p8_2) (walkable p0_3) (walkable p2_3) (walkable p3_3) (walkable p5_3) (walkable p11_3) (walkable p1_4) (walkable p5_4) (walkable p1_5)
        
        
        (is_same_line p0_0 p2_0) (is_same_line p0_0 p3_0) (is_same_line p0_0 p4_0) (is_same_line p0_0 p6_0) (is_same_line p0_0 p8_0) (is_same_line p0_0 p9_0) (is_same_line p0_0 p11_0) (is_same_line p0_0 p0_1) (is_same_line p0_0 p0_2) (is_same_line p0_0 p0_3) (is_same_line p0_0 p0_4) (is_same_line p0_0 p0_6) (is_same_line p0_0 p0_-1) (is_same_line p0_0 p-1_0) (is_same_line p0_0 p12_0) (is_same_line p2_0 p0_0) (is_same_line p2_0 p3_0) (is_same_line p2_0 p4_0) (is_same_line p2_0 p6_0) (is_same_line p2_0 p8_0) (is_same_line p2_0 p9_0) (is_same_line p2_0 p11_0) (is_same_line p2_0 p2_3) (is_same_line p2_0 p2_-1) (is_same_line p2_0 p-1_0) (is_same_line p2_0 p12_0) (is_same_line p3_0 p0_0) (is_same_line p3_0 p2_0) (is_same_line p3_0 p4_0) (is_same_line p3_0 p6_0) (is_same_line p3_0 p8_0) (is_same_line p3_0 p9_0) (is_same_line p3_0 p11_0) (is_same_line p3_0 p3_1) (is_same_line p3_0 p3_3) (is_same_line p3_0 p3_5) (is_same_line p3_0 p3_7) (is_same_line p3_0 p3_-1) (is_same_line p3_0 p3_8) (is_same_line p3_0 p-1_0) (is_same_line p3_0 p12_0) (is_same_line p4_0 p0_0) (is_same_line p4_0 p2_0) (is_same_line p4_0 p3_0) (is_same_line p4_0 p6_0) (is_same_line p4_0 p8_0) (is_same_line p4_0 p9_0) (is_same_line p4_0 p11_0) (is_same_line p4_0 p4_1) (is_same_line p4_0 p4_3) (is_same_line p4_0 p4_5) (is_same_line p4_0 p4_6) (is_same_line p4_0 p4_7) (is_same_line p4_0 p4_-1) (is_same_line p4_0 p4_8) (is_same_line p4_0 p-1_0) (is_same_line p4_0 p12_0) (is_same_line p6_0 p0_0) (is_same_line p6_0 p2_0) (is_same_line p6_0 p3_0) (is_same_line p6_0 p4_0) (is_same_line p6_0 p8_0) (is_same_line p6_0 p9_0) (is_same_line p6_0 p11_0) (is_same_line p6_0 p6_2) (is_same_line p6_0 p6_3) (is_same_line p6_0 p6_4) (is_same_line p6_0 p6_5) (is_same_line p6_0 p6_6) (is_same_line p6_0 p6_-1) (is_same_line p6_0 p-1_0) (is_same_line p6_0 p12_0) (is_same_line p8_0 p0_0) (is_same_line p8_0 p2_0) (is_same_line p8_0 p3_0) (is_same_line p8_0 p4_0) (is_same_line p8_0 p6_0) (is_same_line p8_0 p9_0) (is_same_line p8_0 p11_0) (is_same_line p8_0 p8_1) (is_same_line p8_0 p8_2) (is_same_line p8_0 p8_3) (is_same_line p8_0 p8_5) (is_same_line p8_0 p8_6) (is_same_line p8_0 p8_7) (is_same_line p8_0 p8_-1) (is_same_line p8_0 p8_8) (is_same_line p8_0 p-1_0) (is_same_line p8_0 p12_0) (is_same_line p9_0 p0_0) (is_same_line p9_0 p2_0) (is_same_line p9_0 p3_0) (is_same_line p9_0 p4_0) (is_same_line p9_0 p6_0) (is_same_line p9_0 p8_0) (is_same_line p9_0 p11_0) (is_same_line p9_0 p9_1) (is_same_line p9_0 p9_2) (is_same_line p9_0 p9_3) (is_same_line p9_0 p9_4) (is_same_line p9_0 p9_6) (is_same_line p9_0 p9_7) (is_same_line p9_0 p9_-1) (is_same_line p9_0 p9_8) (is_same_line p9_0 p-1_0) (is_same_line p9_0 p12_0) (is_same_line p11_0 p0_0) (is_same_line p11_0 p2_0) (is_same_line p11_0 p3_0) (is_same_line p11_0 p4_0) (is_same_line p11_0 p6_0) (is_same_line p11_0 p8_0) (is_same_line p11_0 p9_0) (is_same_line p11_0 p11_1) (is_same_line p11_0 p11_3) (is_same_line p11_0 p11_4) (is_same_line p11_0 p11_6) (is_same_line p11_0 p11_7) (is_same_line p11_0 p11_-1) (is_same_line p11_0 p11_8) (is_same_line p11_0 p-1_0) (is_same_line p11_0 p12_0) (is_same_line p0_1 p0_0) (is_same_line p0_1 p3_1) (is_same_line p0_1 p4_1) (is_same_line p0_1 p5_1) (is_same_line p0_1 p8_1) (is_same_line p0_1 p9_1) (is_same_line p0_1 p11_1) (is_same_line p0_1 p0_2) (is_same_line p0_1 p0_3) (is_same_line p0_1 p0_4) (is_same_line p0_1 p0_6) (is_same_line p0_1 p0_-1) (is_same_line p0_1 p-1_1) (is_same_line p0_1 p12_1) (is_same_line p3_1 p3_0) (is_same_line p3_1 p0_1) (is_same_line p3_1 p4_1) (is_same_line p3_1 p5_1) (is_same_line p3_1 p8_1) (is_same_line p3_1 p9_1) (is_same_line p3_1 p11_1) (is_same_line p3_1 p3_3) (is_same_line p3_1 p3_5) (is_same_line p3_1 p3_7) (is_same_line p3_1 p3_-1) (is_same_line p3_1 p3_8) (is_same_line p3_1 p-1_1) (is_same_line p3_1 p12_1) (is_same_line p4_1 p4_0) (is_same_line p4_1 p0_1) (is_same_line p4_1 p3_1) (is_same_line p4_1 p5_1) (is_same_line p4_1 p8_1) (is_same_line p4_1 p9_1) (is_same_line p4_1 p11_1) (is_same_line p4_1 p4_3) (is_same_line p4_1 p4_5) (is_same_line p4_1 p4_6) (is_same_line p4_1 p4_7) (is_same_line p4_1 p4_-1) (is_same_line p4_1 p4_8) (is_same_line p4_1 p-1_1) (is_same_line p4_1 p12_1) (is_same_line p5_1 p0_1) (is_same_line p5_1 p3_1) (is_same_line p5_1 p4_1) (is_same_line p5_1 p8_1) (is_same_line p5_1 p9_1) (is_same_line p5_1 p11_1) (is_same_line p5_1 p5_2) (is_same_line p5_1 p5_3) (is_same_line p5_1 p5_4) (is_same_line p5_1 p5_6) (is_same_line p5_1 p-1_1) (is_same_line p5_1 p12_1) (is_same_line p8_1 p8_0) (is_same_line p8_1 p0_1) (is_same_line p8_1 p3_1) (is_same_line p8_1 p4_1) (is_same_line p8_1 p5_1) (is_same_line p8_1 p9_1) (is_same_line p8_1 p11_1) (is_same_line p8_1 p8_2) (is_same_line p8_1 p8_3) (is_same_line p8_1 p8_5) (is_same_line p8_1 p8_6) (is_same_line p8_1 p8_7) (is_same_line p8_1 p8_-1) (is_same_line p8_1 p8_8) (is_same_line p8_1 p-1_1) (is_same_line p8_1 p12_1) (is_same_line p9_1 p9_0) (is_same_line p9_1 p0_1) (is_same_line p9_1 p3_1) (is_same_line p9_1 p4_1) (is_same_line p9_1 p5_1) (is_same_line p9_1 p8_1) (is_same_line p9_1 p11_1) (is_same_line p9_1 p9_2) (is_same_line p9_1 p9_3) (is_same_line p9_1 p9_4) (is_same_line p9_1 p9_6) (is_same_line p9_1 p9_7) (is_same_line p9_1 p9_-1) (is_same_line p9_1 p9_8) (is_same_line p9_1 p-1_1) (is_same_line p9_1 p12_1) (is_same_line p11_1 p11_0) (is_same_line p11_1 p0_1) (is_same_line p11_1 p3_1) (is_same_line p11_1 p4_1) (is_same_line p11_1 p5_1) (is_same_line p11_1 p8_1) (is_same_line p11_1 p9_1) (is_same_line p11_1 p11_3) (is_same_line p11_1 p11_4) (is_same_line p11_1 p11_6) (is_same_line p11_1 p11_7) (is_same_line p11_1 p11_-1) (is_same_line p11_1 p11_8) (is_same_line p11_1 p-1_1) (is_same_line p11_1 p12_1) (is_same_line p0_2 p0_0) (is_same_line p0_2 p0_1) (is_same_line p0_2 p1_2) (is_same_line p0_2 p5_2) (is_same_line p0_2 p6_2) (is_same_line p0_2 p7_2) (is_same_line p0_2 p8_2) (is_same_line p0_2 p9_2) (is_same_line p0_2 p0_3) (is_same_line p0_2 p0_4) (is_same_line p0_2 p0_6) (is_same_line p0_2 p0_-1) (is_same_line p0_2 p-1_2) (is_same_line p1_2 p0_2) (is_same_line p1_2 p5_2) (is_same_line p1_2 p6_2) (is_same_line p1_2 p7_2) (is_same_line p1_2 p8_2) (is_same_line p1_2 p9_2) (is_same_line p1_2 p1_3) (is_same_line p1_2 p1_4) (is_same_line p1_2 p1_5) (is_same_line p1_2 p1_6) (is_same_line p1_2 p-1_2) (is_same_line p5_2 p5_1) (is_same_line p5_2 p0_2) (is_same_line p5_2 p1_2) (is_same_line p5_2 p6_2) (is_same_line p5_2 p7_2) (is_same_line p5_2 p8_2) (is_same_line p5_2 p9_2) (is_same_line p5_2 p5_3) (is_same_line p5_2 p5_4) (is_same_line p5_2 p5_6) (is_same_line p5_2 p-1_2) (is_same_line p6_2 p6_0) (is_same_line p6_2 p0_2) (is_same_line p6_2 p1_2) (is_same_line p6_2 p5_2) (is_same_line p6_2 p7_2) (is_same_line p6_2 p8_2) (is_same_line p6_2 p9_2) (is_same_line p6_2 p6_3) (is_same_line p6_2 p6_4) (is_same_line p6_2 p6_5) (is_same_line p6_2 p6_6) (is_same_line p6_2 p6_-1) (is_same_line p6_2 p-1_2) (is_same_line p7_2 p0_2) (is_same_line p7_2 p1_2) (is_same_line p7_2 p5_2) (is_same_line p7_2 p6_2) (is_same_line p7_2 p8_2) (is_same_line p7_2 p9_2) (is_same_line p7_2 p7_4) (is_same_line p7_2 p-1_2) (is_same_line p8_2 p8_0) (is_same_line p8_2 p8_1) (is_same_line p8_2 p0_2) (is_same_line p8_2 p1_2) (is_same_line p8_2 p5_2) (is_same_line p8_2 p6_2) (is_same_line p8_2 p7_2) (is_same_line p8_2 p9_2) (is_same_line p8_2 p8_3) (is_same_line p8_2 p8_5) (is_same_line p8_2 p8_6) (is_same_line p8_2 p8_7) (is_same_line p8_2 p8_-1) (is_same_line p8_2 p8_8) (is_same_line p8_2 p-1_2) (is_same_line p9_2 p9_0) (is_same_line p9_2 p9_1) (is_same_line p9_2 p0_2) (is_same_line p9_2 p1_2) (is_same_line p9_2 p5_2) (is_same_line p9_2 p6_2) (is_same_line p9_2 p7_2) (is_same_line p9_2 p8_2) (is_same_line p9_2 p9_3) (is_same_line p9_2 p9_4) (is_same_line p9_2 p9_6) (is_same_line p9_2 p9_7) (is_same_line p9_2 p9_-1) (is_same_line p9_2 p9_8) (is_same_line p9_2 p-1_2) (is_same_line p0_3 p0_0) (is_same_line p0_3 p0_1) (is_same_line p0_3 p0_2) (is_same_line p0_3 p1_3) (is_same_line p0_3 p2_3) (is_same_line p0_3 p3_3) (is_same_line p0_3 p4_3) (is_same_line p0_3 p5_3) (is_same_line p0_3 p6_3) (is_same_line p0_3 p8_3) (is_same_line p0_3 p9_3) (is_same_line p0_3 p11_3) (is_same_line p0_3 p0_4) (is_same_line p0_3 p0_6) (is_same_line p0_3 p0_-1) (is_same_line p0_3 p-1_3) (is_same_line p0_3 p12_3) (is_same_line p1_3 p1_2) (is_same_line p1_3 p0_3) (is_same_line p1_3 p2_3) (is_same_line p1_3 p3_3) (is_same_line p1_3 p4_3) (is_same_line p1_3 p5_3) (is_same_line p1_3 p6_3) (is_same_line p1_3 p8_3) (is_same_line p1_3 p9_3) (is_same_line p1_3 p11_3) (is_same_line p1_3 p1_4) (is_same_line p1_3 p1_5) (is_same_line p1_3 p1_6) (is_same_line p1_3 p-1_3) (is_same_line p1_3 p12_3) (is_same_line p2_3 p2_0) (is_same_line p2_3 p0_3) (is_same_line p2_3 p1_3) (is_same_line p2_3 p3_3) (is_same_line p2_3 p4_3) (is_same_line p2_3 p5_3) (is_same_line p2_3 p6_3) (is_same_line p2_3 p8_3) (is_same_line p2_3 p9_3) (is_same_line p2_3 p11_3) (is_same_line p2_3 p2_-1) (is_same_line p2_3 p-1_3) (is_same_line p2_3 p12_3) (is_same_line p3_3 p3_0) (is_same_line p3_3 p3_1) (is_same_line p3_3 p0_3) (is_same_line p3_3 p1_3) (is_same_line p3_3 p2_3) (is_same_line p3_3 p4_3) (is_same_line p3_3 p5_3) (is_same_line p3_3 p6_3) (is_same_line p3_3 p8_3) (is_same_line p3_3 p9_3) (is_same_line p3_3 p11_3) (is_same_line p3_3 p3_5) (is_same_line p3_3 p3_7) (is_same_line p3_3 p3_-1) (is_same_line p3_3 p3_8) (is_same_line p3_3 p-1_3) (is_same_line p3_3 p12_3) (is_same_line p4_3 p4_0) (is_same_line p4_3 p4_1) (is_same_line p4_3 p0_3) (is_same_line p4_3 p1_3) (is_same_line p4_3 p2_3) (is_same_line p4_3 p3_3) (is_same_line p4_3 p5_3) (is_same_line p4_3 p6_3) (is_same_line p4_3 p8_3) (is_same_line p4_3 p9_3) (is_same_line p4_3 p11_3) (is_same_line p4_3 p4_5) (is_same_line p4_3 p4_6) (is_same_line p4_3 p4_7) (is_same_line p4_3 p4_-1) (is_same_line p4_3 p4_8) (is_same_line p4_3 p-1_3) (is_same_line p4_3 p12_3) (is_same_line p5_3 p5_1) (is_same_line p5_3 p5_2) (is_same_line p5_3 p0_3) (is_same_line p5_3 p1_3) (is_same_line p5_3 p2_3) (is_same_line p5_3 p3_3) (is_same_line p5_3 p4_3) (is_same_line p5_3 p6_3) (is_same_line p5_3 p8_3) (is_same_line p5_3 p9_3) (is_same_line p5_3 p11_3) (is_same_line p5_3 p5_4) (is_same_line p5_3 p5_6) (is_same_line p5_3 p-1_3) (is_same_line p5_3 p12_3) (is_same_line p6_3 p6_0) (is_same_line p6_3 p6_2) (is_same_line p6_3 p0_3) (is_same_line p6_3 p1_3) (is_same_line p6_3 p2_3) (is_same_line p6_3 p3_3) (is_same_line p6_3 p4_3) (is_same_line p6_3 p5_3) (is_same_line p6_3 p8_3) (is_same_line p6_3 p9_3) (is_same_line p6_3 p11_3) (is_same_line p6_3 p6_4) (is_same_line p6_3 p6_5) (is_same_line p6_3 p6_6) (is_same_line p6_3 p6_-1) (is_same_line p6_3 p-1_3) (is_same_line p6_3 p12_3) (is_same_line p8_3 p8_0) (is_same_line p8_3 p8_1) (is_same_line p8_3 p8_2) (is_same_line p8_3 p0_3) (is_same_line p8_3 p1_3) (is_same_line p8_3 p2_3) (is_same_line p8_3 p3_3) (is_same_line p8_3 p4_3) (is_same_line p8_3 p5_3) (is_same_line p8_3 p6_3) (is_same_line p8_3 p9_3) (is_same_line p8_3 p11_3) (is_same_line p8_3 p8_5) (is_same_line p8_3 p8_6) (is_same_line p8_3 p8_7) (is_same_line p8_3 p8_-1) (is_same_line p8_3 p8_8) (is_same_line p8_3 p-1_3) (is_same_line p8_3 p12_3) (is_same_line p9_3 p9_0) (is_same_line p9_3 p9_1) (is_same_line p9_3 p9_2) (is_same_line p9_3 p0_3) (is_same_line p9_3 p1_3) (is_same_line p9_3 p2_3) (is_same_line p9_3 p3_3) (is_same_line p9_3 p4_3) (is_same_line p9_3 p5_3) (is_same_line p9_3 p6_3) (is_same_line p9_3 p8_3) (is_same_line p9_3 p11_3) (is_same_line p9_3 p9_4) (is_same_line p9_3 p9_6) (is_same_line p9_3 p9_7) (is_same_line p9_3 p9_-1) (is_same_line p9_3 p9_8) (is_same_line p9_3 p-1_3) (is_same_line p9_3 p12_3) (is_same_line p11_3 p11_0) (is_same_line p11_3 p11_1) (is_same_line p11_3 p0_3) (is_same_line p11_3 p1_3) (is_same_line p11_3 p2_3) (is_same_line p11_3 p3_3) (is_same_line p11_3 p4_3) (is_same_line p11_3 p5_3) (is_same_line p11_3 p6_3) (is_same_line p11_3 p8_3) (is_same_line p11_3 p9_3) (is_same_line p11_3 p11_4) (is_same_line p11_3 p11_6) (is_same_line p11_3 p11_7) (is_same_line p11_3 p11_-1) (is_same_line p11_3 p11_8) (is_same_line p11_3 p-1_3) (is_same_line p11_3 p12_3) (is_same_line p0_4 p0_0) (is_same_line p0_4 p0_1) (is_same_line p0_4 p0_2) (is_same_line p0_4 p0_3) (is_same_line p0_4 p1_4) (is_same_line p0_4 p5_4) (is_same_line p0_4 p6_4) (is_same_line p0_4 p7_4) (is_same_line p0_4 p9_4) (is_same_line p0_4 p10_4) (is_same_line p0_4 p11_4) (is_same_line p0_4 p0_6) (is_same_line p0_4 p0_-1) (is_same_line p0_4 p-1_4) (is_same_line p0_4 p12_4) (is_same_line p1_4 p1_2) (is_same_line p1_4 p1_3) (is_same_line p1_4 p0_4) (is_same_line p1_4 p5_4) (is_same_line p1_4 p6_4) (is_same_line p1_4 p7_4) (is_same_line p1_4 p9_4) (is_same_line p1_4 p10_4) (is_same_line p1_4 p11_4) (is_same_line p1_4 p1_5) (is_same_line p1_4 p1_6) (is_same_line p1_4 p-1_4) (is_same_line p1_4 p12_4) (is_same_line p5_4 p5_1) (is_same_line p5_4 p5_2) (is_same_line p5_4 p5_3) (is_same_line p5_4 p0_4) (is_same_line p5_4 p1_4) (is_same_line p5_4 p6_4) (is_same_line p5_4 p7_4) (is_same_line p5_4 p9_4) (is_same_line p5_4 p10_4) (is_same_line p5_4 p11_4) (is_same_line p5_4 p5_6) (is_same_line p5_4 p-1_4) (is_same_line p5_4 p12_4) (is_same_line p6_4 p6_0) (is_same_line p6_4 p6_2) (is_same_line p6_4 p6_3) (is_same_line p6_4 p0_4) (is_same_line p6_4 p1_4) (is_same_line p6_4 p5_4) (is_same_line p6_4 p7_4) (is_same_line p6_4 p9_4) (is_same_line p6_4 p10_4) (is_same_line p6_4 p11_4) (is_same_line p6_4 p6_5) (is_same_line p6_4 p6_6) (is_same_line p6_4 p6_-1) (is_same_line p6_4 p-1_4) (is_same_line p6_4 p12_4) (is_same_line p7_4 p7_2) (is_same_line p7_4 p0_4) (is_same_line p7_4 p1_4) (is_same_line p7_4 p5_4) (is_same_line p7_4 p6_4) (is_same_line p7_4 p9_4) (is_same_line p7_4 p10_4) (is_same_line p7_4 p11_4) (is_same_line p7_4 p-1_4) (is_same_line p7_4 p12_4) (is_same_line p9_4 p9_0) (is_same_line p9_4 p9_1) (is_same_line p9_4 p9_2) (is_same_line p9_4 p9_3) (is_same_line p9_4 p0_4) (is_same_line p9_4 p1_4) (is_same_line p9_4 p5_4) (is_same_line p9_4 p6_4) (is_same_line p9_4 p7_4) (is_same_line p9_4 p10_4) (is_same_line p9_4 p11_4) (is_same_line p9_4 p9_6) (is_same_line p9_4 p9_7) (is_same_line p9_4 p9_-1) (is_same_line p9_4 p9_8) (is_same_line p9_4 p-1_4) (is_same_line p9_4 p12_4) (is_same_line p10_4 p0_4) (is_same_line p10_4 p1_4) (is_same_line p10_4 p5_4) (is_same_line p10_4 p6_4) (is_same_line p10_4 p7_4) (is_same_line p10_4 p9_4) (is_same_line p10_4 p11_4) (is_same_line p10_4 p10_6) (is_same_line p10_4 p10_7) (is_same_line p10_4 p10_8) (is_same_line p10_4 p-1_4) (is_same_line p10_4 p12_4) (is_same_line p11_4 p11_0) (is_same_line p11_4 p11_1) (is_same_line p11_4 p11_3) (is_same_line p11_4 p0_4) (is_same_line p11_4 p1_4) (is_same_line p11_4 p5_4) (is_same_line p11_4 p6_4) (is_same_line p11_4 p7_4) (is_same_line p11_4 p9_4) (is_same_line p11_4 p10_4) (is_same_line p11_4 p11_6) (is_same_line p11_4 p11_7) (is_same_line p11_4 p11_-1) (is_same_line p11_4 p11_8) (is_same_line p11_4 p-1_4) (is_same_line p11_4 p12_4) (is_same_line p1_5 p1_2) (is_same_line p1_5 p1_3) (is_same_line p1_5 p1_4) (is_same_line p1_5 p3_5) (is_same_line p1_5 p4_5) (is_same_line p1_5 p6_5) (is_same_line p1_5 p8_5) (is_same_line p1_5 p1_6) (is_same_line p3_5 p3_0) (is_same_line p3_5 p3_1) (is_same_line p3_5 p3_3) (is_same_line p3_5 p1_5) (is_same_line p3_5 p4_5) (is_same_line p3_5 p6_5) (is_same_line p3_5 p8_5) (is_same_line p3_5 p3_7) (is_same_line p3_5 p3_-1) (is_same_line p3_5 p3_8) (is_same_line p4_5 p4_0) (is_same_line p4_5 p4_1) (is_same_line p4_5 p4_3) (is_same_line p4_5 p1_5) (is_same_line p4_5 p3_5) (is_same_line p4_5 p6_5) (is_same_line p4_5 p8_5) (is_same_line p4_5 p4_6) (is_same_line p4_5 p4_7) (is_same_line p4_5 p4_-1) (is_same_line p4_5 p4_8) (is_same_line p6_5 p6_0) (is_same_line p6_5 p6_2) (is_same_line p6_5 p6_3) (is_same_line p6_5 p6_4) (is_same_line p6_5 p1_5) (is_same_line p6_5 p3_5) (is_same_line p6_5 p4_5) (is_same_line p6_5 p8_5) (is_same_line p6_5 p6_6) (is_same_line p6_5 p6_-1) (is_same_line p8_5 p8_0) (is_same_line p8_5 p8_1) (is_same_line p8_5 p8_2) (is_same_line p8_5 p8_3) (is_same_line p8_5 p1_5) (is_same_line p8_5 p3_5) (is_same_line p8_5 p4_5) (is_same_line p8_5 p6_5) (is_same_line p8_5 p8_6) (is_same_line p8_5 p8_7) (is_same_line p8_5 p8_-1) (is_same_line p8_5 p8_8) (is_same_line p0_6 p0_0) (is_same_line p0_6 p0_1) (is_same_line p0_6 p0_2) (is_same_line p0_6 p0_3) (is_same_line p0_6 p0_4) (is_same_line p0_6 p1_6) (is_same_line p0_6 p4_6) (is_same_line p0_6 p5_6) (is_same_line p0_6 p6_6) (is_same_line p0_6 p8_6) (is_same_line p0_6 p9_6) (is_same_line p0_6 p10_6) (is_same_line p0_6 p11_6) (is_same_line p0_6 p0_-1) (is_same_line p0_6 p-1_6) (is_same_line p0_6 p12_6) (is_same_line p1_6 p1_2) (is_same_line p1_6 p1_3) (is_same_line p1_6 p1_4) (is_same_line p1_6 p1_5) (is_same_line p1_6 p0_6) (is_same_line p1_6 p4_6) (is_same_line p1_6 p5_6) (is_same_line p1_6 p6_6) (is_same_line p1_6 p8_6) (is_same_line p1_6 p9_6) (is_same_line p1_6 p10_6) (is_same_line p1_6 p11_6) (is_same_line p1_6 p-1_6) (is_same_line p1_6 p12_6) (is_same_line p4_6 p4_0) (is_same_line p4_6 p4_1) (is_same_line p4_6 p4_3) (is_same_line p4_6 p4_5) (is_same_line p4_6 p0_6) (is_same_line p4_6 p1_6) (is_same_line p4_6 p5_6) (is_same_line p4_6 p6_6) (is_same_line p4_6 p8_6) (is_same_line p4_6 p9_6) (is_same_line p4_6 p10_6) (is_same_line p4_6 p11_6) (is_same_line p4_6 p4_7) (is_same_line p4_6 p4_-1) (is_same_line p4_6 p4_8) (is_same_line p4_6 p-1_6) (is_same_line p4_6 p12_6) (is_same_line p5_6 p5_1) (is_same_line p5_6 p5_2) (is_same_line p5_6 p5_3) (is_same_line p5_6 p5_4) (is_same_line p5_6 p0_6) (is_same_line p5_6 p1_6) (is_same_line p5_6 p4_6) (is_same_line p5_6 p6_6) (is_same_line p5_6 p8_6) (is_same_line p5_6 p9_6) (is_same_line p5_6 p10_6) (is_same_line p5_6 p11_6) (is_same_line p5_6 p-1_6) (is_same_line p5_6 p12_6) (is_same_line p6_6 p6_0) (is_same_line p6_6 p6_2) (is_same_line p6_6 p6_3) (is_same_line p6_6 p6_4) (is_same_line p6_6 p6_5) (is_same_line p6_6 p0_6) (is_same_line p6_6 p1_6) (is_same_line p6_6 p4_6) (is_same_line p6_6 p5_6) (is_same_line p6_6 p8_6) (is_same_line p6_6 p9_6) (is_same_line p6_6 p10_6) (is_same_line p6_6 p11_6) (is_same_line p6_6 p6_-1) (is_same_line p6_6 p-1_6) (is_same_line p6_6 p12_6) (is_same_line p8_6 p8_0) (is_same_line p8_6 p8_1) (is_same_line p8_6 p8_2) (is_same_line p8_6 p8_3) (is_same_line p8_6 p8_5) (is_same_line p8_6 p0_6) (is_same_line p8_6 p1_6) (is_same_line p8_6 p4_6) (is_same_line p8_6 p5_6) (is_same_line p8_6 p6_6) (is_same_line p8_6 p9_6) (is_same_line p8_6 p10_6) (is_same_line p8_6 p11_6) (is_same_line p8_6 p8_7) (is_same_line p8_6 p8_-1) (is_same_line p8_6 p8_8) (is_same_line p8_6 p-1_6) (is_same_line p8_6 p12_6) (is_same_line p9_6 p9_0) (is_same_line p9_6 p9_1) (is_same_line p9_6 p9_2) (is_same_line p9_6 p9_3) (is_same_line p9_6 p9_4) (is_same_line p9_6 p0_6) (is_same_line p9_6 p1_6) (is_same_line p9_6 p4_6) (is_same_line p9_6 p5_6) (is_same_line p9_6 p6_6) (is_same_line p9_6 p8_6) (is_same_line p9_6 p10_6) (is_same_line p9_6 p11_6) (is_same_line p9_6 p9_7) (is_same_line p9_6 p9_-1) (is_same_line p9_6 p9_8) (is_same_line p9_6 p-1_6) (is_same_line p9_6 p12_6) (is_same_line p10_6 p10_4) (is_same_line p10_6 p0_6) (is_same_line p10_6 p1_6) (is_same_line p10_6 p4_6) (is_same_line p10_6 p5_6) (is_same_line p10_6 p6_6) (is_same_line p10_6 p8_6) (is_same_line p10_6 p9_6) (is_same_line p10_6 p11_6) (is_same_line p10_6 p10_7) (is_same_line p10_6 p10_8) (is_same_line p10_6 p-1_6) (is_same_line p10_6 p12_6) (is_same_line p11_6 p11_0) (is_same_line p11_6 p11_1) (is_same_line p11_6 p11_3) (is_same_line p11_6 p11_4) (is_same_line p11_6 p0_6) (is_same_line p11_6 p1_6) (is_same_line p11_6 p4_6) (is_same_line p11_6 p5_6) (is_same_line p11_6 p6_6) (is_same_line p11_6 p8_6) (is_same_line p11_6 p9_6) (is_same_line p11_6 p10_6) (is_same_line p11_6 p11_7) (is_same_line p11_6 p11_-1) (is_same_line p11_6 p11_8) (is_same_line p11_6 p-1_6) (is_same_line p11_6 p12_6) (is_same_line p3_7 p3_0) (is_same_line p3_7 p3_1) (is_same_line p3_7 p3_3) (is_same_line p3_7 p3_5) (is_same_line p3_7 p4_7) (is_same_line p3_7 p8_7) (is_same_line p3_7 p9_7) (is_same_line p3_7 p10_7) (is_same_line p3_7 p11_7) (is_same_line p3_7 p3_-1) (is_same_line p3_7 p3_8) (is_same_line p3_7 p12_7) (is_same_line p4_7 p4_0) (is_same_line p4_7 p4_1) (is_same_line p4_7 p4_3) (is_same_line p4_7 p4_5) (is_same_line p4_7 p4_6) (is_same_line p4_7 p3_7) (is_same_line p4_7 p8_7) (is_same_line p4_7 p9_7) (is_same_line p4_7 p10_7) (is_same_line p4_7 p11_7) (is_same_line p4_7 p4_-1) (is_same_line p4_7 p4_8) (is_same_line p4_7 p12_7) (is_same_line p8_7 p8_0) (is_same_line p8_7 p8_1) (is_same_line p8_7 p8_2) (is_same_line p8_7 p8_3) (is_same_line p8_7 p8_5) (is_same_line p8_7 p8_6) (is_same_line p8_7 p3_7) (is_same_line p8_7 p4_7) (is_same_line p8_7 p9_7) (is_same_line p8_7 p10_7) (is_same_line p8_7 p11_7) (is_same_line p8_7 p8_-1) (is_same_line p8_7 p8_8) (is_same_line p8_7 p12_7) (is_same_line p9_7 p9_0) (is_same_line p9_7 p9_1) (is_same_line p9_7 p9_2) (is_same_line p9_7 p9_3) (is_same_line p9_7 p9_4) (is_same_line p9_7 p9_6) (is_same_line p9_7 p3_7) (is_same_line p9_7 p4_7) (is_same_line p9_7 p8_7) (is_same_line p9_7 p10_7) (is_same_line p9_7 p11_7) (is_same_line p9_7 p9_-1) (is_same_line p9_7 p9_8) (is_same_line p9_7 p12_7) (is_same_line p10_7 p10_4) (is_same_line p10_7 p10_6) (is_same_line p10_7 p3_7) (is_same_line p10_7 p4_7) (is_same_line p10_7 p8_7) (is_same_line p10_7 p9_7) (is_same_line p10_7 p11_7) (is_same_line p10_7 p10_8) (is_same_line p10_7 p12_7) (is_same_line p11_7 p11_0) (is_same_line p11_7 p11_1) (is_same_line p11_7 p11_3) (is_same_line p11_7 p11_4) (is_same_line p11_7 p11_6) (is_same_line p11_7 p3_7) (is_same_line p11_7 p4_7) (is_same_line p11_7 p8_7) (is_same_line p11_7 p9_7) (is_same_line p11_7 p10_7) (is_same_line p11_7 p11_-1) (is_same_line p11_7 p11_8) (is_same_line p11_7 p12_7) (is_same_line p0_-1 p0_0) (is_same_line p0_-1 p0_1) (is_same_line p0_-1 p0_2) (is_same_line p0_-1 p0_3) (is_same_line p0_-1 p0_4) (is_same_line p0_-1 p0_6) (is_same_line p0_-1 p2_-1) (is_same_line p0_-1 p3_-1) (is_same_line p0_-1 p4_-1) (is_same_line p0_-1 p6_-1) (is_same_line p0_-1 p8_-1) (is_same_line p0_-1 p9_-1) (is_same_line p0_-1 p11_-1) (is_same_line p2_-1 p2_0) (is_same_line p2_-1 p2_3) (is_same_line p2_-1 p0_-1) (is_same_line p2_-1 p3_-1) (is_same_line p2_-1 p4_-1) (is_same_line p2_-1 p6_-1) (is_same_line p2_-1 p8_-1) (is_same_line p2_-1 p9_-1) (is_same_line p2_-1 p11_-1) (is_same_line p3_-1 p3_0) (is_same_line p3_-1 p3_1) (is_same_line p3_-1 p3_3) (is_same_line p3_-1 p3_5) (is_same_line p3_-1 p3_7) (is_same_line p3_-1 p0_-1) (is_same_line p3_-1 p2_-1) (is_same_line p3_-1 p3_8) (is_same_line p3_-1 p4_-1) (is_same_line p3_-1 p6_-1) (is_same_line p3_-1 p8_-1) (is_same_line p3_-1 p9_-1) (is_same_line p3_-1 p11_-1) (is_same_line p3_8 p3_0) (is_same_line p3_8 p3_1) (is_same_line p3_8 p3_3) (is_same_line p3_8 p3_5) (is_same_line p3_8 p3_7) (is_same_line p3_8 p3_-1) (is_same_line p3_8 p4_8) (is_same_line p3_8 p8_8) (is_same_line p3_8 p9_8) (is_same_line p3_8 p10_8) (is_same_line p3_8 p11_8) (is_same_line p4_-1 p4_0) (is_same_line p4_-1 p4_1) (is_same_line p4_-1 p4_3) (is_same_line p4_-1 p4_5) (is_same_line p4_-1 p4_6) (is_same_line p4_-1 p4_7) (is_same_line p4_-1 p0_-1) (is_same_line p4_-1 p2_-1) (is_same_line p4_-1 p3_-1) (is_same_line p4_-1 p4_8) (is_same_line p4_-1 p6_-1) (is_same_line p4_-1 p8_-1) (is_same_line p4_-1 p9_-1) (is_same_line p4_-1 p11_-1) (is_same_line p4_8 p4_0) (is_same_line p4_8 p4_1) (is_same_line p4_8 p4_3) (is_same_line p4_8 p4_5) (is_same_line p4_8 p4_6) (is_same_line p4_8 p4_7) (is_same_line p4_8 p3_8) (is_same_line p4_8 p4_-1) (is_same_line p4_8 p8_8) (is_same_line p4_8 p9_8) (is_same_line p4_8 p10_8) (is_same_line p4_8 p11_8) (is_same_line p6_-1 p6_0) (is_same_line p6_-1 p6_2) (is_same_line p6_-1 p6_3) (is_same_line p6_-1 p6_4) (is_same_line p6_-1 p6_5) (is_same_line p6_-1 p6_6) (is_same_line p6_-1 p0_-1) (is_same_line p6_-1 p2_-1) (is_same_line p6_-1 p3_-1) (is_same_line p6_-1 p4_-1) (is_same_line p6_-1 p8_-1) (is_same_line p6_-1 p9_-1) (is_same_line p6_-1 p11_-1) (is_same_line p8_-1 p8_0) (is_same_line p8_-1 p8_1) (is_same_line p8_-1 p8_2) (is_same_line p8_-1 p8_3) (is_same_line p8_-1 p8_5) (is_same_line p8_-1 p8_6) (is_same_line p8_-1 p8_7) (is_same_line p8_-1 p0_-1) (is_same_line p8_-1 p2_-1) (is_same_line p8_-1 p3_-1) (is_same_line p8_-1 p4_-1) (is_same_line p8_-1 p6_-1) (is_same_line p8_-1 p8_8) (is_same_line p8_-1 p9_-1) (is_same_line p8_-1 p11_-1) (is_same_line p8_8 p8_0) (is_same_line p8_8 p8_1) (is_same_line p8_8 p8_2) (is_same_line p8_8 p8_3) (is_same_line p8_8 p8_5) (is_same_line p8_8 p8_6) (is_same_line p8_8 p8_7) (is_same_line p8_8 p3_8) (is_same_line p8_8 p4_8) (is_same_line p8_8 p8_-1) (is_same_line p8_8 p9_8) (is_same_line p8_8 p10_8) (is_same_line p8_8 p11_8) (is_same_line p9_-1 p9_0) (is_same_line p9_-1 p9_1) (is_same_line p9_-1 p9_2) (is_same_line p9_-1 p9_3) (is_same_line p9_-1 p9_4) (is_same_line p9_-1 p9_6) (is_same_line p9_-1 p9_7) (is_same_line p9_-1 p0_-1) (is_same_line p9_-1 p2_-1) (is_same_line p9_-1 p3_-1) (is_same_line p9_-1 p4_-1) (is_same_line p9_-1 p6_-1) (is_same_line p9_-1 p8_-1) (is_same_line p9_-1 p9_8) (is_same_line p9_-1 p11_-1) (is_same_line p9_8 p9_0) (is_same_line p9_8 p9_1) (is_same_line p9_8 p9_2) (is_same_line p9_8 p9_3) (is_same_line p9_8 p9_4) (is_same_line p9_8 p9_6) (is_same_line p9_8 p9_7) (is_same_line p9_8 p3_8) (is_same_line p9_8 p4_8) (is_same_line p9_8 p8_8) (is_same_line p9_8 p9_-1) (is_same_line p9_8 p10_8) (is_same_line p9_8 p11_8) (is_same_line p10_8 p10_4) (is_same_line p10_8 p10_6) (is_same_line p10_8 p10_7) (is_same_line p10_8 p3_8) (is_same_line p10_8 p4_8) (is_same_line p10_8 p8_8) (is_same_line p10_8 p9_8) (is_same_line p10_8 p11_8) (is_same_line p11_-1 p11_0) (is_same_line p11_-1 p11_1) (is_same_line p11_-1 p11_3) (is_same_line p11_-1 p11_4) (is_same_line p11_-1 p11_6) (is_same_line p11_-1 p11_7) (is_same_line p11_-1 p0_-1) (is_same_line p11_-1 p2_-1) (is_same_line p11_-1 p3_-1) (is_same_line p11_-1 p4_-1) (is_same_line p11_-1 p6_-1) (is_same_line p11_-1 p8_-1) (is_same_line p11_-1 p9_-1) (is_same_line p11_-1 p11_8) (is_same_line p11_8 p11_0) (is_same_line p11_8 p11_1) (is_same_line p11_8 p11_3) (is_same_line p11_8 p11_4) (is_same_line p11_8 p11_6) (is_same_line p11_8 p11_7) (is_same_line p11_8 p3_8) (is_same_line p11_8 p4_8) (is_same_line p11_8 p8_8) (is_same_line p11_8 p9_8) (is_same_line p11_8 p10_8) (is_same_line p11_8 p11_-1) (is_same_line p-1_0 p0_0) (is_same_line p-1_0 p2_0) (is_same_line p-1_0 p3_0) (is_same_line p-1_0 p4_0) (is_same_line p-1_0 p6_0) (is_same_line p-1_0 p8_0) (is_same_line p-1_0 p9_0) (is_same_line p-1_0 p11_0) (is_same_line p-1_0 p12_0) (is_same_line p-1_0 p-1_1) (is_same_line p-1_0 p-1_2) (is_same_line p-1_0 p-1_3) (is_same_line p-1_0 p-1_4) (is_same_line p-1_0 p-1_6) (is_same_line p12_0 p0_0) (is_same_line p12_0 p2_0) (is_same_line p12_0 p3_0) (is_same_line p12_0 p4_0) (is_same_line p12_0 p6_0) (is_same_line p12_0 p8_0) (is_same_line p12_0 p9_0) (is_same_line p12_0 p11_0) (is_same_line p12_0 p-1_0) (is_same_line p12_0 p12_1) (is_same_line p12_0 p12_3) (is_same_line p12_0 p12_4) (is_same_line p12_0 p12_6) (is_same_line p12_0 p12_7) (is_same_line p-1_1 p0_1) (is_same_line p-1_1 p3_1) (is_same_line p-1_1 p4_1) (is_same_line p-1_1 p5_1) (is_same_line p-1_1 p8_1) (is_same_line p-1_1 p9_1) (is_same_line p-1_1 p11_1) (is_same_line p-1_1 p-1_0) (is_same_line p-1_1 p12_1) (is_same_line p-1_1 p-1_2) (is_same_line p-1_1 p-1_3) (is_same_line p-1_1 p-1_4) (is_same_line p-1_1 p-1_6) (is_same_line p12_1 p0_1) (is_same_line p12_1 p3_1) (is_same_line p12_1 p4_1) (is_same_line p12_1 p5_1) (is_same_line p12_1 p8_1) (is_same_line p12_1 p9_1) (is_same_line p12_1 p11_1) (is_same_line p12_1 p12_0) (is_same_line p12_1 p-1_1) (is_same_line p12_1 p12_3) (is_same_line p12_1 p12_4) (is_same_line p12_1 p12_6) (is_same_line p12_1 p12_7) (is_same_line p-1_2 p0_2) (is_same_line p-1_2 p1_2) (is_same_line p-1_2 p5_2) (is_same_line p-1_2 p6_2) (is_same_line p-1_2 p7_2) (is_same_line p-1_2 p8_2) (is_same_line p-1_2 p9_2) (is_same_line p-1_2 p-1_0) (is_same_line p-1_2 p-1_1) (is_same_line p-1_2 p-1_3) (is_same_line p-1_2 p-1_4) (is_same_line p-1_2 p-1_6) (is_same_line p-1_3 p0_3) (is_same_line p-1_3 p1_3) (is_same_line p-1_3 p2_3) (is_same_line p-1_3 p3_3) (is_same_line p-1_3 p4_3) (is_same_line p-1_3 p5_3) (is_same_line p-1_3 p6_3) (is_same_line p-1_3 p8_3) (is_same_line p-1_3 p9_3) (is_same_line p-1_3 p11_3) (is_same_line p-1_3 p-1_0) (is_same_line p-1_3 p-1_1) (is_same_line p-1_3 p-1_2) (is_same_line p-1_3 p12_3) (is_same_line p-1_3 p-1_4) (is_same_line p-1_3 p-1_6) (is_same_line p12_3 p0_3) (is_same_line p12_3 p1_3) (is_same_line p12_3 p2_3) (is_same_line p12_3 p3_3) (is_same_line p12_3 p4_3) (is_same_line p12_3 p5_3) (is_same_line p12_3 p6_3) (is_same_line p12_3 p8_3) (is_same_line p12_3 p9_3) (is_same_line p12_3 p11_3) (is_same_line p12_3 p12_0) (is_same_line p12_3 p12_1) (is_same_line p12_3 p-1_3) (is_same_line p12_3 p12_4) (is_same_line p12_3 p12_6) (is_same_line p12_3 p12_7) (is_same_line p-1_4 p0_4) (is_same_line p-1_4 p1_4) (is_same_line p-1_4 p5_4) (is_same_line p-1_4 p6_4) (is_same_line p-1_4 p7_4) (is_same_line p-1_4 p9_4) (is_same_line p-1_4 p10_4) (is_same_line p-1_4 p11_4) (is_same_line p-1_4 p-1_0) (is_same_line p-1_4 p-1_1) (is_same_line p-1_4 p-1_2) (is_same_line p-1_4 p-1_3) (is_same_line p-1_4 p12_4) (is_same_line p-1_4 p-1_6) (is_same_line p12_4 p0_4) (is_same_line p12_4 p1_4) (is_same_line p12_4 p5_4) (is_same_line p12_4 p6_4) (is_same_line p12_4 p7_4) (is_same_line p12_4 p9_4) (is_same_line p12_4 p10_4) (is_same_line p12_4 p11_4) (is_same_line p12_4 p12_0) (is_same_line p12_4 p12_1) (is_same_line p12_4 p12_3) (is_same_line p12_4 p-1_4) (is_same_line p12_4 p12_6) (is_same_line p12_4 p12_7) (is_same_line p-1_6 p0_6) (is_same_line p-1_6 p1_6) (is_same_line p-1_6 p4_6) (is_same_line p-1_6 p5_6) (is_same_line p-1_6 p6_6) (is_same_line p-1_6 p8_6) (is_same_line p-1_6 p9_6) (is_same_line p-1_6 p10_6) (is_same_line p-1_6 p11_6) (is_same_line p-1_6 p-1_0) (is_same_line p-1_6 p-1_1) (is_same_line p-1_6 p-1_2) (is_same_line p-1_6 p-1_3) (is_same_line p-1_6 p-1_4) (is_same_line p-1_6 p12_6) (is_same_line p12_6 p0_6) (is_same_line p12_6 p1_6) (is_same_line p12_6 p4_6) (is_same_line p12_6 p5_6) (is_same_line p12_6 p6_6) (is_same_line p12_6 p8_6) (is_same_line p12_6 p9_6) (is_same_line p12_6 p10_6) (is_same_line p12_6 p11_6) (is_same_line p12_6 p12_0) (is_same_line p12_6 p12_1) (is_same_line p12_6 p12_3) (is_same_line p12_6 p12_4) (is_same_line p12_6 p-1_6) (is_same_line p12_6 p12_7) (is_same_line p12_7 p3_7) (is_same_line p12_7 p4_7) (is_same_line p12_7 p8_7) (is_same_line p12_7 p9_7) (is_same_line p12_7 p10_7) (is_same_line p12_7 p11_7) (is_same_line p12_7 p12_0) (is_same_line p12_7 p12_1) (is_same_line p12_7 p12_3) (is_same_line p12_7 p12_4) (is_same_line p12_7 p12_6)
    )
    (:goal
        (or (agent-at p0_-1) (agent-at p2_-1) (agent-at p3_-1) (agent-at p3_8) (agent-at p4_-1) (agent-at p4_8) (agent-at p6_-1) (agent-at p8_-1) (agent-at p8_8) (agent-at p9_-1) (agent-at p9_8) (agent-at p10_8) (agent-at p11_-1) (agent-at p11_8) (agent-at p-1_0) (agent-at p12_0) (agent-at p-1_1) (agent-at p12_1) (agent-at p-1_2) (agent-at p-1_3) (agent-at p12_3) (agent-at p-1_4) (agent-at p12_4) (agent-at p-1_6) (agent-at p12_6) (agent-at p12_7))
    )
)
