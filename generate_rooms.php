<?php
include 'db.php';

// Step 1: Delete existing room records
$conn->query("DELETE FROM rooms");

// Step 2: Define blocks and room counts
$blocks = [
    '6A' => 90,
    '6B' => 90,
    '8C' => 110,
    '8D' => 100,
    'NewBlock' => 115
];

// Define gender rules for each block
$gender_rules = [
    '6A' => 'Male',
    '6B' => 'Male',
    '8C' => 'Female',
    '8D' => 'Female',
    'NewBlock' => 'Both'
];

// Step 3: Prepare the SQL insert statement
$stmt = $conn->prepare("INSERT INTO rooms (room_no, block, gender, is_taken) VALUES (?, ?, ?, 0)");

// Step 4: Insert rooms
foreach ($blocks as $block => $count) {
    for ($i = 1; $i <= $count; $i++) {
        $room_no = strtoupper(substr($block, 0, 1)) . str_pad($i, 2, "0", STR_PAD_LEFT);
        $gender = $gender_rules[$block];
        $stmt->bind_param("sss", $room_no, $block, $gender);
        $stmt->execute();
    }
}

echo "✅ Rooms table updated successfully!";
?>
