<?php
include 'db.php';

// Step 1: Clear student and room data
$conn->query("DELETE FROM students");
$conn->query("DELETE FROM rooms");

// Step 2: Gender rules
$gender_rules = [
    '6A' => 'Male',
    '6B' => 'Male',
    '8C' => 'Female',
    '8D' => 'Female',
    'NewBlock' => 'Both'
];

// Step 3: Prepare insert statement
$stmt = $conn->prepare("INSERT INTO rooms (room_no, block, gender, is_taken) VALUES (?, ?, ?, 0)");

// 6A and 6B: G01-G30, 101-130, 201-230
foreach (['6A', '6B'] as $block) {
    $gender = $gender_rules[$block];

    // Ground floor G01 to G30
    for ($i = 1; $i <= 30; $i++) {
        $room_no = "G" . str_pad($i, 2, "0", STR_PAD_LEFT);
        $stmt->bind_param("sss", $room_no, $block, $gender);
        $stmt->execute();
    }

    // First floor 101 to 130
    for ($i = 1; $i <= 30; $i++) {
        $room_no = "1" . str_pad($i, 2, "0", STR_PAD_LEFT);
        $stmt->bind_param("sss", $room_no, $block, $gender);
        $stmt->execute();
    }

    // Second floor 201 to 230
    for ($i = 1; $i <= 30; $i++) {
        $room_no = "2" . str_pad($i, 2, "0", STR_PAD_LEFT);
        $stmt->bind_param("sss", $room_no, $block, $gender);
        $stmt->execute();
    }
}

// 8C: 110 rooms split over 4 floors
$block = '8C';
$gender = $gender_rules[$block];
$rooms_per_floor = ceil(110 / 4);
$count = 1;

for ($floor = 1; $floor <= 4; $floor++) {
    for ($i = 1; $i <= $rooms_per_floor && $count <= 110; $i++, $count++) {
        $room_no = "F{$floor}R" . str_pad($count, 2, "0", STR_PAD_LEFT);
        $stmt->bind_param("sss", $room_no, $block, $gender);
        $stmt->execute();
    }
}

// 8D: 100 rooms split over 4 floors
$block = '8D';
$gender = $gender_rules[$block];
$rooms_per_floor = ceil(100 / 4);
$count = 1;

for ($floor = 1; $floor <= 4; $floor++) {
    for ($i = 1; $i <= $rooms_per_floor && $count <= 100; $i++, $count++) {
        $room_no = "F{$floor}R" . str_pad($count, 2, "0", STR_PAD_LEFT);
        $stmt->bind_param("sss", $room_no, $block, $gender);
        $stmt->execute();
    }
}

// NewBlock: 115 rooms over 5 floors (23 per floor)
$block = 'NewBlock';
$gender = $gender_rules[$block];
$rooms_per_floor = 23;
$count = 1;

for ($floor = 1; $floor <= 5; $floor++) {
    for ($i = 1; $i <= $rooms_per_floor && $count <= 115; $i++, $count++) {
        $room_no = "F{$floor}R" . str_pad($count, 2, "0", STR_PAD_LEFT);
        $stmt->bind_param("sss", $room_no, $block, $gender);
        $stmt->execute();
    }
}

echo "✅ System reset completed. Rooms regenerated with proper structure.";
?>
